.class Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;
.super Ljava/lang/Object;
.source "CachedResponseSuitabilityChecker.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# instance fields
.field private final heuristicCoefficient:F

.field private final heuristicDefaultLifetime:J

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final sharedCache:Z

.field private final useHeuristicCaching:Z

.field private final validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;-><init>()V

    invoke-direct {p0, v0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;-><init>(Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V

    return-void
.end method

.method constructor <init>(Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->isSharedCache()Z

    move-result v0

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->sharedCache:Z

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->isHeuristicCachingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->useHeuristicCaching:Z

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->getHeuristicCoefficient()F

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->heuristicCoefficient:F

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->getHeuristicDefaultLifetime()J

    move-result-wide v0

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->heuristicDefaultLifetime:J

    return-void
.end method

.method private cacheEntryDoesNotContainMethodAndEntity(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .locals 1

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getResource()Lcz/msebera/android/httpclient/client/cache/Resource;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private entryIsNotA204Response(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .locals 2

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getStatusCode()I

    move-result v0

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private etagValidatorMatches(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .locals 13

    const-string v12, "ETag"

    invoke-virtual {p2, v12}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v12, "If-None-Match"

    invoke-interface {p1, v12}, Lcz/msebera/android/httpclient/HttpRequest;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v8

    if-eqz v8, :cond_5

    move-object v0, v8

    array-length v9, v0

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v9, :cond_5

    aget-object v5, v0, v7

    invoke-interface {v5}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v1

    array-length v10, v1

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v10, :cond_4

    aget-object v2, v1, v6

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "*"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    :cond_1
    const/4 v12, 0x1

    :goto_3
    return v12

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_1

    :cond_5
    const/4 v12, 0x0

    goto :goto_3
.end method

.method private getMaxStale(Lcz/msebera/android/httpclient/HttpRequest;)J
    .locals 18

    const-wide/16 v10, -0x1

    const-string v13, "Cache-Control"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcz/msebera/android/httpclient/HttpRequest;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    array-length v8, v2

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_6

    aget-object v5, v2, v7

    invoke-interface {v5}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v3

    array-length v9, v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v9, :cond_5

    aget-object v4, v3, v6

    const-string v13, "max-stale"

    invoke-interface {v4}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v4}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    const-string v13, ""

    invoke-interface {v4}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    :cond_0
    const-wide/16 v16, -0x1

    cmp-long v13, v10, v16

    if-nez v13, :cond_2

    const-wide v10, 0x7fffffffffffffffL

    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-interface {v4}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-gez v13, :cond_3

    const-wide/16 v14, 0x0

    :cond_3
    const-wide/16 v16, -0x1

    cmp-long v13, v10, v16

    if-eqz v13, :cond_4

    cmp-long v13, v14, v10

    if-gez v13, :cond_1

    :cond_4
    move-wide v10, v14

    goto :goto_2

    :catch_0
    move-exception v12

    const-wide/16 v10, 0x0

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_0

    :cond_6
    return-wide v10
.end method

.method private hasSupportedEtagValidator(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .locals 1

    const-string v0, "If-None-Match"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private hasSupportedLastModifiedValidator(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .locals 1

    const-string v0, "If-Modified-Since"

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->hasValidDateField(Lcz/msebera/android/httpclient/HttpRequest;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private hasUnsupportedCacheEntryForGet(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->isGet(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->cacheEntryDoesNotContainMethodAndEntity(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->entryIsNotA204Response(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasUnsupportedConditionalHeaders(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .locals 1

    const-string v0, "If-Range"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "If-Match"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "If-Unmodified-Since"

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->hasValidDateField(Lcz/msebera/android/httpclient/HttpRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasValidDateField(Lcz/msebera/android/httpclient/HttpRequest;Ljava/lang/String;)Z
    .locals 7

    const/4 v5, 0x0

    invoke-interface {p1, p2}, Lcz/msebera/android/httpclient/HttpRequest;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    array-length v4, v0

    const/4 v3, 0x0

    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    invoke-interface {v2}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v5, 0x1

    :cond_0
    return v5
.end method

.method private isFreshEnough(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Lcz/msebera/android/httpclient/HttpRequest;Ljava/util/Date;)Z
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v0, p1, p3}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->isResponseFresh(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->useHeuristicCaching:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    iget v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->heuristicCoefficient:F

    iget-wide v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->heuristicDefaultLifetime:J

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->isResponseHeuristicallyFresh(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;FJ)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->originInsistsOnFreshness(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v8, v9

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->getMaxStale(Lcz/msebera/android/httpclient/HttpRequest;)J

    move-result-wide v6

    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-nez v0, :cond_4

    move v8, v9

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v0, p1, p3}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getStalenessSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v0

    cmp-long v0, v6, v0

    if-lez v0, :cond_5

    move v0, v8

    :goto_1
    move v8, v0

    goto :goto_0

    :cond_5
    move v0, v9

    goto :goto_1
.end method

.method private isGet(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .locals 2

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private lastModifiedValidatorMatches(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .locals 9

    const/4 v7, 0x0

    const-string v8, "Last-Modified"

    invoke-virtual {p2, v8}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v5

    const/4 v4, 0x0

    if-eqz v5, :cond_0

    invoke-interface {v5}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    :cond_0
    if-nez v4, :cond_2

    :cond_1
    :goto_0
    return v7

    :cond_2
    const-string v8, "If-Modified-Since"

    invoke-interface {p1, v8}, Lcz/msebera/android/httpclient/HttpRequest;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    array-length v6, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v6, :cond_4

    aget-object v1, v0, v2

    invoke-interface {v1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3, p3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v4, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private originInsistsOnFreshness(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v2, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->mustRevalidate(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->sharedCache:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v2, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->proxyRevalidate(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    const-string v3, "s-maxage"

    invoke-virtual {v2, p1, v3}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->hasCacheControlDirective(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public allConditionalsMatch(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->hasSupportedEtagValidator(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v1

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->hasSupportedLastModifiedValidator(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v2

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->etagValidatorMatches(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v5

    :goto_0
    if-eqz v2, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->lastModifiedValidatorMatches(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v3, v5

    :goto_1
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    if-eqz v0, :cond_0

    if-nez v3, :cond_3

    :cond_0
    :goto_2
    return v4

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    if-eqz v0, :cond_0

    :cond_4
    if-eqz v2, :cond_5

    if-eqz v3, :cond_0

    :cond_5
    move v4, v5

    goto :goto_2
.end method

.method public canCachedResponseBeUsed(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->isFreshEnough(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Lcz/msebera/android/httpclient/HttpRequest;Ljava/util/Date;)Z

    move-result v19

    if-nez v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v19, v0

    const-string v22, "Cache entry was not fresh enough"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    const/16 v19, 0x0

    :goto_0
    return v19

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->isGet(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v19

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->contentLengthHeaderMatchesActualLength(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result v19

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v19, v0

    const-string v22, "Cache entry Content-Length and header information do not match"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    const/16 v19, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->hasUnsupportedConditionalHeaders(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v19

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v19, v0

    const-string v22, "Request contained conditional headers we don\'t handle"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    const/16 v19, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->isConditional(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v19

    if-nez v19, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getStatusCode()I

    move-result v19

    const/16 v22, 0x130

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    const/16 v19, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->isConditional(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v19

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->allConditionalsMatch(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v19

    if-nez v19, :cond_4

    const/16 v19, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->hasUnsupportedCacheEntryForGet(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result v19

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v19, v0

    const-string v22, "HEAD response caching enabled but the cache entry does not contain a request method, entity or a 204 response"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_5
    const-string v19, "Cache-Control"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/HttpRequest;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v6

    array-length v15, v6

    const/4 v11, 0x0

    move v14, v11

    :goto_1
    if-ge v14, v15, :cond_d

    aget-object v8, v6, v14

    invoke-interface {v8}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v7

    array-length v0, v7

    move/from16 v16, v0

    const/4 v11, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v11, v0, :cond_c

    aget-object v9, v7, v11

    const-string v19, "no-cache"

    invoke-interface {v9}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v19, v0

    const-string v22, "Response contained NO CACHE directive, cache was not suitable"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_6
    const-string v19, "no-store"

    invoke-interface {v9}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v19, v0

    const-string v22, "Response contained NO STORE directive, cache was not suitable"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_7
    const-string v19, "max-age"

    invoke-interface {v9}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    :try_start_0
    invoke-interface {v9}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v22

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v24, v0

    cmp-long v19, v22, v24

    if-lez v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v19, v0

    const-string v22, "Response from cache was NOT suitable due to max age"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v19, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v19, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Response from cache was malformed"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v10}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_8
    const-string v19, "max-stale"

    invoke-interface {v9}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    :try_start_1
    invoke-interface {v9}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getFreshnessLifetimeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J

    move-result-wide v22

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v24, v0

    cmp-long v19, v22, v24

    if-lez v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v19, v0

    const-string v22, "Response from cache was not suitable due to Max stale freshness"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v19, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v19, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Response from cache was malformed: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v10}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_9
    const-string v19, "min-fresh"

    invoke-interface {v9}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    :try_start_2
    invoke-interface {v9}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-gez v19, :cond_a

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getFreshnessLifetimeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J

    move-result-wide v12

    sub-long v22, v12, v4

    cmp-long v19, v22, v20

    if-gez v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v19, v0

    const-string v22, "Response from cache was not suitable due to min fresh freshness requirement"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v19, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v19, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Response from cache was malformed: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v10}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    :cond_c
    add-int/lit8 v11, v14, 0x1

    move v14, v11

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v19, v0

    const-string v22, "Response from cache was suitable"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    const/16 v19, 0x1

    goto/16 :goto_0
.end method

.method public isConditional(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->hasSupportedEtagValidator(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->hasSupportedLastModifiedValidator(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
