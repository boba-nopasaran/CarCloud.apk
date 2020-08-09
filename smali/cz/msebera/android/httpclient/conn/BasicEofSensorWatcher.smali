.class public Lcz/msebera/android/httpclient/conn/BasicEofSensorWatcher;
.super Ljava/lang/Object;
.source "BasicEofSensorWatcher.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/EofSensorWatcher;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final attemptReuse:Z

.field protected final managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/conn/ManagedClientConnection;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Connection"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/BasicEofSensorWatcher;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    iput-boolean p2, p0, Lcz/msebera/android/httpclient/conn/BasicEofSensorWatcher;->attemptReuse:Z

    return-void
.end method


# virtual methods
.method public eofDetected(Ljava/io/InputStream;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/BasicEofSensorWatcher;->attemptReuse:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicEofSensorWatcher;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->markReusable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicEofSensorWatcher;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->releaseConnection()V

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/BasicEofSensorWatcher;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->releaseConnection()V

    throw v0
.end method

.method public streamAbort(Ljava/io/InputStream;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicEofSensorWatcher;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->abortConnection()V

    const/4 v0, 0x0

    return v0
.end method

.method public streamClosed(Ljava/io/InputStream;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/BasicEofSensorWatcher;->attemptReuse:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicEofSensorWatcher;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->markReusable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicEofSensorWatcher;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->releaseConnection()V

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/BasicEofSensorWatcher;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->releaseConnection()V

    throw v0
.end method
