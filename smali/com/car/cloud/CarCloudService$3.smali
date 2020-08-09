.class Lcom/car/cloud/CarCloudService$3;
.super Ljava/lang/Object;
.source "CarCloudService.java"

# interfaces
.implements Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/CarCloudService;->try2UploadOss(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback",
        "<",
        "Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;",
        "Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/CarCloudService;

.field final synthetic val$bucket:Ljava/lang/String;

.field final synthetic val$keyString:Ljava/lang/String;

.field final synthetic val$oss:Lcom/alibaba/sdk/android/oss/OSS;

.field final synthetic val$relayid:J

.field final synthetic val$uid:Ljava/lang/String;

.field final synthetic val$uploadLock:Lcom/car/cloud/CarCloudService$MyLock;


# direct methods
.method constructor <init>(Lcom/car/cloud/CarCloudService;Ljava/lang/String;JLcom/alibaba/sdk/android/oss/OSS;Ljava/lang/String;Ljava/lang/String;Lcom/car/cloud/CarCloudService$MyLock;)V
    .locals 1

    iput-object p1, p0, Lcom/car/cloud/CarCloudService$3;->this$0:Lcom/car/cloud/CarCloudService;

    iput-object p2, p0, Lcom/car/cloud/CarCloudService$3;->val$uid:Ljava/lang/String;

    iput-wide p3, p0, Lcom/car/cloud/CarCloudService$3;->val$relayid:J

    iput-object p5, p0, Lcom/car/cloud/CarCloudService$3;->val$oss:Lcom/alibaba/sdk/android/oss/OSS;

    iput-object p6, p0, Lcom/car/cloud/CarCloudService$3;->val$bucket:Ljava/lang/String;

    iput-object p7, p0, Lcom/car/cloud/CarCloudService$3;->val$keyString:Ljava/lang/String;

    iput-object p8, p0, Lcom/car/cloud/CarCloudService$3;->val$uploadLock:Lcom/car/cloud/CarCloudService$MyLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFailure(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V
    .locals 0

    check-cast p1, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {p0, p1, p2, p3}, Lcom/car/cloud/CarCloudService$3;->onFailure(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V

    return-void
.end method

.method public onFailure(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V
    .locals 3

    if-eqz p2, :cond_0

    const-string v0, "CarSvc_CarCloudService"

    const-string v1, "onFailure error: "

    invoke-static {v0, v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    if-eqz p3, :cond_1

    const-string v0, "CarSvc_CarCloudService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ErrorCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CarSvc_CarCloudService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RequestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CarSvc_CarCloudService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HostId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getHostId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CarSvc_CarCloudService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RawMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getRawMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/car/cloud/CarCloudService$3;->val$uploadLock:Lcom/car/cloud/CarCloudService$MyLock;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/car/cloud/CarCloudService$MyLock;->validUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/car/cloud/CarCloudService$3;->val$uploadLock:Lcom/car/cloud/CarCloudService$MyLock;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/cloud/CarCloudService$3;->val$uploadLock:Lcom/car/cloud/CarCloudService$MyLock;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/car/cloud/CarCloudService$MyLock;->isNotify:Z

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$3;->val$uploadLock:Lcom/car/cloud/CarCloudService$MyLock;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic onSuccess(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/model/OSSResult;)V
    .locals 0

    check-cast p1, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    check-cast p2, Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;

    invoke-virtual {p0, p1, p2}, Lcom/car/cloud/CarCloudService$3;->onSuccess(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;)V
    .locals 9

    const-string v0, "resumableUpload"

    const-string v1, "success!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$3;->val$uid:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/car/cloud/CarCloudService$3;->val$uid:Ljava/lang/String;

    iget-wide v2, p0, Lcom/car/cloud/CarCloudService$3;->val$relayid:J

    const-string v4, "upl"

    const/16 v5, 0x64

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/car/cloud/WebSocketUtil;->notifyUserCapturing(Ljava/lang/String;JLjava/lang/String;ILcom/car/cloud/WebSocketUtil$ReplyHandler;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/car/cloud/CarCloudService$3;->val$oss:Lcom/alibaba/sdk/android/oss/OSS;

    iget-object v1, p0, Lcom/car/cloud/CarCloudService$3;->val$bucket:Ljava/lang/String;

    iget-object v2, p0, Lcom/car/cloud/CarCloudService$3;->val$keyString:Ljava/lang/String;

    const-wide/32 v4, 0x7fffffff

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/alibaba/sdk/android/oss/OSS;->presignConstrainedObjectURL(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$3;->val$uploadLock:Lcom/car/cloud/CarCloudService$MyLock;

    iput-object v8, v0, Lcom/car/cloud/CarCloudService$MyLock;->validUrl:Ljava/lang/String;

    const-string v0, "CarSvc_CarCloudService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UploadSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/alibaba/sdk/android/oss/ClientException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/car/cloud/CarCloudService$3;->val$uploadLock:Lcom/car/cloud/CarCloudService$MyLock;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/car/cloud/CarCloudService$3;->val$uploadLock:Lcom/car/cloud/CarCloudService$MyLock;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/car/cloud/CarCloudService$MyLock;->isNotify:Z

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$3;->val$uploadLock:Lcom/car/cloud/CarCloudService$MyLock;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catch_0
    move-exception v7

    const-string v0, "CarSvc_CarCloudService"

    const-string v1, "presignConstrainedObjectURL error: "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
