from snownlp import SnowNLP
import jieba

KEYWORD_LIST = ["牛奶", "乳制品", "奶粉", "酸奶", "营养", "安全", "好喝", "品牌"]

def analyze_sentiment(text):
    if not text:
        return 0.5
    s = SnowNLP(text)
    return s.sentiments

def extract_keywords(text):
    found = []
    for kw in KEYWORD_LIST:
        if kw in text:
            found.append(kw)
    return ",".join(found)

def segment_text(text):
    seg_list = jieba.cut(text)
    return " ".join(seg_list)
