.class Lcom/car/cloud/MessageView$1;
.super Landroid/os/Handler;
.source "MessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/cloud/MessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/MessageView;


# direct methods
.method constructor <init>(Lcom/car/cloud/MessageView;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/MessageView$1;->this$0:Lcom/car/cloud/MessageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    const-string v0, "CarSvc_CarCloud_MessageView"

    const-string v1, "Trigger more msg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/cloud/MessageView$1;->this$0:Lcom/car/cloud/MessageView;

    invoke-static {v0}, Lcom/car/cloud/MessageView;->access$100(Lcom/car/cloud/MessageView;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/car/cloud/MessageView$1;->this$0:Lcom/car/cloud/MessageView;

    invoke-static {v1}, Lcom/car/cloud/MessageView;->access$000(Lcom/car/cloud/MessageView;)Lcom/car/cloud/Type$UserInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/car/cloud/Type$UserInfo;->unionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/car/cloud/MessageView$1;->this$0:Lcom/car/cloud/MessageView;

    invoke-static {v1}, Lcom/car/cloud/MessageView;->access$000(Lcom/car/cloud/MessageView;)Lcom/car/cloud/Type$UserInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/car/cloud/Type$UserInfo;->unionId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/car/cloud/Type$MsgInfo;

    iget-wide v2, v2, Lcom/car/cloud/Type$MsgInfo;->sendTime:J

    const/16 v4, 0xa

    new-instance v5, Lcom/car/cloud/MessageView$1$1;

    invoke-direct {v5, p0}, Lcom/car/cloud/MessageView$1$1;-><init>(Lcom/car/cloud/MessageView$1;)V

    invoke-virtual/range {v0 .. v5}, Lcom/car/cloud/WebSocketUtil;->getChatMsgList(Ljava/lang/String;JILcom/car/cloud/WebSocketUtil$MsgListener;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
