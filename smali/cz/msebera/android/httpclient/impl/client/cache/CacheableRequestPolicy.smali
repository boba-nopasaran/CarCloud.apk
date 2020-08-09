.class Lcz/msebera/android/httpclient/impl/client/cache/CacheableRequestPolicy;
.super Ljava/lang/Object;
.source "CacheableRequestPolicy.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# instance fields
.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheableRequestPolicy;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    return-void
.end method


# virtual methods
.method public isServableFromCache(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .locals 14

    const/4 v11, 0x0

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v12

    invoke-interface {v12}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v12

    invoke-interface {v12}, Lcz/msebera/android/httpclient/RequestLine;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v10

    sget-object v12, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-virtual {v12, v10}, Lcz/msebera/android/httpclient/HttpVersion;->compareToVersion(Lcz/msebera/android/httpclient/ProtocolVersion;)I

    move-result v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheableRequestPolicy;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v13, "non-HTTP/1.1 request was not serveable from cache"

    invoke-virtual {v12, v13}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    :goto_0
    return v11

    :cond_0
    const-string v12, "GET"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "HEAD"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    iget-object v12, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheableRequestPolicy;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v13, "non-GET or non-HEAD request was not serveable from cache"

    invoke-virtual {v12, v13}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v12, "Pragma"

    invoke-interface {p1, v12}, Lcz/msebera/android/httpclient/HttpRequest;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v12

    array-length v12, v12

    if-lez v12, :cond_2

    iget-object v12, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheableRequestPolicy;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v13, "request with Pragma header was not serveable from cache"

    invoke-virtual {v12, v13}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v12, "Cache-Control"

    invoke-interface {p1, v12}, Lcz/msebera/android/httpclient/HttpRequest;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v4

    move-object v0, v4

    array-length v7, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v7, :cond_6

    aget-object v2, v0, v6

    invoke-interface {v2}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v1

    array-length v8, v1

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v8, :cond_5

    aget-object v3, v1, v5

    const-string v12, "no-store"

    invoke-interface {v3}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheableRequestPolicy;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v13, "Request with no-store was not serveable from cache"

    invoke-virtual {v12, v13}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v12, "no-cache"

    invoke-interface {v3}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheableRequestPolicy;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v13, "Request with no-cache was not serveable from cache"

    invoke-virtual {v12, v13}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_1

    :cond_6
    iget-object v11, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheableRequestPolicy;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v12, "Request was serveable from cache"

    invoke-virtual {v11, v12}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    const/4 v11, 0x1

    goto :goto_0
.end method
