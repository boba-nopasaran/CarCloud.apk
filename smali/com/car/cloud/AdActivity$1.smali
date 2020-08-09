.class Lcom/car/cloud/AdActivity$1;
.super Landroid/os/Handler;
.source "AdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/cloud/AdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/AdActivity;


# direct methods
.method constructor <init>(Lcom/car/cloud/AdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/AdActivity$1;->this$0:Lcom/car/cloud/AdActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/16 v2, 0x64

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/car/cloud/AdActivity$1;->this$0:Lcom/car/cloud/AdActivity;

    iget v1, v0, Lcom/car/cloud/AdActivity;->mTimeLeft:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/car/cloud/AdActivity;->mTimeLeft:I

    iget-object v0, p0, Lcom/car/cloud/AdActivity$1;->this$0:Lcom/car/cloud/AdActivity;

    iget v0, v0, Lcom/car/cloud/AdActivity;->mTimeLeft:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/car/cloud/AdActivity$1;->this$0:Lcom/car/cloud/AdActivity;

    invoke-virtual {v0}, Lcom/car/cloud/AdActivity;->finish()V

    :goto_0
    iget-object v0, p0, Lcom/car/cloud/AdActivity$1;->this$0:Lcom/car/cloud/AdActivity;

    iget-object v0, v0, Lcom/car/cloud/AdActivity;->mCountDown:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/car/cloud/AdActivity$1;->this$0:Lcom/car/cloud/AdActivity;

    iget v2, v2, Lcom/car/cloud/AdActivity;->mTimeLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u79d2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v2, v0, v1}, Lcom/car/cloud/AdActivity$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
