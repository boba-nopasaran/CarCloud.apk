.class public Lcz/msebera/android/httpclient/conn/EofSensorInputStream;
.super Ljava/io/InputStream;
.source "EofSensorInputStream.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final eofWatcher:Lcz/msebera/android/httpclient/conn/EofSensorWatcher;

.field private selfClosed:Z

.field protected wrappedStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcz/msebera/android/httpclient/conn/EofSensorWatcher;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-string v0, "Wrapped stream"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->selfClosed:Z

    iput-object p2, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->eofWatcher:Lcz/msebera/android/httpclient/conn/EofSensorWatcher;

    return-void
.end method


# virtual methods
.method public abortConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->selfClosed:Z

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->checkAbort()V

    return-void
.end method

.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->isReadAllowed()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->checkAbort()V

    throw v1
.end method

.method protected checkAbort()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->eofWatcher:Lcz/msebera/android/httpclient/conn/EofSensorWatcher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->eofWatcher:Lcz/msebera/android/httpclient/conn/EofSensorWatcher;

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-interface {v1, v2}, Lcz/msebera/android/httpclient/conn/EofSensorWatcher;->streamAbort(Ljava/io/InputStream;)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iput-object v3, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    iput-object v3, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    throw v1
.end method

.method protected checkClose()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->eofWatcher:Lcz/msebera/android/httpclient/conn/EofSensorWatcher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->eofWatcher:Lcz/msebera/android/httpclient/conn/EofSensorWatcher;

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-interface {v1, v2}, Lcz/msebera/android/httpclient/conn/EofSensorWatcher;->streamClosed(Ljava/io/InputStream;)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iput-object v3, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    iput-object v3, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    throw v1
.end method

.method protected checkEOF(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    if-eqz v1, :cond_2

    if-gez p1, :cond_2

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->eofWatcher:Lcz/msebera/android/httpclient/conn/EofSensorWatcher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->eofWatcher:Lcz/msebera/android/httpclient/conn/EofSensorWatcher;

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-interface {v1, v2}, Lcz/msebera/android/httpclient/conn/EofSensorWatcher;->eofDetected(Ljava/io/InputStream;)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iput-object v3, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    iput-object v3, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    throw v1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->selfClosed:Z

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->checkClose()V

    return-void
.end method

.method getWrappedStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    return-object v0
.end method

.method protected isReadAllowed()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->selfClosed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read on closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSelfClosed()Z
    .locals 1

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->selfClosed:Z

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->isReadAllowed()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->checkEOF(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->checkAbort()V

    throw v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->isReadAllowed()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->checkEOF(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->checkAbort()V

    throw v0
.end method

.method public releaseConnection()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->close()V

    return-void
.end method
