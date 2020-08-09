.class Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;
.super Ljava/lang/Object;
.source "SizeLimitedResponseReader.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private consumed:Z

.field private instream:Ljava/io/InputStream;

.field private limit:Lcz/msebera/android/httpclient/client/cache/InputLimit;

.field private final maxResponseSizeBytes:J

.field private final request:Lcz/msebera/android/httpclient/HttpRequest;

.field private resource:Lcz/msebera/android/httpclient/client/cache/Resource;

.field private final resourceFactory:Lcz/msebera/android/httpclient/client/cache/ResourceFactory;

.field private final response:Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/client/cache/ResourceFactory;JLcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->resourceFactory:Lcz/msebera/android/httpclient/client/cache/ResourceFactory;

    iput-wide p2, p0, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->maxResponseSizeBytes:J

    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->request:Lcz/msebera/android/httpclient/HttpRequest;

    iput-object p5, p0, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->response:Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    return-void
.end method

.method static synthetic access$000(Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->response:Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    return-object v0
.end method

.method private doConsume()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->ensureNotConsumed()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->consumed:Z

    new-instance v2, Lcz/msebera/android/httpclient/client/cache/InputLimit;

    iget-wide v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->maxResponseSizeBytes:J

    invoke-direct {v2, v4, v5}, Lcz/msebera/android/httpclient/client/cache/InputLimit;-><init>(J)V

    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->limit:Lcz/msebera/android/httpclient/client/cache/InputLimit;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->response:Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    invoke-interface {v2}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->request:Lcz/msebera/android/httpclient/HttpRequest;

    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v2

    invoke-interface {v2}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->instream:Ljava/io/InputStream;

    :try_start_0
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->resourceFactory:Lcz/msebera/android/httpclient/client/cache/ResourceFactory;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->instream:Ljava/io/InputStream;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->limit:Lcz/msebera/android/httpclient/client/cache/InputLimit;

    invoke-interface {v2, v1, v3, v4}, Lcz/msebera/android/httpclient/client/cache/ResourceFactory;->generate(Ljava/lang/String;Ljava/io/InputStream;Lcz/msebera/android/httpclient/client/cache/InputLimit;)Lcz/msebera/android/httpclient/client/cache/Resource;

    move-result-object v2

    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->resource:Lcz/msebera/android/httpclient/client/cache/Resource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->limit:Lcz/msebera/android/httpclient/client/cache/InputLimit;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/client/cache/InputLimit;->isReached()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->instream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->limit:Lcz/msebera/android/httpclient/client/cache/InputLimit;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/client/cache/InputLimit;->isReached()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->instream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v2
.end method

.method private ensureConsumed()V
    .locals 2

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->consumed:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Response has not been consumed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private ensureNotConsumed()V
    .locals 2

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->consumed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Response has already been consumed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method getReconstructedResponse()Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->ensureConsumed()V

    new-instance v2, Lcz/msebera/android/httpclient/message/BasicHttpResponse;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->response:Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    invoke-interface {v3}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v3

    invoke-direct {v2, v3}, Lcz/msebera/android/httpclient/message/BasicHttpResponse;-><init>(Lcz/msebera/android/httpclient/StatusLine;)V

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->response:Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    invoke-interface {v3}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v3

    invoke-interface {v2, v3}, Lcz/msebera/android/httpclient/HttpResponse;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->resource:Lcz/msebera/android/httpclient/client/cache/Resource;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->instream:Ljava/io/InputStream;

    invoke-direct {v0, v3, v4}, Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity;-><init>(Lcz/msebera/android/httpclient/client/cache/Resource;Ljava/io/InputStream;)V

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->response:Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    invoke-interface {v3}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcz/msebera/android/httpclient/HttpEntity;->getContentType()Lcz/msebera/android/httpclient/Header;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity;->setContentType(Lcz/msebera/android/httpclient/Header;)V

    invoke-interface {v1}, Lcz/msebera/android/httpclient/HttpEntity;->getContentEncoding()Lcz/msebera/android/httpclient/Header;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity;->setContentEncoding(Lcz/msebera/android/httpclient/Header;)V

    invoke-interface {v1}, Lcz/msebera/android/httpclient/HttpEntity;->isChunked()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity;->setChunked(Z)V

    :cond_0
    invoke-interface {v2, v0}, Lcz/msebera/android/httpclient/HttpResponse;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    const-class v3, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProxyHandler;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    aput-object v6, v4, v5

    new-instance v5, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader$1;

    invoke-direct {v5, p0, v2}, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader$1;-><init>(Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;Lcz/msebera/android/httpclient/HttpResponse;)V

    invoke-static {v3, v4, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    return-object v3
.end method

.method getResource()Lcz/msebera/android/httpclient/client/cache/Resource;
    .locals 1

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->ensureConsumed()V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->resource:Lcz/msebera/android/httpclient/client/cache/Resource;

    return-object v0
.end method

.method isLimitReached()Z
    .locals 1

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->ensureConsumed()V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->limit:Lcz/msebera/android/httpclient/client/cache/InputLimit;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/cache/InputLimit;->isReached()Z

    move-result v0

    return v0
.end method

.method protected readResponse()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->consumed:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->doConsume()V

    :cond_0
    return-void
.end method
