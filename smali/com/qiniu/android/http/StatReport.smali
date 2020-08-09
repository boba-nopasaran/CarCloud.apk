.class public final Lcom/qiniu/android/http/StatReport;
.super Ljava/lang/Object;
.source "StatReport.java"

# interfaces
.implements Lcom/qiniu/android/http/IReport;


# instance fields
.field private previousErrorInfo:Lcom/qiniu/android/http/ResponseInfo;

.field private previousSpeedInfo:Lcom/qiniu/android/http/ResponseInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/http/StatReport;->previousErrorInfo:Lcom/qiniu/android/http/ResponseInfo;

    iput-object v0, p0, Lcom/qiniu/android/http/StatReport;->previousSpeedInfo:Lcom/qiniu/android/http/ResponseInfo;

    return-void
.end method


# virtual methods
.method public declared-synchronized appendStatHeaders([Lcz/msebera/android/httpclient/Header;)[Lcz/msebera/android/httpclient/Header;
    .locals 14

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/qiniu/android/http/StatReport;->previousErrorInfo:Lcom/qiniu/android/http/ResponseInfo;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/qiniu/android/http/StatReport;->previousSpeedInfo:Lcom/qiniu/android/http/ResponseInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    :goto_0
    monitor-exit p0

    return-object p1

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iget-object v5, p0, Lcom/qiniu/android/http/StatReport;->previousErrorInfo:Lcom/qiniu/android/http/ResponseInfo;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/qiniu/android/http/StatReport;->previousSpeedInfo:Lcom/qiniu/android/http/ResponseInfo;

    if-eqz v5, :cond_1

    const/4 v1, 0x2

    :cond_1
    array-length v5, p1

    add-int/2addr v5, v1

    new-array v3, v5, [Lcz/msebera/android/httpclient/Header;

    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, p1

    invoke-static {p1, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/qiniu/android/http/StatReport;->previousErrorInfo:Lcom/qiniu/android/http/ResponseInfo;

    if-eqz v5, :cond_2

    iget-object v2, p0, Lcom/qiniu/android/http/StatReport;->previousErrorInfo:Lcom/qiniu/android/http/ResponseInfo;

    iget-object v5, v2, Lcom/qiniu/android/http/ResponseInfo;->reqId:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v4, v2, Lcom/qiniu/android/http/ResponseInfo;->reqId:Ljava/lang/String;

    :goto_1
    iget-object v5, v2, Lcom/qiniu/android/http/ResponseInfo;->xvia:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v0, v2, Lcom/qiniu/android/http/ResponseInfo;->xvia:Ljava/lang/String;

    :goto_2
    array-length v5, p1

    new-instance v6, Lcz/msebera/android/httpclient/message/BasicHeader;

    const-string v7, "X-Estat"

    const-string v8, "e1;%d;%s;%s;%s;%f"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, v2, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    const/4 v10, 0x2

    aput-object v0, v9, v10

    const/4 v10, 0x3

    iget-object v11, v2, Lcom/qiniu/android/http/ResponseInfo;->ip:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x4

    iget-wide v12, v2, Lcom/qiniu/android/http/ResponseInfo;->duration:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcz/msebera/android/httpclient/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v5

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/qiniu/android/http/StatReport;->previousErrorInfo:Lcom/qiniu/android/http/ResponseInfo;

    :cond_2
    iget-object v5, p0, Lcom/qiniu/android/http/StatReport;->previousSpeedInfo:Lcom/qiniu/android/http/ResponseInfo;

    if-eqz v5, :cond_3

    array-length v5, p1

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    new-instance v6, Lcz/msebera/android/httpclient/message/BasicHeader;

    const-string v7, "X-Stat"

    const-string v8, "v1;%s;%f;%s;%s"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/qiniu/android/http/StatReport;->previousSpeedInfo:Lcom/qiniu/android/http/ResponseInfo;

    iget-object v11, v11, Lcom/qiniu/android/http/ResponseInfo;->reqId:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/qiniu/android/http/StatReport;->previousSpeedInfo:Lcom/qiniu/android/http/ResponseInfo;

    iget-wide v12, v11, Lcom/qiniu/android/http/ResponseInfo;->duration:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/qiniu/android/http/StatReport;->previousSpeedInfo:Lcom/qiniu/android/http/ResponseInfo;

    iget-object v11, v11, Lcom/qiniu/android/http/ResponseInfo;->xvia:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget-object v11, p0, Lcom/qiniu/android/http/StatReport;->previousSpeedInfo:Lcom/qiniu/android/http/ResponseInfo;

    iget-object v11, v11, Lcom/qiniu/android/http/ResponseInfo;->ip:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcz/msebera/android/httpclient/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v5

    :cond_3
    move-object p1, v3

    goto/16 :goto_0

    :cond_4
    const-string v4, ""

    goto :goto_1

    :cond_5
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized updateErrorInfo(Lcom/qiniu/android/http/ResponseInfo;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/qiniu/android/http/StatReport;->previousErrorInfo:Lcom/qiniu/android/http/ResponseInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateSpeedInfo(Lcom/qiniu/android/http/ResponseInfo;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/qiniu/android/http/StatReport;->previousSpeedInfo:Lcom/qiniu/android/http/ResponseInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
