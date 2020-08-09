.class Lcom/car/cloud/MessageView$3$1;
.super Lcom/car/cloud/WebSocketUtil$ReplyHandler;
.source "MessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/MessageView$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/cloud/MessageView$3;

.field final synthetic val$mi:Lcom/car/cloud/Type$MsgInfo;


# direct methods
.method constructor <init>(Lcom/car/cloud/MessageView$3;Lcom/car/cloud/Type$MsgInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/MessageView$3$1;->this$1:Lcom/car/cloud/MessageView$3;

    iput-object p2, p0, Lcom/car/cloud/MessageView$3$1;->val$mi:Lcom/car/cloud/Type$MsgInfo;

    invoke-direct {p0}, Lcom/car/cloud/WebSocketUtil$ReplyHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public cloudReply(ILorg/json/JSONObject;[B)V
    .locals 4

    const/4 v0, -0x1

    if-nez p2, :cond_0

    :goto_0
    const-string v1, "CarSvc_CarCloud_MessageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SendMsg ret :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/cloud/MessageView$3$1;->this$1:Lcom/car/cloud/MessageView$3;

    iget-object v2, v1, Lcom/car/cloud/MessageView$3;->this$0:Lcom/car/cloud/MessageView;

    iget-object v3, p0, Lcom/car/cloud/MessageView$3$1;->val$mi:Lcom/car/cloud/Type$MsgInfo;

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v3, v1}, Lcom/car/cloud/MessageView;->sendMessageDone(Lcom/car/cloud/Type$MsgInfo;Z)V

    return-void

    :cond_0
    const-string v1, "ret"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
