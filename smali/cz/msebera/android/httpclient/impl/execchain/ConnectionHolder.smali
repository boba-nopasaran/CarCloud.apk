.class Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
.super Ljava/lang/Object;
.source "ConnectionHolder.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;
.implements Lcz/msebera/android/httpclient/concurrent/Cancellable;
.implements Ljava/io/Closeable;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/ThreadSafe;
.end annotation


# instance fields
.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final managedConn:Lcz/msebera/android/httpclient/HttpClientConnection;

.field private final manager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

.field private volatile released:Z

.field private volatile reusable:Z

.field private volatile state:Ljava/lang/Object;

.field private volatile tunit:Ljava/util/concurrent/TimeUnit;

.field private volatile validDuration:J


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/HttpClientConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->manager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->managedConn:Lcz/msebera/android/httpclient/HttpClientConnection;

    return-void
.end method


# virtual methods
.method public abortConnection()V
    .locals 9

    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->managedConn:Lcz/msebera/android/httpclient/HttpClientConnection;

    monitor-enter v8

    :try_start_0
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->released:Z

    if-eqz v1, :cond_0

    monitor-exit v8

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->released:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->managedConn:Lcz/msebera/android/httpclient/HttpClientConnection;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/HttpClientConnection;->shutdown()V

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "Connection discarded"

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->manager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->managedConn:Lcz/msebera/android/httpclient/HttpClientConnection;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v6}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->releaseConnection(Lcz/msebera/android/httpclient/HttpClientConnection;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    :goto_1
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :try_start_4
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->manager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->managedConn:Lcz/msebera/android/httpclient/HttpClientConnection;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v6}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->releaseConnection(Lcz/msebera/android/httpclient/HttpClientConnection;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v7, v1

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->manager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->managedConn:Lcz/msebera/android/httpclient/HttpClientConnection;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v6}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->releaseConnection(Lcz/msebera/android/httpclient/HttpClientConnection;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public cancel()Z
    .locals 3

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->released:Z

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "Cancelling request execution"

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->abortConnection()V

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->abortConnection()V

    return-void
.end method

.method public isReleased()Z
    .locals 1

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->released:Z

    return v0
.end method

.method public isReusable()Z
    .locals 1

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->reusable:Z

    return v0
.end method

.method public markNonReusable()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->reusable:Z

    return-void
.end method

.method public markReusable()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->reusable:Z

    return-void
.end method

.method public releaseConnection()V
    .locals 9

    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->managedConn:Lcz/msebera/android/httpclient/HttpClientConnection;

    monitor-enter v8

    :try_start_0
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->released:Z

    if-eqz v1, :cond_0

    monitor-exit v8

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->released:Z

    iget-boolean v1, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->reusable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->manager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->managedConn:Lcz/msebera/android/httpclient/HttpClientConnection;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->state:Ljava/lang/Object;

    iget-wide v4, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->validDuration:J

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->tunit:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v6}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->releaseConnection(Lcz/msebera/android/httpclient/HttpClientConnection;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    :goto_1
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->managedConn:Lcz/msebera/android/httpclient/HttpClientConnection;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/HttpClientConnection;->close()V

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "Connection discarded"

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->manager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->managedConn:Lcz/msebera/android/httpclient/HttpClientConnection;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v6}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->releaseConnection(Lcz/msebera/android/httpclient/HttpClientConnection;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    :try_start_4
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->manager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->managedConn:Lcz/msebera/android/httpclient/HttpClientConnection;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v6}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->releaseConnection(Lcz/msebera/android/httpclient/HttpClientConnection;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v7, v1

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->manager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->managedConn:Lcz/msebera/android/httpclient/HttpClientConnection;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v6}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->releaseConnection(Lcz/msebera/android/httpclient/HttpClientConnection;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public setState(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->state:Ljava/lang/Object;

    return-void
.end method

.method public setValidFor(JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->managedConn:Lcz/msebera/android/httpclient/HttpClientConnection;

    monitor-enter v1

    :try_start_0
    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->validDuration:J

    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->tunit:Ljava/util/concurrent/TimeUnit;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
