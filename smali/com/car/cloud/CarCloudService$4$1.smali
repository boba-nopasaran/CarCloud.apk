.class Lcom/car/cloud/CarCloudService$4$1;
.super Ljava/lang/Object;
.source "CarCloudService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/CarCloudService$4;->cloudReply(ILorg/json/JSONObject;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/cloud/CarCloudService$4;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$token:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/car/cloud/CarCloudService$4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/CarCloudService$4$1;->this$1:Lcom/car/cloud/CarCloudService$4;

    iput-object p2, p0, Lcom/car/cloud/CarCloudService$4$1;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/car/cloud/CarCloudService$4$1;->val$token:Ljava/lang/String;

    iput-object p4, p0, Lcom/car/cloud/CarCloudService$4$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v6, 0x0

    new-instance v7, Lcom/car/cloud/HTTPMultiPart;

    invoke-direct {v7}, Lcom/car/cloud/HTTPMultiPart;-><init>()V

    const-string v0, "key"

    iget-object v1, p0, Lcom/car/cloud/CarCloudService$4$1;->val$key:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Lcom/car/cloud/HTTPMultiPart;->addFormField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "token"

    iget-object v1, p0, Lcom/car/cloud/CarCloudService$4$1;->val$token:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Lcom/car/cloud/HTTPMultiPart;->addFormField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "file"

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/car/cloud/CarCloudService$4$1;->this$1:Lcom/car/cloud/CarCloudService$4;

    iget-object v2, v2, Lcom/car/cloud/CarCloudService$4;->val$filepath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Lcom/car/cloud/HTTPMultiPart;->addFilePart(Ljava/lang/String;Ljava/io/File;)V

    const-string v0, "http://upload.qiniu.com/"

    new-instance v1, Lcom/car/cloud/CarCloudService$MyUpProgressHandler;

    iget-object v2, p0, Lcom/car/cloud/CarCloudService$4$1;->this$1:Lcom/car/cloud/CarCloudService$4;

    iget-object v2, v2, Lcom/car/cloud/CarCloudService$4;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v3, p0, Lcom/car/cloud/CarCloudService$4$1;->this$1:Lcom/car/cloud/CarCloudService$4;

    iget-object v3, v3, Lcom/car/cloud/CarCloudService$4;->val$uid:Ljava/lang/String;

    iget-object v4, p0, Lcom/car/cloud/CarCloudService$4$1;->this$1:Lcom/car/cloud/CarCloudService$4;

    iget-wide v4, v4, Lcom/car/cloud/CarCloudService$4;->val$relayid:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/car/cloud/CarCloudService$MyUpProgressHandler;-><init>(Lcom/car/cloud/CarCloudService;Ljava/lang/String;J)V

    invoke-virtual {v7, v0, v1}, Lcom/car/cloud/HTTPMultiPart;->post(Ljava/lang/String;Lcom/car/cloud/HTTPMultiPart$ProgressCallback;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$4$1;->this$1:Lcom/car/cloud/CarCloudService$4;

    iget-object v0, v0, Lcom/car/cloud/CarCloudService$4;->val$uid:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/car/cloud/CarCloudService$4$1;->this$1:Lcom/car/cloud/CarCloudService$4;

    iget-object v1, v1, Lcom/car/cloud/CarCloudService$4;->val$uid:Ljava/lang/String;

    iget-object v2, p0, Lcom/car/cloud/CarCloudService$4$1;->this$1:Lcom/car/cloud/CarCloudService$4;

    iget-wide v2, v2, Lcom/car/cloud/CarCloudService$4;->val$relayid:J

    const-string v4, "upl"

    const/16 v5, 0x64

    invoke-virtual/range {v0 .. v6}, Lcom/car/cloud/WebSocketUtil;->notifyUserCapturing(Ljava/lang/String;JLjava/lang/String;ILcom/car/cloud/WebSocketUtil$ReplyHandler;)V

    :cond_0
    iget-object v0, p0, Lcom/car/cloud/CarCloudService$4$1;->this$1:Lcom/car/cloud/CarCloudService$4;

    iget-object v0, v0, Lcom/car/cloud/CarCloudService$4;->val$uploadLock:Lcom/car/cloud/CarCloudService$MyLock;

    iget-object v1, p0, Lcom/car/cloud/CarCloudService$4$1;->val$url:Ljava/lang/String;

    iput-object v1, v0, Lcom/car/cloud/CarCloudService$MyLock;->validUrl:Ljava/lang/String;

    const-string v0, "CarSvc_CarCloudService"

    const-string v1, "Upload Succeed:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/car/cloud/CarCloudService$4$1;->this$1:Lcom/car/cloud/CarCloudService$4;

    iget-object v1, v0, Lcom/car/cloud/CarCloudService$4;->val$uploadLock:Lcom/car/cloud/CarCloudService$MyLock;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/cloud/CarCloudService$4$1;->this$1:Lcom/car/cloud/CarCloudService$4;

    iget-object v0, v0, Lcom/car/cloud/CarCloudService$4;->val$uploadLock:Lcom/car/cloud/CarCloudService$MyLock;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/car/cloud/CarCloudService$MyLock;->isNotify:Z

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$4$1;->this$1:Lcom/car/cloud/CarCloudService$4;

    iget-object v0, v0, Lcom/car/cloud/CarCloudService$4;->val$uploadLock:Lcom/car/cloud/CarCloudService$MyLock;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "CarSvc_CarCloudService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upload "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/cloud/CarCloudService$4$1;->this$1:Lcom/car/cloud/CarCloudService$4;

    iget-object v2, v2, Lcom/car/cloud/CarCloudService$4;->val$filepath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " finished"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/car/cloud/CarCloudService$4$1;->this$1:Lcom/car/cloud/CarCloudService$4;

    iget-object v0, v0, Lcom/car/cloud/CarCloudService$4;->val$uploadLock:Lcom/car/cloud/CarCloudService$MyLock;

    iput-object v6, v0, Lcom/car/cloud/CarCloudService$MyLock;->validUrl:Ljava/lang/String;

    const-string v0, "CarSvc_CarCloudService"

    const-string v1, "Upload Failed:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
