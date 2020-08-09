.class Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;
.super Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;
.source "ResponseEntityProxy.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/EofSensorWatcher;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final connHolder:Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/HttpEntity;Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;-><init>(Lcz/msebera/android/httpclient/HttpEntity;)V

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->connHolder:Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;

    return-void
.end method

.method private cleanup()V
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->connHolder:Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->connHolder:Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->abortConnection()V

    :cond_0
    return-void
.end method

.method public static enchance(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;)V
    .locals 2

    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->isStreaming()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    new-instance v1, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;

    invoke-direct {v1, v0, p1}, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;-><init>(Lcz/msebera/android/httpclient/HttpEntity;Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;)V

    invoke-interface {p0, v1}, Lcz/msebera/android/httpclient/HttpResponse;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->releaseConnection()V

    return-void
.end method

.method public eofDetected(Ljava/io/InputStream;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->releaseConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->cleanup()V

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->cleanup()V

    throw v0
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->wrappedEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;-><init>(Ljava/io/InputStream;Lcz/msebera/android/httpclient/conn/EofSensorWatcher;)V

    return-object v0
.end method

.method public isRepeatable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public releaseConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->connHolder:Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->connHolder:Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->isReusable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->connHolder:Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->releaseConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->cleanup()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->cleanup()V

    throw v0
.end method

.method public streamAbort(Ljava/io/InputStream;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->cleanup()V

    const/4 v0, 0x0

    return v0
.end method

.method public streamClosed(Ljava/io/InputStream;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->connHolder:Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->connHolder:Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->isReleased()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->releaseConnection()V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->cleanup()V

    return v2

    :cond_1
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz v1, :cond_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->cleanup()V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ResponseEntityProxy{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->wrappedEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->wrappedEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->releaseConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->cleanup()V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->cleanup()V

    throw v0
.end method
