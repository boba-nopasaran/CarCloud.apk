.class public Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;
.super Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;
.source "BufferedHttpEntity.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final buffer:[B


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/HttpEntity;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;-><init>(Lcz/msebera/android/httpclient/HttpEntity;)V

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntity;->isRepeatable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    invoke-static {p1}, Lcz/msebera/android/httpclient/util/EntityUtils;->toByteArray(Lcz/msebera/android/httpclient/HttpEntity;)[B

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;->buffer:[B

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;->buffer:[B

    goto :goto_0
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;->buffer:[B

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;->buffer:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public getContentLength()J
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;->buffer:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;->buffer:[B

    array-length v0, v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-super {p0}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->getContentLength()J

    move-result-wide v0

    goto :goto_0
.end method

.method public isChunked()Z
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;->buffer:[B

    if-nez v0, :cond_0

    invoke-super {p0}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->isChunked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRepeatable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;->buffer:[B

    if-nez v0, :cond_0

    invoke-super {p0}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Output stream"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;->buffer:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;->buffer:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_0
.end method
