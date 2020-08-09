.class final Lcom/car/cloud/QRActivity$MyCloudCallback;
.super Lcom/car/cloud/CloudCallback;
.source "QRActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/cloud/QRActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyCloudCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/QRActivity;


# direct methods
.method constructor <init>(Lcom/car/cloud/QRActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/QRActivity$MyCloudCallback;->this$0:Lcom/car/cloud/QRActivity;

    invoke-direct {p0}, Lcom/car/cloud/CloudCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLonginStatus(Lcom/car/cloud/Type$LoginInfo;)V
    .locals 2

    iget v0, p1, Lcom/car/cloud/Type$LoginInfo;->ret:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/cloud/QRActivity$MyCloudCallback;->this$0:Lcom/car/cloud/QRActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/car/cloud/QRActivity;->access$200(Lcom/car/cloud/QRActivity;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/cloud/QRActivity$MyCloudCallback;->this$0:Lcom/car/cloud/QRActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/car/cloud/QRActivity;->access$200(Lcom/car/cloud/QRActivity;Z)V

    goto :goto_0
.end method

.method public onReceiveMsg(Lcom/car/cloud/Type$MsgInfo;)V
    .locals 3

    iget-object v1, p1, Lcom/car/cloud/Type$MsgInfo;->msgType:Ljava/lang/String;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/car/cloud/QRActivity$MyCloudCallback;->this$0:Lcom/car/cloud/QRActivity;

    invoke-static {v1}, Lcom/car/cloud/QRActivity;->access$1100(Lcom/car/cloud/QRActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/car/cloud/QRActivity$MyCloudCallback;->this$0:Lcom/car/cloud/QRActivity;

    invoke-static {v1}, Lcom/car/cloud/QRActivity;->access$1100(Lcom/car/cloud/QRActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onUserBondlist(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/cloud/Type$UserInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/car/cloud/QRActivity$MyCloudCallback;->this$0:Lcom/car/cloud/QRActivity;

    invoke-static {v1}, Lcom/car/cloud/QRActivity;->access$1100(Lcom/car/cloud/QRActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/car/cloud/QRActivity$MyCloudCallback;->this$0:Lcom/car/cloud/QRActivity;

    invoke-static {v1}, Lcom/car/cloud/QRActivity;->access$1100(Lcom/car/cloud/QRActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onUserStatus(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/QRActivity$MyCloudCallback;->this$0:Lcom/car/cloud/QRActivity;

    invoke-static {v0}, Lcom/car/cloud/QRActivity;->access$400(Lcom/car/cloud/QRActivity;)Lcom/car/cloud/UserAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/car/cloud/UserAdapter;->setUserStatus(Ljava/lang/String;Z)V

    return-void
.end method

.method public onWebSocketStatus(I)V
    .locals 2

    iget-object v0, p0, Lcom/car/cloud/QRActivity$MyCloudCallback;->this$0:Lcom/car/cloud/QRActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/car/cloud/QRActivity;->access$200(Lcom/car/cloud/QRActivity;Z)V

    return-void
.end method
