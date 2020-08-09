.class public Lcom/car/cloud/CloudApplication;
.super Landroid/app/Application;
.source "CloudApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static speechTips(Landroid/content/Context;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0, v1}, Lcom/car/cloud/CloudApplication;->speechTips(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static speechTips(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/car/common/TipPlayerHelper;->instance()Lcom/car/common/TipPlayerHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/car/common/TipPlayerHelper;->playSpeech(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    new-instance v0, Lcom/car/common/TipPlayerHelper;

    invoke-direct {v0}, Lcom/car/common/TipPlayerHelper;-><init>()V

    invoke-virtual {v0, p0}, Lcom/car/common/TipPlayerHelper;->init(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/car/cloud/CloudApplication$1;

    invoke-direct {v1, p0}, Lcom/car/cloud/CloudApplication$1;-><init>(Lcom/car/cloud/CloudApplication;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
