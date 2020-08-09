.class public Lcom/car/cloud/MessageView;
.super Landroid/widget/RelativeLayout;
.source "MessageView.java"

# interfaces
.implements Lcom/car/cloud/MyScrollView$ScrollViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/cloud/MessageView$MsgInfoComparator;
    }
.end annotation


# static fields
.field private static final SERIALNO:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CarSvc_CarCloud_MessageView"


# instance fields
.field private mAllMessageList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/cloud/Type$MsgInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEditText:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mInitAllMessageList:Z

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mScrollView:Lcom/car/cloud/MyScrollView;

.field mSendingList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mUserInfo:Lcom/car/cloud/Type$UserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/car/common/CarUtil;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/cloud/MessageView;->SERIALNO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/MessageView;->mAllMessageList:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/cloud/MessageView;->mInitAllMessageList:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/MessageView;->mSendingList:Ljava/util/HashMap;

    new-instance v0, Lcom/car/cloud/MessageView$1;

    invoke-direct {v0, p0}, Lcom/car/cloud/MessageView$1;-><init>(Lcom/car/cloud/MessageView;)V

    iput-object v0, p0, Lcom/car/cloud/MessageView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/car/cloud/MessageView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/MessageView;->mAllMessageList:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/cloud/MessageView;->mInitAllMessageList:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/MessageView;->mSendingList:Ljava/util/HashMap;

    new-instance v0, Lcom/car/cloud/MessageView$1;

    invoke-direct {v0, p0}, Lcom/car/cloud/MessageView$1;-><init>(Lcom/car/cloud/MessageView;)V

    iput-object v0, p0, Lcom/car/cloud/MessageView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/car/cloud/MessageView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/MessageView;->mAllMessageList:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/cloud/MessageView;->mInitAllMessageList:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/MessageView;->mSendingList:Ljava/util/HashMap;

    new-instance v0, Lcom/car/cloud/MessageView$1;

    invoke-direct {v0, p0}, Lcom/car/cloud/MessageView$1;-><init>(Lcom/car/cloud/MessageView;)V

    iput-object v0, p0, Lcom/car/cloud/MessageView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/car/cloud/MessageView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/car/cloud/MessageView;)Lcom/car/cloud/Type$UserInfo;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/MessageView;->mUserInfo:Lcom/car/cloud/Type$UserInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/cloud/MessageView;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/MessageView;->mAllMessageList:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/car/cloud/MessageView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/MessageView;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/car/cloud/MessageView;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/car/cloud/MessageView;->showMessageList(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/car/cloud/MessageView;)Lcom/car/cloud/MyScrollView;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/MessageView;->mScrollView:Lcom/car/cloud/MyScrollView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/car/cloud/MessageView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/MessageView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/car/cloud/MessageView;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/MessageView;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/car/cloud/MessageView;Ljava/lang/String;Z)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/car/cloud/MessageView;->showMessageSending(Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private addMessageView(Landroid/view/View;Z)V
    .locals 3

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/car/cloud/MessageView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/car/cloud/MessageView;->flipScrollView()V

    :cond_0
    return-void
.end method

.method private dip2px(F)I
    .locals 3

    invoke-virtual {p0}, Lcom/car/cloud/MessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private flipScrollView()V
    .locals 2

    iget-object v0, p0, Lcom/car/cloud/MessageView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/car/cloud/MessageView$4;

    invoke-direct {v1, p0}, Lcom/car/cloud/MessageView$4;-><init>(Lcom/car/cloud/MessageView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getSendTime(J)Ljava/lang/String;
    .locals 7

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p1

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initView()V
    .locals 3

    invoke-virtual {p0}, Lcom/car/cloud/MessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030002

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v1, 0x7f09000a

    invoke-virtual {p0, v1}, Lcom/car/cloud/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/car/cloud/MessageView$3;

    invoke-direct {v2, p0}, Lcom/car/cloud/MessageView$3;-><init>(Lcom/car/cloud/MessageView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090009

    invoke-virtual {p0, v1}, Lcom/car/cloud/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/car/cloud/MessageView;->mEditText:Landroid/widget/EditText;

    const v1, 0x7f090007

    invoke-virtual {p0, v1}, Lcom/car/cloud/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/car/cloud/MyScrollView;

    iput-object v1, p0, Lcom/car/cloud/MessageView;->mScrollView:Lcom/car/cloud/MyScrollView;

    iget-object v1, p0, Lcom/car/cloud/MessageView;->mScrollView:Lcom/car/cloud/MyScrollView;

    invoke-virtual {v1, p0}, Lcom/car/cloud/MyScrollView;->setScrollViewListener(Lcom/car/cloud/MyScrollView$ScrollViewListener;)V

    const v1, 0x7f090008

    invoke-virtual {p0, v1}, Lcom/car/cloud/MessageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/car/cloud/MessageView;->mLinearLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method private removeMessageView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/MessageView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private showMessageList(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/car/cloud/Type$MsgInfo;",
            ">;Z)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/cloud/Type$MsgInfo;

    iget-object v2, p0, Lcom/car/cloud/MessageView;->mUserInfo:Lcom/car/cloud/Type$UserInfo;

    iget-object v2, v2, Lcom/car/cloud/Type$UserInfo;->unionId:Ljava/lang/String;

    iget-object v3, v1, Lcom/car/cloud/Type$MsgInfo;->from:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v1, p2}, Lcom/car/cloud/MessageView;->showReceiveMessage(Lcom/car/cloud/Type$MsgInfo;Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1, p2}, Lcom/car/cloud/MessageView;->showSendMessage(Lcom/car/cloud/Type$MsgInfo;Z)V

    goto :goto_0
.end method

.method private showMessageSending(Ljava/lang/String;Z)Landroid/view/View;
    .locals 10

    invoke-virtual {p0}, Lcom/car/cloud/MessageView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v6, 0x7f030003

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v6, 0x7f02000a

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    const v6, 0x7f09000c

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-direct {p0, v6}, Lcom/car/cloud/MessageView;->dip2px(F)I

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-direct {p0, v7}, Lcom/car/cloud/MessageView;->dip2px(F)I

    move-result v7

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-direct {p0, v8}, Lcom/car/cloud/MessageView;->dip2px(F)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/car/cloud/MessageView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f040003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const v6, 0x7f09000d

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    const-string v6, "Sending..."

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-direct {p0, v6}, Lcom/car/cloud/MessageView;->dip2px(F)I

    move-result v6

    const/4 v7, 0x0

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-direct {p0, v8}, Lcom/car/cloud/MessageView;->dip2px(F)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/car/cloud/MessageView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f040003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/car/cloud/MessageView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v6, 0x43160000    # 150.0f

    invoke-direct {p0, v6}, Lcom/car/cloud/MessageView;->dip2px(F)I

    move-result v6

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-direct {p0, v7}, Lcom/car/cloud/MessageView;->dip2px(F)I

    move-result v7

    const/4 v8, 0x0

    const/high16 v9, 0x40a00000    # 5.0f

    invoke-direct {p0, v9}, Lcom/car/cloud/MessageView;->dip2px(F)I

    move-result v9

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v2, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xb

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v4, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v4, p2}, Lcom/car/cloud/MessageView;->addMessageView(Landroid/view/View;Z)V

    return-object v4
.end method

.method private showReceiveMessage(Lcom/car/cloud/Type$MsgInfo;Z)V
    .locals 10

    invoke-virtual {p0}, Lcom/car/cloud/MessageView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v6, 0x7f030003

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v6, 0x7f020009

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    const v6, 0x7f09000c

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/16 v6, 0x13

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v6, p1, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-direct {p0, v6}, Lcom/car/cloud/MessageView;->dip2px(F)I

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-direct {p0, v7}, Lcom/car/cloud/MessageView;->dip2px(F)I

    move-result v7

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-direct {p0, v8}, Lcom/car/cloud/MessageView;->dip2px(F)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/car/cloud/MessageView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f040004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const v6, 0x7f09000d

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/16 v6, 0x13

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget-wide v6, p1, Lcom/car/cloud/Type$MsgInfo;->sendTime:J

    invoke-direct {p0, v6, v7}, Lcom/car/cloud/MessageView;->getSendTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-direct {p0, v6}, Lcom/car/cloud/MessageView;->dip2px(F)I

    move-result v6

    const/4 v7, 0x0

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-direct {p0, v8}, Lcom/car/cloud/MessageView;->dip2px(F)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/car/cloud/MessageView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f040004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/car/cloud/MessageView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x0

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-direct {p0, v7}, Lcom/car/cloud/MessageView;->dip2px(F)I

    move-result v7

    const/high16 v8, 0x43160000    # 150.0f

    invoke-direct {p0, v8}, Lcom/car/cloud/MessageView;->dip2px(F)I

    move-result v8

    const/high16 v9, 0x40a00000    # 5.0f

    invoke-direct {p0, v9}, Lcom/car/cloud/MessageView;->dip2px(F)I

    move-result v9

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v2, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x9

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v4, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v4, p2}, Lcom/car/cloud/MessageView;->addMessageView(Landroid/view/View;Z)V

    return-void
.end method

.method private showSendMessage(Lcom/car/cloud/Type$MsgInfo;Z)V
    .locals 10

    invoke-virtual {p0}, Lcom/car/cloud/MessageView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v6, 0x7f030003

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v6, 0x7f02000a

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    const v6, 0x7f09000c

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v6, p1, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-direct {p0, v6}, Lcom/car/cloud/MessageView;->dip2px(F)I

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-direct {p0, v7}, Lcom/car/cloud/MessageView;->dip2px(F)I

    move-result v7

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-direct {p0, v8}, Lcom/car/cloud/MessageView;->dip2px(F)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/car/cloud/MessageView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f040003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const v6, 0x7f09000d

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget-wide v6, p1, Lcom/car/cloud/Type$MsgInfo;->sendTime:J

    invoke-direct {p0, v6, v7}, Lcom/car/cloud/MessageView;->getSendTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-direct {p0, v6}, Lcom/car/cloud/MessageView;->dip2px(F)I

    move-result v6

    const/4 v7, 0x0

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-direct {p0, v8}, Lcom/car/cloud/MessageView;->dip2px(F)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/car/cloud/MessageView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f040003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/car/cloud/MessageView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v6, 0x43160000    # 150.0f

    invoke-direct {p0, v6}, Lcom/car/cloud/MessageView;->dip2px(F)I

    move-result v6

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-direct {p0, v7}, Lcom/car/cloud/MessageView;->dip2px(F)I

    move-result v7

    const/4 v8, 0x0

    const/high16 v9, 0x40a00000    # 5.0f

    invoke-direct {p0, v9}, Lcom/car/cloud/MessageView;->dip2px(F)I

    move-result v9

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v2, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xb

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v4, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v4, p2}, Lcom/car/cloud/MessageView;->addMessageView(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public enterMessageByUserInfo(Lcom/car/cloud/Type$UserInfo;)V
    .locals 7

    iput-object p1, p0, Lcom/car/cloud/MessageView;->mUserInfo:Lcom/car/cloud/Type$UserInfo;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/car/cloud/MessageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/car/cloud/MessageView;->mAllMessageList:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/cloud/MessageView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/car/cloud/MessageView;->mAllMessageList:Ljava/util/Map;

    iget-object v1, p0, Lcom/car/cloud/MessageView;->mUserInfo:Lcom/car/cloud/Type$UserInfo;

    iget-object v1, v1, Lcom/car/cloud/Type$UserInfo;->unionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/car/cloud/MessageView;->mUserInfo:Lcom/car/cloud/Type$UserInfo;

    iget-object v1, v1, Lcom/car/cloud/Type$UserInfo;->unionId:Ljava/lang/String;

    const-wide/16 v2, -0x1

    const/16 v4, 0xa

    new-instance v5, Lcom/car/cloud/MessageView$2;

    invoke-direct {v5, p0}, Lcom/car/cloud/MessageView$2;-><init>(Lcom/car/cloud/MessageView;)V

    invoke-virtual/range {v0 .. v5}, Lcom/car/cloud/WebSocketUtil;->getChatMsgList(Ljava/lang/String;JILcom/car/cloud/WebSocketUtil$MsgListener;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v6, v0}, Lcom/car/cloud/MessageView;->showMessageList(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public onScrollChanged(Lcom/car/cloud/MyScrollView;IIII)V
    .locals 5

    const/16 v4, 0x64

    const-string v0, "CarSvc_CarCloud_MessageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oldx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oldy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/car/cloud/MessageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/cloud/MessageView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public receiveAllMessage(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/car/cloud/Type$MsgInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/car/cloud/MessageView;->mInitAllMessageList:Z

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/car/cloud/Type$MsgInfo;

    sget-object v5, Lcom/car/cloud/MessageView;->SERIALNO:Ljava/lang/String;

    iget-object v6, v3, Lcom/car/cloud/Type$MsgInfo;->from:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v4, v3, Lcom/car/cloud/Type$MsgInfo;->to:Ljava/lang/String;

    :goto_1
    iget-object v5, p0, Lcom/car/cloud/MessageView;->mAllMessageList:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/car/cloud/MessageView;->mAllMessageList:Ljava/util/Map;

    invoke-interface {v5, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v5, p0, Lcom/car/cloud/MessageView;->mAllMessageList:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v4, v3, Lcom/car/cloud/Type$MsgInfo;->from:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/car/cloud/MessageView;->mUserInfo:Lcom/car/cloud/Type$UserInfo;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/car/cloud/MessageView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v5, p0, Lcom/car/cloud/MessageView;->mAllMessageList:Ljava/util/Map;

    iget-object v6, p0, Lcom/car/cloud/MessageView;->mUserInfo:Lcom/car/cloud/Type$UserInfo;

    iget-object v6, v6, Lcom/car/cloud/Type$UserInfo;->unionId:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-direct {p0, v2, v7}, Lcom/car/cloud/MessageView;->showMessageList(Ljava/util/List;Z)V

    :cond_3
    return-void
.end method

.method public receiveMessage(Lcom/car/cloud/Type$MsgInfo;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/car/cloud/Type$MsgInfo;->from:Ljava/lang/String;

    iget-object v2, p0, Lcom/car/cloud/MessageView;->mAllMessageList:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/car/cloud/MessageView;->mAllMessageList:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lcom/car/cloud/MessageView;->mAllMessageList:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/car/cloud/MessageView;->mUserInfo:Lcom/car/cloud/Type$UserInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/car/cloud/MessageView;->mUserInfo:Lcom/car/cloud/Type$UserInfo;

    iget-object v2, v2, Lcom/car/cloud/Type$UserInfo;->unionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/car/cloud/MessageView;->showReceiveMessage(Lcom/car/cloud/Type$MsgInfo;Z)V

    :cond_1
    return-void
.end method

.method public sendMessageDone(Lcom/car/cloud/Type$MsgInfo;Z)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/car/cloud/Type$MsgInfo;->to:Ljava/lang/String;

    iget-object v2, p0, Lcom/car/cloud/MessageView;->mAllMessageList:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/car/cloud/MessageView;->mAllMessageList:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lcom/car/cloud/MessageView;->mAllMessageList:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/car/cloud/MessageView;->mSendingList:Ljava/util/HashMap;

    iget-wide v4, p1, Lcom/car/cloud/Type$MsgInfo;->responseId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/car/cloud/MessageView;->removeMessageView(Landroid/view/View;)V

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/car/cloud/MessageView;->showSendMessage(Lcom/car/cloud/Type$MsgInfo;Z)V

    return-void
.end method
