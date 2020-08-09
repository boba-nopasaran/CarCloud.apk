.class Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;
.super Ljava/lang/Object;
.source "ResponseCachingPolicy.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# static fields
.field private static final AUTH_CACHEABLE_PARAMS:[Ljava/lang/String;

.field private static final cacheableStatuses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final maxObjectSizeBytes:J

.field private final neverCache1_0ResponsesWithQueryString:Z

.field private final sharedCache:Z

.field private final uncacheableStatuses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "s-maxage"

    aput-object v1, v0, v3

    const-string v1, "must-revalidate"

    aput-object v1, v0, v4

    const-string v1, "public"

    aput-object v1, v0, v5

    sput-object v0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->AUTH_CACHEABLE_PARAMS:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/16 v2, 0xcb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/16 v2, 0x12c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/16 v2, 0x12d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const/16 v3, 0x19a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->cacheableStatuses:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(JZZZ)V
    .locals 5

    const/16 v2, 0xce

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->maxObjectSizeBytes:J

    iput-boolean p3, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->sharedCache:Z

    iput-boolean p4, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->neverCache1_0ResponsesWithQueryString:Z

    if-eqz p5, :cond_0

    new-instance v0, Ljava/util/HashSet;

    new-array v1, v4, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->uncacheableStatuses:Ljava/util/Set;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/16 v2, 0x12f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->uncacheableStatuses:Ljava/util/Set;

    goto :goto_0
.end method

.method private expiresHeaderLessOrEqualToDateHeaderAndNoCacheControl(Lcz/msebera/android/httpclient/HttpResponse;)Z
    .locals 6

    const/4 v4, 0x0

    const-string v5, "Cache-Control"

    invoke-interface {p1, v5}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const-string v5, "Expires"

    invoke-interface {p1, v5}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v3

    const-string v5, "Date"

    invoke-interface {p1, v5}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v3}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-interface {v1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private from1_0Origin(Lcz/msebera/android/httpclient/HttpResponse;)Z
    .locals 8

    const-string v6, "Via"

    invoke-interface {p1, v6}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v5}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\s"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v4, v6, v7

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "HTTP/1.0"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    :goto_0
    return v6

    :cond_0
    const-string v6, "1.0"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_0

    :cond_1
    sget-object v6, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_0:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcz/msebera/android/httpclient/HttpVersion;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_0
.end method

