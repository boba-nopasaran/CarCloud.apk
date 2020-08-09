.class Lcom/car/cloud/QRActivity$3$1;
.super Lcom/car/cloud/WebSocketUtil$MsgListener;
.source "QRActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/QRActivity$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/cloud/QRActivity$3;


# direct methods
.method constructor <init>(Lcom/car/cloud/QRActivity$3;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/QRActivity$3$1;->this$1:Lcom/car/cloud/QRActivity$3;

    invoke-direct {p0}, Lcom/car/cloud/WebSocketUtil$MsgListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMsgNotify(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/car/cloud/Type$MsgInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/cloud/Type$MsgInfo;

    const/4 v2, 0x0

    invoke-static {}, Lcom/car/cloud/QRActivity;->access$700()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/car/cloud/Type$MsgInfo;->from:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v1, Lcom/car/cloud/Type$MsgInfo;->to:Ljava/lang/String;

    :goto_1
    iget-object v3, p0, Lcom/car/cloud/QRActivity$3$1;->this$1:Lcom/car/cloud/QRActivity$3;

    iget-object v3, v3, Lcom/car/cloud/QRActivity$3;->this$0:Lcom/car/cloud/QRActivity;

    invoke-static {v3}, Lcom/car/cloud/QRActivity;->access$800(Lcom/car/cloud/QRActivity;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, v1, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lcom/car/cloud/Type$MsgInfo;->from:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/car/cloud/QRActivity$3$1;->this$1:Lcom/car/cloud/QRActivity$3;

    iget-object v3, v3, Lcom/car/cloud/QRActivity$3;->this$0:Lcom/car/cloud/QRActivity;

    invoke-static {v3}, Lcom/car/cloud/QRActivity;->access$400(Lcom/car/cloud/QRActivity;)Lcom/car/cloud/UserAdapter;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/car/cloud/QRActivity$3$1;->this$1:Lcom/car/cloud/QRActivity$3;

    iget-object v3, v3, Lcom/car/cloud/QRActivity$3;->this$0:Lcom/car/cloud/QRActivity;

    invoke-static {v3}, Lcom/car/cloud/QRActivity;->access$400(Lcom/car/cloud/QRActivity;)Lcom/car/cloud/UserAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/car/cloud/UserAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method
