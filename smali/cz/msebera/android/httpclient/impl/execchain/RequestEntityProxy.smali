.class Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;
.super Ljava/lang/Object;
.source "RequestEntityProxy.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpEntity;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private consumed:Z

.field private final original:Lcz/msebera/android/httpclient/HttpEntity;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/HttpEntity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->consumed:Z

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->original:Lcz/msebera/android/httpclient/HttpEntity;

    return-void
.end method

.method static enhance(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V
    .locals 2

    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->isRepeatable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->isEnhanced(Lcz/msebera/android/httpclient/HttpEntity;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;

    invoke-direct {v1, v0}, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;-><init>(Lcz/msebera/android/httpclient/HttpEntity;)V

    invoke-interface {p0, v1}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    :cond_0
    return-void
.end method

.method static isEnhanced(Lcz/msebera/android/httpclient/HttpEntity;)Z
    .locals 1

    instance-of v0, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;

    return v0
.end method

.method static isRepeatable(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .locals 4

    const/4 v2, 0x1

    instance-of v3, p0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-eqz v3, :cond_0

    check-cast p0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->isEnhanced(Lcz/msebera/android/httpclient/HttpEntity;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v0

    check-cast v1, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->isConsumed()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->isRepeatable()Z

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public consumeContent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->consumed:Z

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->original:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->consumeContent()V

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->original:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Lcz/msebera/android/httpclient/Header;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->original:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentEncoding()Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->original:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Lcz/msebera/android/httpclient/Header;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->original:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentType()Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public getOriginal()Lcz/msebera/android/httpclient/HttpEntity;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->original:Lcz/msebera/android/httpclient/HttpEntity;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->original:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isConsumed()Z
    .locals 1

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->consumed:Z

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->original:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->isRepeatable()Z

    move-result v0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->original:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->isStreaming()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestEntityProxy{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->original:Lcz/msebera/android/httpclient/HttpEntity;

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

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->consumed:Z

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->original:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
