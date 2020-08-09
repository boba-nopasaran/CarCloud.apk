.class Lcom/car/cloud/CarCloudService$MyUpProgressHandler2;
.super Ljava/lang/Object;
.source "CarCloudService.java"

# interfaces
.implements Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/cloud/CarCloudService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyUpProgressHandler2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback",
        "<",
        "Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;",
        ">;"
    }
.end annotation


# instance fields
.field mLastUpdateTime:J

.field mRelayid:J

.field mUid:Ljava/lang/String;

.field final synthetic this$0:Lcom/car/cloud/CarCloudService;


# direct methods
.method constructor <init>(Lcom/car/cloud/CarCloudService;Ljava/lang/String;J)V
    .locals 3

    iput-object p1, p0, Lcom/car/cloud/CarCloudService$MyUpProgressHandler2;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/car/cloud/CarCloudService$MyUpProgressHandler2;->mLastUpdateTime:J

    iput-object p2, p0, Lcom/car/cloud/CarCloudService$MyUpProgressHandler2;->mUid:Ljava/lang/String;

    iput-wide p3, p0, Lcom/car/cloud/CarCloudService$MyUpProgressHandler2;->mRelayid:J

    return-void
.end method


# virtual methods
.method public onProgress(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;JJ)V
    .locals 10

    const-wide/16 v0, 0x64

    mul-long/2addr v0, p2

    div-long/2addr v0, p4

    long-to-int v5, v0

    const-string v0, "CarSvc_CarCloudService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "progress percent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currentSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", totalSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v0, p0, Lcom/car/cloud/CarCloudService$MyUpProgressHandler2;->mLastUpdateTime:J

    sub-long v0, v8, v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/16 v0, 0x64

    if-ne v5, v0, :cond_1

    :cond_0
    iput-wide v8, p0, Lcom/car/cloud/CarCloudService$MyUpProgressHandler2;->mLastUpdateTime:J

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$MyUpProgressHandler2;->mUid:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/car/cloud/CarCloudService$MyUpProgressHandler2;->mUid:Ljava/lang/String;

    iget-wide v2, p0, Lcom/car/cloud/CarCloudService$MyUpProgressHandler2;->mRelayid:J

    const-string v4, "upl"

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/car/cloud/WebSocketUtil;->notifyUserCapturing(Ljava/lang/String;JLjava/lang/String;ILcom/car/cloud/WebSocketUtil$ReplyHandler;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;JJ)V
    .locals 6

    move-object v1, p1

    check-cast v1, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/car/cloud/CarCloudService$MyUpProgressHandler2;->onProgress(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;JJ)V

    return-void
.end method
