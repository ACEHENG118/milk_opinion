import re

import pandas as pd
from imageio import imread

import jieba
from snownlp import SnowNLP
from wordcloud import WordCloud
import matplotlib.pyplot as plt

plt.rcParams['font.sans-serif']=['SimHei','Songti SC','STFangsong']# 用来正常显示中文标签
plt.rcParams['axes.unicode_minus'] = False  # 用来正常显示负号


from collections import Counter

# 修改成读取的文件
data = pd.read_csv('牛奶.csv')

comments = data['text']# 提取评论
comments = comments.drop_duplicates()#去除重复

print(comments.head())

# 加载停用词表
stopwords_file = 'stopwords.txt'
with open(stopwords_file, "r", encoding='utf-8') as words:
    stopwords = [i.strip() for i in words]

# 添加额外的停用词
stopwords.extend(['好感兴趣', '已开通超话社区', '转发微博', '图片评论', '已开通了超话社区', '说', '找'])


def clean_text(text):
    text = re.sub(r"(回复)?(//)?\s*@\S*?\s*(:| |$)", " ", text)  # 去除正文中的@和回复/转发中的用户名
    text = re.sub(r"\[\S+\]", "", text)      # 去除表情符号
    URL_REGEX = re.compile(
        r'(?i)\b((?:https?://|www\d{0,3}[.]|[a-z0-9.\-]+[.][a-z]{2,4}/)(?:[^\s()<>]+|\(([^\s()<>]+|(\([^\s()<>]+\)))*\))+(?:\(([^\s()<>]+|(\([^\s()<>]+\)))*\)|[^\s`!()\[\]{};:\'".,<>?«»“”‘’]))',
        re.IGNORECASE)
    text = re.sub(URL_REGEX, "", text)       # 去除网址

    # 去除符号
    for ch in "。，：；{|}（）()+-*&……%￥#@！~·`、【】[];:?？《》<>,.":
        text = text.replace(ch, '')

    # 去除停用词
    for word in stopwords:
        text = text.replace(word, '')

    text = re.sub(r"\s+", " ", text)  # 合并正文中过多的空格
    text = text.replace(" ", "")  # 去除无意义的词语
    return text.strip()


# 数据清洗
comments = comments.apply(clean_text)
print(comments.shape)


# 进行情感倾向分析
def analyze_sentiment(text):
    if len(text) == 0:
        return 0
    s = SnowNLP(text)
    return s.sentiments


# 分析每条评论的情感倾向得分
sentiment_scores = [analyze_sentiment(comment) for comment in comments]
print(sentiment_scores[:10])

# 根据情感倾向分数将评论分类为积极和消极
positive_comments = [comment for comment, score in zip(comments, sentiment_scores) if score >= 0.5]
negative_comments = [comment for comment, score in zip(comments, sentiment_scores) if score < 0.5]

# 积极消极评论占比
pie_labels = ['积极评论', '消极评论']
plt.pie([len(positive_comments), len(negative_comments)],
        labels=pie_labels, autopct='%1.2f%%', shadow=True)
plt.title("积极和消极评论占比")
plt.show()

# 对评论进行分词
def segment_text(texts):
    segmented_texts = []
    for text in texts:
        if len(text) == 0:
            continue
        seg_list = ' '.join(jieba.cut(text))
        segmented_texts.append(seg_list)
    return segmented_texts


positive_comments = segment_text(positive_comments)
negative_comments = segment_text(negative_comments)


# 绘制积极和消极两类词云图
def generate_wordcloud(text):
    # windows 电脑 选择这一行代码
    wordcloud = WordCloud(font_path="simhei.ttf", background_color='white').generate(text)
    # mac 电脑 选择这一行代码
    # wordcloud = WordCloud(font_path="/System/Library/Fonts/Hiragino Sans GB.ttc", background_color='white').generate(text)

    plt.figure(figsize=(10, 10))
    plt.imshow(wordcloud, interpolation='bilinear')
    plt.axis('off')
    plt.show()


# 绘制积极评论词云图
positive_text = ' '.join(positive_comments)
generate_wordcloud(positive_text)
print(positive_comments)

# 绘制消极评论词云图
negative_text = ' '.join(negative_comments)
generate_wordcloud(negative_text)


def plot_word_frequency(text):
    word_list = jieba.lcut(text)
    word_list = [word for word in word_list if word.strip()]
    word_counter = Counter(word_list)
    word_freq = word_counter.most_common(20)  # 取出现频率最高的前20个词语及其频次
    words, freqs = zip(*word_freq)

    plt.figure(figsize=(10, 6))
    plt.bar(words, freqs)
    plt.xticks(rotation=45)
    plt.xlabel('词语')
    plt.ylabel('频次')
    plt.title('评论词语频次图')
    plt.show()


# 绘制总的词频图
total_text = ' '.join(comments)
plot_word_frequency(total_text)
