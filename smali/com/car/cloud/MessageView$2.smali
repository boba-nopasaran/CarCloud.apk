.class Lcom/car/cloud/MessageView$2;
.super Lcom/car/cloud/WebSocketUtil$MsgListener;
.source "MessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/MessageView;->enterMessageByUserInfo(Lcom/car/cloud/Type$UserInfo;)V
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

    iput-object p1, p0, Lcom/car/cloud/MessageView$2;->this$0:Lcom/car/cloud/MessageView;

    invoke-direct {p0}, Lcom/car/cloud/WebSocketUtil$MsgListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMsgNotify(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/car/cloud/Type$MsgInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/car/cloud/MessageView$MsgInfoComparator;

    invoke-direct {v0}, Lcom/car/cloud/MessageView$MsgInfoComparator;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/car/cloud/MessageView$2;->this$0:Lcom/car/cloud/MessageView;

    invoke-virtual {v0, p1}, Lcom/car/cloud/MessageView;->receiveAllMessage(Ljava/util/List;)V

    return-void
.end method
