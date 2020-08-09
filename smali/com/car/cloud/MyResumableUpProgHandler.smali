.class public Lcom/car/cloud/MyResumableUpProgHandler;
.super Ljava/lang/Object;
.source "MyResumableUpProgHandler.java"

# interfaces
.implements Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback",
        "<",
        "Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MyResumableUpProgHandle"

.field private static mTotalSize:J


# instance fields
.field private mLastUpdateTime:J

.field private mRelayId:J

.field private mUid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/car/cloud/MyResumableUpProgHandler;->mTotalSize:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/car/cloud/MyResumableUpProgHandler;->mLastUpdateTime:J

    iput-object p1, p0, Lcom/car/cloud/MyResumableUpProgHandler;->mUid:Ljava/lang/String;

    iput-wide p2, p0, Lcom/car/cloud/MyResumableUpProgHandler;->mRelayId:J

    return-void
.end method


# virtual methods
.method public onProgress(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;JJ)V
    .locals 10

    const/16 v4, 0x64

    sget-wide v0, Lcom/car/cloud/MyResumableUpProgHandler;->mTotalSize:J

    cmp-long v0, p4, v0

    if-lez v0, :cond_0

    sput-wide p4, Lcom/car/cloud/MyResumableUpProgHandler;->mTotalSize:J

    :cond_0
    sget-wide v0, Lcom/car/cloud/MyResumableUpProgHandler;->mTotalSize:J

    cmp-long v0, v0, p4

    if-nez v0, :cond_4

    const/4 v7, 0x1

    :goto_0
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p2

    div-long/2addr v0, p4

    long-to-int v5, v0

    const-string v0, "MyResumableUpProgHandle"

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

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "totalSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isTotalPercent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v0, p0, Lcom/car/cloud/MyResumableUpProgHandler;->mLastUpdateTime:J

    sub-long v0, v8, v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    if-ne v5, v4, :cond_3

    :cond_1
    if-eqz v7, :cond_3

    iput-wide v8, p0, Lcom/car/cloud/MyResumableUpProgHandler;->mLastUpdateTime:J

    iget-object v0, p0, Lcom/car/cloud/MyResumableUpProgHandler;->mUid:Ljava/lang/String;

    if-eqz v0, :cond_2

    if-ne v4, v5, :cond_2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/car/cloud/MyResumableUpProgHandler;->mTotalSize:J

    :cond_2
    const-string v0, "MyResumableUpProgHandle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgress: total percent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/car/cloud/MyResumableUpProgHandler;->mUid:Ljava/lang/String;

    iget-wide v2, p0, Lcom/car/cloud/MyResumableUpProgHandler;->mRelayId:J

    const-string v4, "upl"

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/car/cloud/WebSocketUtil;->notifyUserCapturing(Ljava/lang/String;JLjava/lang/String;ILcom/car/cloud/WebSocketUtil$ReplyHandler;)V

    :cond_3
    return-void

    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;JJ)V
    .locals 6

    move-object v1, p1

    check-cast v1, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/car/cloud/MyResumableUpProgHandler;->onProgress(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;JJ)V

    return-void
.end method
