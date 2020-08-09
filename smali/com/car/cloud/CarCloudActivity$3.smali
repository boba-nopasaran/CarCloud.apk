.class Lcom/car/cloud/CarCloudActivity$3;
.super Landroid/os/Handler;
.source "CarCloudActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/cloud/CarCloudActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/CarCloudActivity;


# direct methods
.method constructor <init>(Lcom/car/cloud/CarCloudActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/CarCloudActivity$3;->this$0:Lcom/car/cloud/CarCloudActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/car/cloud/CarCloudActivity$3;->this$0:Lcom/car/cloud/CarCloudActivity;

    invoke-static {v0}, Lcom/car/cloud/CarCloudActivity;->access$600(Lcom/car/cloud/CarCloudActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/car/cloud/CarCloudActivity$3;->this$0:Lcom/car/cloud/CarCloudActivity;

    invoke-static {v0}, Lcom/car/cloud/CarCloudActivity;->access$600(Lcom/car/cloud/CarCloudActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/car/cloud/Type$UserInfo;

    :try_start_0
    iget-object v0, p0, Lcom/car/cloud/CarCloudActivity$3;->this$0:Lcom/car/cloud/CarCloudActivity;

    invoke-static {v0}, Lcom/car/cloud/CarCloudActivity;->access$400(Lcom/car/cloud/CarCloudActivity;)Lcom/car/cloud/UserAdapter;

    move-result-object v0

    iget-object v1, v10, Lcom/car/cloud/Type$UserInfo;->unionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/car/cloud/CarCloudActivity$3;->this$0:Lcom/car/cloud/CarCloudActivity;

    invoke-static {v2}, Lcom/car/cloud/CarCloudActivity;->access$000(Lcom/car/cloud/CarCloudActivity;)Lcom/car/common/ICarCloud;

    move-result-object v2

    iget-object v3, v10, Lcom/car/cloud/Type$UserInfo;->unionId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/car/common/ICarCloud;->userOnline(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/car/cloud/UserAdapter;->setUserStatus(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/car/cloud/Type$UserInfo;

    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v0

    iget-object v1, v10, Lcom/car/cloud/Type$UserInfo;->unionId:Ljava/lang/String;

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    new-instance v5, Lcom/car/cloud/CarCloudActivity$3$1;

    invoke-direct {v5, p0}, Lcom/car/cloud/CarCloudActivity$3$1;-><init>(Lcom/car/cloud/CarCloudActivity$3;)V

    invoke-virtual/range {v0 .. v5}, Lcom/car/cloud/WebSocketUtil;->getChatMsgList(Ljava/lang/String;JILcom/car/cloud/WebSocketUtil$MsgListener;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/car/cloud/CarCloudActivity$3;->this$0:Lcom/car/cloud/CarCloudActivity;

    invoke-static {v0}, Lcom/car/cloud/CarCloudActivity;->access$400(Lcom/car/cloud/CarCloudActivity;)Lcom/car/cloud/UserAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/cloud/CarCloudActivity$3;->this$0:Lcom/car/cloud/CarCloudActivity;

    invoke-static {v0}, Lcom/car/cloud/CarCloudActivity;->access$400(Lcom/car/cloud/CarCloudActivity;)Lcom/car/cloud/UserAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/car/cloud/UserAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_1
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/car/cloud/Type$MsgInfo;

    if-eqz v9, :cond_0

    iget-object v0, p0, Lcom/car/cloud/CarCloudActivity$3;->this$0:Lcom/car/cloud/CarCloudActivity;

    invoke-static {v0}, Lcom/car/cloud/CarCloudActivity;->access$500(Lcom/car/cloud/CarCloudActivity;)Lcom/car/cloud/MessageView;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/car/cloud/MessageView;->receiveMessage(Lcom/car/cloud/Type$MsgInfo;)V

    iget-object v0, p0, Lcom/car/cloud/CarCloudActivity$3;->this$0:Lcom/car/cloud/CarCloudActivity;

    invoke-static {v0}, Lcom/car/cloud/CarCloudActivity;->access$800(Lcom/car/cloud/CarCloudActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, v9, Lcom/car/cloud/Type$MsgInfo;->from:Ljava/lang/String;

    iget-object v2, v9, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/car/cloud/CarCloudActivity$3;->this$0:Lcom/car/cloud/CarCloudActivity;

    invoke-static {v0}, Lcom/car/cloud/CarCloudActivity;->access$400(Lcom/car/cloud/CarCloudActivity;)Lcom/car/cloud/UserAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/cloud/CarCloudActivity$3;->this$0:Lcom/car/cloud/CarCloudActivity;

    invoke-static {v0}, Lcom/car/cloud/CarCloudActivity;->access$400(Lcom/car/cloud/CarCloudActivity;)Lcom/car/cloud/UserAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/car/cloud/UserAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