.method private requestProtocolGreaterThanAccepted(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .locals 2

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v0

    sget-object v1, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/ProtocolVersion;->compareToVersion(Lcz/msebera/android/httpclient/ProtocolVersion;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private unknownStatusCode(I)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x64

    if-lt p1, v1, :cond_1

    const/16 v1, 0x65

    if-gt p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0xc8

    if-lt p1, v1, :cond_2

    const/16 v1, 0xce

    if-le p1, v1, :cond_0

    :cond_2
    const/16 v1, 0x12c

    if-lt p1, v1, :cond_3

    const/16 v1, 0x133

    if-le p1, v1, :cond_0

    :cond_3
    const/16 v1, 0x190

    if-lt p1, v1, :cond_4

    const/16 v1, 0x1a1

    if-le p1, v1, :cond_0

    :cond_4
    const/16 v1, 0x1f4

    if-lt p1, v1, :cond_5

    const/16 v1, 0x1f9

    if-le p1, v1, :cond_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected hasCacheControlParameterFrom(Lcz/msebera/android/httpclient/HttpMessage;[Ljava/lang/String;)Z
    .locals 14

    const-string v13, "Cache-Control"

    invoke-interface {p1, v13}, Lcz/msebera/android/httpclient/HttpMessage;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v3

    move-object v0, v3

    array-length v9, v0

    const/4 v6, 0x0

    move v8, v6

    :goto_0
    if-ge v8, v9, :cond_3

    aget-object v5, v0, v8

    invoke-interface {v5}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v1

    array-length v10, v1

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v10, :cond_2

    aget-object v4, v1, v7

    move-object/from16 v2, p2

    array-length v11, v2

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v11, :cond_1

    aget-object v12, v2, v6

    invoke-interface {v4}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x1

    :goto_3
    return v13

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_0

    :cond_3
    const/4 v13, 0x0

    goto :goto_3
.end method

.method protected isExplicitlyCacheable(Lcz/msebera/android/httpclient/HttpResponse;)Z
    .locals 4

    const/4 v1, 0x1

    const-string v2, "Expires"

    invoke-interface {p1, v2}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v2, 0x5

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "max-age"

    aput-object v3, v0, v2

    const-string v2, "s-maxage"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "must-revalidate"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "proxy-revalidate"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "public"

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->hasCacheControlParameterFrom(Lcz/msebera/android/httpclient/HttpMessage;[Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method protected isExplicitlyNonCacheable(Lcz/msebera/android/httpclient/HttpResponse;)Z
    .locals 11

    const-string v9, "Cache-Control"

    invoke-interface {p1, v9}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    move-object v0, v2

    array-length v7, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v4, v0, v6

    invoke-interface {v4}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v1

    array-length v8, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v8, :cond_2

    aget-object v3, v1, v5

    const-string v9, "no-store"

    invoke-interface {v3}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "no-cache"

    invoke-interface {v3}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-boolean v9, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->sharedCache:Z

    if-eqz v9, :cond_1

    const-string v9, "private"

    invoke-interface {v3}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    const/4 v9, 0x1

    :goto_2
    return v9

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public isResponseCacheable(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)Z
    .locals 6

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->requestProtocolGreaterThanAccepted(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v5, "Response was not cacheable."

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "no-store"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->hasCacheControlParameterFrom(Lcz/msebera/android/httpclient/HttpMessage;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v4

    invoke-interface {v4}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->neverCache1_0ResponsesWithQueryString:Z

    if-eqz v4, :cond_2

    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->from1_0Origin(Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v5, "Response was not cacheable as it had a query string."

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->isExplicitlyCacheable(Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v5, "Response was not cacheable as it is missing explicit caching headers."

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->expiresHeaderLessOrEqualToDateHeaderAndNoCacheControl(Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->sharedCache:Z

    if-eqz v4, :cond_4

    const-string v4, "Authorization"

    invoke-interface {p1, v4}, Lcz/msebera/android/httpclient/HttpRequest;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v4, v0

    if-lez v4, :cond_4

    sget-object v4, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->AUTH_CACHEABLE_PARAMS:[Ljava/lang/String;

    invoke-virtual {p0, p2, v4}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->hasCacheControlParameterFrom(Lcz/msebera/android/httpclient/HttpMessage;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_4
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->isResponseCacheable(Ljava/lang/String;Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v3

    goto :goto_0
.end method

.method public isResponseCacheable(Ljava/lang/String;Lcz/msebera/android/httpclient/HttpResponse;)Z
    .locals 22

    const/4 v5, 0x0

    const-string v18, "GET"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    const-string v18, "HEAD"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v18, v0

    const-string v19, "Response was not cacheable."

    invoke-virtual/range {v18 .. v19}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    const/16 v18, 0x0

    :goto_0
    return v18

    :cond_0
    invoke-interface/range {p2 .. p2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v16

    sget-object v18, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->cacheableStatuses:Ljava/util/Set;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    const/4 v5, 0x1

    :cond_1
    const-string v18, "Content-Length"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v6}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->maxObjectSizeBytes:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-lez v18, :cond_4

    const/16 v18, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->uncacheableStatuses:Ljava/util/Set;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    const/16 v18, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->unknownStatusCode(I)Z

    move-result v18

    if-eqz v18, :cond_1

    const/16 v18, 0x0

    goto :goto_0

    :cond_4
    const-string v18, "Age"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    array-length v0, v2

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_5

    const/16 v18, 0x0

    goto :goto_0

    :cond_5
    const-string v18, "Expires"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v11

    array-length v0, v11

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_6
    const-string v18, "Date"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v9

    array-length v0, v9

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_7
    const/16 v18, 0x0

    aget-object v18, v9, v18

    invoke-interface/range {v18 .. v18}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    if-nez v8, :cond_8

    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_8
    const-string v18, "Vary"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v3

    array-length v14, v3

    const/4 v12, 0x0

    move v13, v12

    :goto_1
    if-ge v13, v14, :cond_b

    aget-object v17, v3, v13

    invoke-interface/range {v17 .. v17}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v4

    array-length v15, v4

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v15, :cond_a

    aget-object v10, v4, v12

    const-string v18, "*"

    invoke-interface {v10}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_a
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    goto :goto_1

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->isExplicitlyNonCacheable(Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v18

    if-eqz v18, :cond_c

    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_c
    if-nez v5, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->isExplicitlyCacheable(Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v18

    if-eqz v18, :cond_e

    :cond_d
    const/16 v18, 0x1

    goto/16 :goto_0

    :cond_e
    const/16 v18, 0x0

    goto/16 :goto_0
.end method
