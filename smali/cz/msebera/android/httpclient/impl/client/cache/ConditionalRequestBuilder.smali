.class Lcz/msebera/android/httpclient/impl/client/cache/ConditionalRequestBuilder;
.super Ljava/lang/Object;
.source "ConditionalRequestBuilder.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildConditionalRequest(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ProtocolException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getOriginal()Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object v13

    invoke-static {v13}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->wrap(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    const-string v13, "ETag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v13, "If-None-Match"

    invoke-interface {v3}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v13, "Last-Modified"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v8

    if-eqz v8, :cond_1

    const-string v13, "If-Modified-Since"

    invoke-interface {v8}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v11, 0x0

    const-string v13, "Cache-Control"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    array-length v9, v1

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v9, :cond_5

    aget-object v5, v1, v7

    invoke-interface {v5}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v2

    array-length v10, v2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v10, :cond_3

    aget-object v4, v2, v6

    const-string v13, "must-revalidate"

    invoke-interface {v4}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "proxy-revalidate"

    invoke-interface {v4}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    :cond_2
    const/4 v11, 0x1

    :cond_3
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_0

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    if-eqz v11, :cond_6

    const-string v13, "Cache-Control"

    const-string v14, "max-age=0"

    invoke-virtual {v12, v13, v14}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-object v12
.end method

.method public buildConditionalRequestFromVariants(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Ljava/util/Map;)Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/impl/client/cache/Variant;",
            ">;)",
            "Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;"
        }
    .end annotation

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getOriginal()Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object v5

    invoke-static {v5}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->wrap(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;

    move-result-object v4

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v5, "If-None-Match"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public buildUnconditionalRequest(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    .locals 3

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getOriginal()Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object v1

    invoke-static {v1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->wrap(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    const-string v1, "Cache-Control"

    const-string v2, "no-cache"

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Pragma"

    const-string v2, "no-cache"

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "If-Range"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->removeHeaders(Ljava/lang/String;)V

    const-string v1, "If-Match"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->removeHeaders(Ljava/lang/String;)V

    const-string v1, "If-None-Match"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->removeHeaders(Ljava/lang/String;)V

    const-string v1, "If-Unmodified-Since"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->removeHeaders(Ljava/lang/String;)V

    const-string v1, "If-Modified-Since"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->removeHeaders(Ljava/lang/String;)V

    return-object v0
.end method
