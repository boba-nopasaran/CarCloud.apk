.class Lcom/car/cloud/MessageView$1$1;
.super Lcom/car/cloud/WebSocketUtil$MsgListener;
.source "MessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/MessageView$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/cloud/MessageView$1;


# direct methods
.method constructor <init>(Lcom/car/cloud/MessageView$1;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/MessageView$1$1;->this$1:Lcom/car/cloud/MessageView$1;

    invoke-direct {p0}, Lcom/car/cloud/WebSocketUtil$MsgListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMsgNotify(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/car/cloud/Type$MsgInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Lcom/car/cloud/MessageView$MsgInfoComparator;

    invoke-direct {v1}, Lcom/car/cloud/MessageView$MsgInfoComparator;-><init>()V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/car/cloud/MessageView$1$1;->this$1:Lcom/car/cloud/MessageView$1;

    iget-object v1, v1, Lcom/car/cloud/MessageView$1;->this$0:Lcom/car/cloud/MessageView;

    invoke-static {v1}, Lcom/car/cloud/MessageView;->access$100(Lcom/car/cloud/MessageView;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/car/cloud/MessageView$1$1;->this$1:Lcom/car/cloud/MessageView$1;

    iget-object v2, v2, Lcom/car/cloud/MessageView$1;->this$0:Lcom/car/cloud/MessageView;

    invoke-static {v2}, Lcom/car/cloud/MessageView;->access$000(Lcom/car/cloud/MessageView;)Lcom/car/cloud/Type$UserInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/car/cloud/Type$UserInfo;->unionId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v3, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    iget-object v1, p0, Lcom/car/cloud/MessageView$1$1;->this$1:Lcom/car/cloud/MessageView$1;

    iget-object v1, v1, Lcom/car/cloud/MessageView$1;->this$0:Lcom/car/cloud/MessageView;

    invoke-static {v1}, Lcom/car/cloud/MessageView;->access$200(Lcom/car/cloud/MessageView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v1, p0, Lcom/car/cloud/MessageView$1$1;->this$1:Lcom/car/cloud/MessageView$1;

    iget-object v1, v1, Lcom/car/cloud/MessageView$1;->this$0:Lcom/car/cloud/MessageView;

    invoke-static {v1, v0, v3}, Lcom/car/cloud/MessageView;->access$300(Lcom/car/cloud/MessageView;Ljava/util/List;Z)V

    iget-object v1, p0, Lcom/car/cloud/MessageView$1$1;->this$1:Lcom/car/cloud/MessageView$1;

    iget-object v1, v1, Lcom/car/cloud/MessageView$1;->this$0:Lcom/car/cloud/MessageView;

    invoke-static {v1}, Lcom/car/cloud/MessageView;->access$500(Lcom/car/cloud/MessageView;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/car/cloud/MessageView$1$1$1;

    invoke-direct {v2, p0}, Lcom/car/cloud/MessageView$1$1$1;-><init>(Lcom/car/cloud/MessageView$1$1;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
