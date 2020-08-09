.class public Lcom/car/cloud/AdActivity;
.super Landroid/app/Activity;
.source "AdActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# static fields
.field static final TIME_OUT:I = 0x64


# instance fields
.field mCountDown:Landroid/widget/TextView;

.field mHandler:Landroid/os/Handler;

.field mImageView:Landroid/widget/ImageView;

.field mIsVideo:Z

.field mNeedRecover:Z

.field mPosition:I

.field mTimeLeft:I

.field mVideoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v1, p0, Lcom/car/cloud/AdActivity;->mTimeLeft:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/cloud/AdActivity;->mIsVideo:Z

    iput v1, p0, Lcom/car/cloud/AdActivity;->mPosition:I

    iput-boolean v1, p0, Lcom/car/cloud/AdActivity;->mNeedRecover:Z

    new-instance v0, Lcom/car/cloud/AdActivity$1;

    invoke-direct {v0, p0}, Lcom/car/cloud/AdActivity$1;-><init>(Lcom/car/cloud/AdActivity;)V

    iput-object v0, p0, Lcom/car/cloud/AdActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/car/cloud/AdActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f030001

    invoke-virtual {p0, v3}, Lcom/car/cloud/AdActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/car/cloud/AdActivity;->setFullscreen()V

    const v3, 0x7f090004

    invoke-virtual {p0, v3}, Lcom/car/cloud/AdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/VideoView;

    iput-object v3, p0, Lcom/car/cloud/AdActivity;->mVideoView:Landroid/widget/VideoView;

    const v3, 0x7f090005

    invoke-virtual {p0, v3}, Lcom/car/cloud/AdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/car/cloud/AdActivity;->mImageView:Landroid/widget/ImageView;

    const v3, 0x7f090006

    invoke-virtual {p0, v3}, Lcom/car/cloud/AdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/car/cloud/AdActivity;->mCountDown:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/car/cloud/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "recover"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/car/cloud/AdActivity;->mNeedRecover:Z

    const-string v3, "video"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/car/cloud/AdActivity;->mIsVideo:Z

    const-string v3, "path"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/car/cloud/AdActivity;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v3, "timeout"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-gtz v2, :cond_3

    const/4 v2, 0x6

    :cond_3
    iget-boolean v3, p0, Lcom/car/cloud/AdActivity;->mIsVideo:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/car/cloud/AdActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3, v5}, Landroid/widget/VideoView;->setVisibility(I)V

    iget-object v3, p0, Lcom/car/cloud/AdActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/car/cloud/AdActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v3, p0, Lcom/car/cloud/AdActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v3, p0, Lcom/car/cloud/AdActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->start()V

    iput v5, p0, Lcom/car/cloud/AdActivity;->mPosition:I

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/car/cloud/AdActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/car/cloud/AdActivity;->mCountDown:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/car/cloud/AdActivity;->mImageView:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput v2, p0, Lcom/car/cloud/AdActivity;->mTimeLeft:I

    iget-object v3, p0, Lcom/car/cloud/AdActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-boolean v1, p0, Lcom/car/cloud/AdActivity;->mNeedRecover:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.screen.request"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "screen_on"

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/car/cloud/AdActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    invoke-virtual {p0}, Lcom/car/cloud/AdActivity;->finish()V

    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-boolean v0, p0, Lcom/car/cloud/AdActivity;->mIsVideo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/cloud/AdActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/car/cloud/AdActivity;->mPosition:I

    iget-object v0, p0, Lcom/car/cloud/AdActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v0, p0, Lcom/car/cloud/AdActivity;->mIsVideo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/cloud/AdActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/cloud/AdActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    iget v0, p0, Lcom/car/cloud/AdActivity;->mPosition:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/car/cloud/AdActivity;->mVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/car/cloud/AdActivity;->mPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public setFullscreen()V
    .locals 3

    invoke-virtual {p0}, Lcom/car/cloud/AdActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_2

    or-int/lit16 v0, v0, 0x1000

    :cond_2
    invoke-virtual {p0}, Lcom/car/cloud/AdActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
