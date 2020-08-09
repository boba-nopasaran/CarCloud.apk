.class Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;
.super Ljava/lang/Object;
.source "CachedHttpResponseGenerator.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# instance fields
.field private final validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;


# direct methods
.method constructor <init>()V
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;-><init>()V

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;-><init>(Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;)V

    return-void
.end method

.method constructor <init>(Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    return-void
.end method

.method private addMissingContentLengthHeader(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/HttpEntity;)V
    .locals 4

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;->transferEncodingIsPresent(Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "Content-Length"

    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHeader;

    const-string v1, "Content-Length"

    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->setHeader(Lcz/msebera/android/httpclient/Header;)V

    goto :goto_0
.end method

.method private responseShouldContainEntity(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .locals 2

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getResource()Lcz/msebera/android/httpclient/client/cache/Resource;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private transferEncodingIsPresent(Lcz/msebera/android/httpclient/HttpResponse;)Z
    .locals 2

    const-string v1, "Transfer-Encoding"

    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method generateNotModifiedResponse(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 10

    new-instance v5, Lcz/msebera/android/httpclient/message/BasicHttpResponse;

    sget-object v7, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    const/16 v8, 0x130

    const-string v9, "Not Modified"

    invoke-direct {v5, v7, v8, v9}, Lcz/msebera/android/httpclient/message/BasicHttpResponse;-><init>(Lcz/msebera/android/httpclient/ProtocolVersion;ILjava/lang/String;)V

    const-string v7, "Date"

    invoke-virtual {p1, v7}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lcz/msebera/android/httpclient/message/BasicHeader;

    const-string v7, "Date"

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-static {v8}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Lcz/msebera/android/httpclient/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v5, v2}, Lcz/msebera/android/httpclient/HttpResponse;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    const-string v7, "ETag"

    invoke-virtual {p1, v7}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v5, v3}, Lcz/msebera/android/httpclient/HttpResponse;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    :cond_1
    const-string v7, "Content-Location"

    invoke-virtual {p1, v7}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v5, v1}, Lcz/msebera/android/httpclient/HttpResponse;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    :cond_2
    const-string v7, "Expires"

    invoke-virtual {p1, v7}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v5, v4}, Lcz/msebera/android/httpclient/HttpResponse;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    :cond_3
    const-string v7, "Cache-Control"

    invoke-virtual {p1, v7}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v5, v0}, Lcz/msebera/android/httpclient/HttpResponse;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    :cond_4
    const-string v7, "Vary"

    invoke-virtual {p1, v7}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-interface {v5, v6}, Lcz/msebera/android/httpclient/HttpResponse;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    :cond_5
    invoke-static {v5}, Lcz/msebera/android/httpclient/impl/client/cache/Proxies;->enhanceResponse(Lcz/msebera/android/httpclient/HttpResponse;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v7

    return-object v7
.end method

.method generateResponse(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 8

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    new-instance v4, Lcz/msebera/android/httpclient/message/BasicHttpResponse;

    sget-object v5, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getStatusCode()I

    move-result v6

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getReasonPhrase()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcz/msebera/android/httpclient/message/BasicHttpResponse;-><init>(Lcz/msebera/android/httpclient/ProtocolVersion;ILjava/lang/String;)V

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v5

    invoke-interface {v4, v5}, Lcz/msebera/android/httpclient/HttpResponse;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;->responseShouldContainEntity(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v2, Lcz/msebera/android/httpclient/impl/client/cache/CacheEntity;

    invoke-direct {v2, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheEntity;-><init>(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)V

    invoke-direct {p0, v4, v2}, Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;->addMissingContentLengthHeader(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/HttpEntity;)V

    invoke-interface {v4, v2}, Lcz/msebera/android/httpclient/HttpResponse;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    :cond_0
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v5, p2, v3}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-lez v5, :cond_1

    const-wide/32 v6, 0x7fffffff

    cmp-long v5, v0, v6

    if-ltz v5, :cond_2

    const-string v5, "Age"

    const-string v6, "2147483648"

    invoke-interface {v4, v5, v6}, Lcz/msebera/android/httpclient/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-static {v4}, Lcz/msebera/android/httpclient/impl/client/cache/Proxies;->enhanceResponse(Lcz/msebera/android/httpclient/HttpResponse;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v5

    return-object v5

    :cond_2
    const-string v5, "Age"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    long-to-int v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcz/msebera/android/httpclient/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
