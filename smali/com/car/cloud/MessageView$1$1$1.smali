.class Lcom/car/cloud/MessageView$1$1$1;
.super Ljava/lang/Object;
.source "MessageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/MessageView$1$1;->onMsgNotify(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/car/cloud/MessageView$1$1;


# direct methods
.method constructor <init>(Lcom/car/cloud/MessageView$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/MessageView$1$1$1;->this$2:Lcom/car/cloud/MessageView$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/car/cloud/MessageView$1$1$1;->this$2:Lcom/car/cloud/MessageView$1$1;

    iget-object v0, v0, Lcom/car/cloud/MessageView$1$1;->this$1:Lcom/car/cloud/MessageView$1;

    iget-object v0, v0, Lcom/car/cloud/MessageView$1;->this$0:Lcom/car/cloud/MessageView;

    invoke-static {v0}, Lcom/car/cloud/MessageView;->access$400(Lcom/car/cloud/MessageView;)Lcom/car/cloud/MyScrollView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/car/cloud/MyScrollView;->scrollTo(II)V

    return-void
.end method
