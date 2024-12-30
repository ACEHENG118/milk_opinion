from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.contrib import messages
from .models import News, Comment
from .utils import analyze_sentiment, extract_keywords

def home(request):
    return render(request, 'dairy_app/home.html')

##################################
# 新闻管理
##################################
@login_required
def news_list(request):
    # 所有人可查看列表
    news_list = News.objects.all().order_by('-created_time')
    return render(request, 'dairy_app/news_list.html', {'news_list': news_list})

@login_required
def news_create(request):
    # 只有 is_staff 用户可创建
    if not request.user.is_staff:
        messages.error(request, "无权限创建新闻")
        return redirect('news_list')
    if request.method == 'POST':
        screen_name = request.POST.get('screen_name','')
        text = request.POST.get('text','')
        url = request.POST.get('url','')

        score = analyze_sentiment(text)
        kws = extract_keywords(text)

        News.objects.create(
            screen_name=screen_name,
            text=text,
            url=url,
            sentiment_score=score,
            keywords=kws
        )
        messages.success(request, "新闻创建成功")
        return redirect('news_list')
    return render(request, 'dairy_app/news_create.html')

@login_required
def news_edit(request, news_id):
    # 只有 is_staff 用户可编辑
    if not request.user.is_staff:
        messages.error(request, "无权限编辑新闻")
        return redirect('news_list')

    news_item = get_object_or_404(News, pk=news_id)
    if request.method == 'POST':
        news_item.screen_name = request.POST.get('screen_name','')
        news_item.text = request.POST.get('text','')
        news_item.url = request.POST.get('url','')

        news_item.sentiment_score = analyze_sentiment(news_item.text)
        news_item.keywords = extract_keywords(news_item.text)
        news_item.save()
        messages.success(request, "新闻已更新")
        return redirect('news_list')
    return render(request, 'dairy_app/news_edit.html', {'news_item': news_item})

@login_required
def news_delete(request, news_id):
    # 只有 is_staff 用户可删除
    if not request.user.is_staff:
        messages.error(request, "无权限删除新闻")
        return redirect('news_list')

    news_item = get_object_or_404(News, pk=news_id)
    news_item.delete()
    messages.success(request, "新闻已删除")
    return redirect('news_list')

##################################
# 评论管理
##################################
@login_required
def comment_list(request):
    # 所有人可查看列表
    comments = Comment.objects.all().order_by('-id')
    return render(request, 'dairy_app/comment_list.html', {'comments': comments})

@login_required
def comment_create(request):
    # 只有 is_staff 用户可创建
    if not request.user.is_staff:
        messages.error(request, "无权限创建评论")
        return redirect('comment_list')

    if request.method == 'POST':
        screen_name = request.POST.get('screen_name','')
        location = request.POST.get('location','')
        created_time = request.POST.get('created_time','')
        text = request.POST.get('text','')

        score = analyze_sentiment(text)
        kws = extract_keywords(text)

        Comment.objects.create(
            screen_name=screen_name,
            location=location,
            created_time=created_time,
            text=text,
            sentiment_score=score,
            keywords=kws,
            user=request.user
        )
        messages.success(request, "评论创建成功")
        return redirect('comment_list')
    return render(request, 'dairy_app/comment_create.html')

@login_required
def comment_edit(request, comment_id):
    # 只有 is_staff 用户可编辑
    if not request.user.is_staff:
        messages.error(request, "无权限编辑评论")
        return redirect('comment_list')

    c = get_object_or_404(Comment, pk=comment_id)
    if request.method == 'POST':
        c.screen_name = request.POST.get('screen_name','')
        c.location = request.POST.get('location','')
        c.created_time = request.POST.get('created_time','')
        c.text = request.POST.get('text','')

        c.sentiment_score = analyze_sentiment(c.text)
        c.keywords = extract_keywords(c.text)
        c.save()
        messages.success(request, "评论已更新")
        return redirect('comment_list')
    return render(request, 'dairy_app/comment_edit.html', {'comment': c})

@login_required
def comment_delete(request, comment_id):
    # 只有 is_staff 用户可删除
    if not request.user.is_staff:
        messages.error(request, "无权限删除评论")
        return redirect('comment_list')

    c = get_object_or_404(Comment, pk=comment_id)
    c.delete()
    messages.success(request, "评论已删除")
    return redirect('comment_list')

##################################
# 评论分析
##################################
@login_required
def comment_analysis(request):
    comments = Comment.objects.all()
    positive_count = comments.filter(sentiment_score__gte=0.5).count()
    negative_count = comments.filter(sentiment_score__lt=0.5).count()

    from collections import Counter
    all_keywords = []
    for cm in comments:
        if cm.keywords:
            all_keywords.extend(cm.keywords.split(','))

    keyword_counter = Counter(all_keywords)
    keyword_stats = keyword_counter.most_common(10)

    context = {
        'positive_count': positive_count,
        'negative_count': negative_count,
        'keyword_stats': keyword_stats,
    }
    return render(request, 'dairy_app/comment_analysis.html', context)

##################################
# 个人信息 & 修改密码
##################################
@login_required
def personal_info(request):
    if request.method == 'POST':
        request.user.first_name = request.POST.get('first_name','')
        request.user.last_name = request.POST.get('last_name','')
        request.user.email = request.POST.get('email','')
        request.user.save()
        messages.success(request, "个人信息已更新")
        return redirect('personal_info')
    return render(request, 'dairy_app/personal_info.html')

@login_required
def change_password(request):
    if request.method == 'POST':
        old_password = request.POST.get('old_password','')
        new_password = request.POST.get('new_password','')
        confirm_password = request.POST.get('confirm_password','')

        if not request.user.check_password(old_password):
            messages.error(request, "旧密码不正确")
        elif new_password != confirm_password:
            messages.error(request, "新密码两次不一致")
        else:
            request.user.set_password(new_password)
            request.user.save()
            messages.success(request, "密码已修改，请重新登录")
            return redirect('login')
    return render(request, 'dairy_app/change_password.html')

##################################
# 用户管理（管理员可删除普通用户）
##################################
@login_required
def user_manage(request):
    # 仅超级管理员可访问
    if not request.user.is_superuser:
        messages.error(request, "无权限")
        return redirect('home')

    if request.method == 'POST':
        delete_user_id = request.POST.get('delete_user_id', None)
        if delete_user_id:
            try:
                u = User.objects.get(pk=delete_user_id)
                # 禁止删除超级管理员
                if u.is_superuser:
                    messages.error(request, "无法删除超级管理员")
                else:
                    u.delete()
                    messages.success(request, f"已删除用户 {u.username}")
            except User.DoesNotExist:
                messages.error(request, "要删除的用户不存在")

    users = User.objects.all()
    return render(request, 'dairy_app/user_manage.html', {'users': users})

##################################
# 用户注册 & 登录视图保持不变 (仅示例，如有)
##################################
def register(request):
    from django.contrib.auth.forms import UserCreationForm
    if request.method == 'POST':
        form = UserCreationForm(request.POST)
        if form.is_valid():
            user = form.save()
            messages.success(request, "注册成功！请登录。")
            return redirect('login')
    else:
        form = UserCreationForm()
    return render(request, 'dairy_app/register.html', {'form': form})

