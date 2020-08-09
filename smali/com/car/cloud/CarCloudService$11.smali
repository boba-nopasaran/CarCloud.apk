.class Lcom/car/cloud/CarCloudService$11;
.super Lcom/car/cloud/WebSocketUtil$MsgListener;
.source "CarCloudService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/CarCloudService;->reSendAlarmMsg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/CarCloudService;


# direct methods
.method constructor <init>(Lcom/car/cloud/CarCloudService;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/CarCloudService$11;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-direct {p0}, Lcom/car/cloud/WebSocketUtil$MsgListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMsgNotify(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/car/cloud/Type$MsgInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/car/cloud/CarCloudService$11$1;

    invoke-direct {v1, p0, p1}, Lcom/car/cloud/CarCloudService$11$1;-><init>(Lcom/car/cloud/CarCloudService$11;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
