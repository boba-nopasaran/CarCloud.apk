.class Lcom/car/cloud/CarCloudService$4;
.super Lcom/car/cloud/WebSocketUtil$ReplyHandler;
.source "CarCloudService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/CarCloudService;->try2UploadQiniu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/CarCloudService;

.field final synthetic val$filepath:Ljava/lang/String;

.field final synthetic val$relayid:J

.field final synthetic val$uid:Ljava/lang/String;

.field final synthetic val$uploadLock:Lcom/car/cloud/CarCloudService$MyLock;


# direct methods
.method constructor <init>(Lcom/car/cloud/CarCloudService;Lcom/car/cloud/CarCloudService$MyLock;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Lcom/car/cloud/CarCloudService$4;->this$0:Lcom/car/cloud/CarCloudService;

    iput-object p2, p0, Lcom/car/cloud/CarCloudService$4;->val$uploadLock:Lcom/car/cloud/CarCloudService$MyLock;

    iput-object p3, p0, Lcom/car/cloud/CarCloudService$4;->val$filepath:Ljava/lang/String;

    iput-object p4, p0, Lcom/car/cloud/CarCloudService$4;->val$uid:Ljava/lang/String;

    iput-wide p5, p0, Lcom/car/cloud/CarCloudService$4;->val$relayid:J

    invoke-direct {p0}, Lcom/car/cloud/WebSocketUtil$ReplyHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public cloudReply(ILorg/json/JSONObject;[B)V
    .locals 6

    iget-object v3, p0, Lcom/car/cloud/CarCloudService$4;->val$uploadLock:Lcom/car/cloud/CarCloudService$MyLock;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/car/cloud/CarCloudService$MyLock;->validUrl:Ljava/lang/String;

    if-eqz p2, :cond_0

    const-string v3, "ret"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ret"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "token"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "key"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "url"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/car/cloud/CarCloudService$4$1;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/car/cloud/CarCloudService$4$1;-><init>(Lcom/car/cloud/CarCloudService$4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/car/cloud/CarCloudService$4;->val$uploadLock:Lcom/car/cloud/CarCloudService$MyLock;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/car/cloud/CarCloudService$4;->val$uploadLock:Lcom/car/cloud/CarCloudService$MyLock;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/car/cloud/CarCloudService$MyLock;->isNotify:Z

    iget-object v3, p0, Lcom/car/cloud/CarCloudService$4;->val$uploadLock:Lcom/car/cloud/CarCloudService$MyLock;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
