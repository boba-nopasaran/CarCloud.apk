.class Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;
.super Ljava/lang/Object;
.source "CacheValidityPolicy.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# static fields
.field public static final MAX_AGE:J = 0x80000000L


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private mayReturnStaleIfError([Lcz/msebera/android/httpclient/Header;J)Z
    .locals 12

    const/4 v8, 0x0

    move-object v0, p1

    array-length v6, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v3, v0, v5

    invoke-interface {v3}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v1

    array-length v7, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_0

    aget-object v2, v1, v4

    const-string v10, "stale-if-error"

    invoke-interface {v2}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :try_start_0
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    int-to-long v10, v9

    cmp-long v10, p2, v10

    if-gtz v10, :cond_1

    const/4 v8, 0x1

    :cond_0
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    :catch_0
    move-exception v10

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return v8
.end method


# virtual methods
.method protected contentLengthHeaderMatchesActualLength(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->hasContentLengthHeader(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getResource()Lcz/msebera/android/httpclient/client/cache/Resource;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getContentLengthValue(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J

    move-result-wide v0

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getResource()Lcz/msebera/android/httpclient/client/cache/Resource;

    move-result-object v2

    invoke-interface {v2}, Lcz/msebera/android/httpclient/client/cache/Resource;->length()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getAgeValue(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J
    .locals 12

    const-wide/16 v0, 0x0

    const-string v9, "Age"

    invoke-virtual {p1, v9}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    array-length v7, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v3, v2, v6

    :try_start_0
    invoke-interface {v3}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-gez v9, :cond_0

    const-wide v4, 0x80000000L

    :cond_0
    :goto_1
    cmp-long v9, v4, v0

    if-lez v9, :cond_1

    move-wide v0, v4

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v8

    const-wide v4, 0x80000000L

    goto :goto_1

    :cond_2
    return-wide v0
.end method

.method protected getApparentAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J
    .locals 10

    const-wide/16 v4, 0x0

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    const-wide v4, 0x80000000L

    :cond_0
    :goto_0
    return-wide v4

    :cond_1
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getResponseDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v2, v6, v8

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    goto :goto_0
.end method

.method protected getContentLengthValue(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J
    .locals 5

    const-wide/16 v2, -0x1

    const-string v4, "Content-Length"

    invoke-virtual {p1, v4}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-wide v2

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected getCorrectedInitialAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J
    .locals 4

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getCorrectedReceivedAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getResponseDelaySecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected getCorrectedReceivedAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J
    .locals 5

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getApparentAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J

    move-result-wide v2

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getAgeValue(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J

    move-result-wide v0

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    :goto_0
    return-wide v2

    :cond_0
    move-wide v2, v0

    goto :goto_0
.end method

.method public getCurrentAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J
    .locals 4

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getCorrectedInitialAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getResidentTimeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected getDateValue(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Ljava/util/Date;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method protected getExpirationDate(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Ljava/util/Date;
    .locals 2

    const-string v1, "Expires"

    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    goto :goto_0
.end method

.method public getFreshnessLifetimeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J
    .locals 10

    const-wide/16 v6, 0x0

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getMaxAge(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J

    move-result-wide v4

    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-lez v8, :cond_0

    :goto_0
    return-wide v4

    :cond_0
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    move-wide v4, v6

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getExpirationDate(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_2

    move-wide v4, v6

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v2, v6, v8

    const-wide/16 v6, 0x3e8

    div-long v4, v2, v6

    goto :goto_0
.end method

.method public getHeuristicFreshnessLifetimeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;FJ)J
    .locals 11

    const-wide/16 v4, 0x0

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getLastModifiedValue(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Ljava/util/Date;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v2, v6, v8

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    move-wide p3, v4

    :cond_0
    :goto_0
    return-wide p3

    :cond_1
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    long-to-float v4, v4

    mul-float/2addr v4, p2

    float-to-long p3, v4

    goto :goto_0
.end method

.method protected getLastModifiedValue(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Ljava/util/Date;
    .locals 2

    const-string v1, "Last-Modified"

    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    goto :goto_0
.end method

.method protected getMaxAge(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J
    .locals 18

    const-wide/16 v12, -0x1

    const-string v15, "Cache-Control"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    array-length v10, v2

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v10, :cond_4

    aget-object v7, v2, v9

    invoke-interface {v7}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v3

    array-length v11, v3

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v11, :cond_3

    aget-object v6, v3, v8

    const-string v15, "max-age"

    invoke-interface {v6}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "s-maxage"

    invoke-interface {v6}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    :cond_0
    :try_start_0
    invoke-interface {v6}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    const-wide/16 v16, -0x1

    cmp-long v15, v12, v16

    if-eqz v15, :cond_1

    cmp-long v15, v4, v12

    if-gez v15, :cond_2

    :cond_1
    move-wide v12, v4

    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :catch_0
    move-exception v14

    const-wide/16 v12, 0x0

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_0

    :cond_4
    return-wide v12
.end method

.method protected getResidentTimeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J
    .locals 6

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getResponseDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    return-wide v2
.end method

.method protected getResponseDelaySecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J
    .locals 6

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getResponseDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getRequestDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    return-wide v2
.end method

.method public getStalenessSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J
    .locals 6

    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getFreshnessLifetimeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const-wide/16 v4, 0x0

    :goto_0
    return-wide v4

    :cond_0
    sub-long v4, v0, v2

    goto :goto_0
.end method

.method public hasCacheControlDirective(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/lang/String;)Z
    .locals 9

    const-string v8, "Cache-Control"

    invoke-virtual {p1, v8}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    array-length v6, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v3, v0, v5

    invoke-interface {v3}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v1

    array-length v7, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_1

    aget-object v2, v1, v4

    invoke-interface {v2}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    :goto_2
    return v8

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    goto :goto_2
.end method

.method protected hasContentLengthHeader(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .locals 1

    const-string v0, "Content-Length"

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResponseFresh(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getFreshnessLifetimeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResponseHeuristicallyFresh(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;FJ)Z
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v0

    invoke-virtual {p0, p1, p3, p4, p5}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getHeuristicFreshnessLifetimeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;FJ)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRevalidatable(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .locals 1

    const-string v0, "ETag"

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Last-Modified"

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mayReturnStaleIfError(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .locals 3

    invoke-virtual {p0, p2, p3}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getStalenessSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v0

    const-string v2, "Cache-Control"

    invoke-interface {p1, v2}, Lcz/msebera/android/httpclient/HttpRequest;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->mayReturnStaleIfError([Lcz/msebera/android/httpclient/Header;J)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Cache-Control"

    invoke-virtual {p2, v2}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->mayReturnStaleIfError([Lcz/msebera/android/httpclient/Header;J)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public mayReturnStaleWhileRevalidating(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .locals 14

    const-string v9, "Cache-Control"

    invoke-virtual {p1, v9}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    array-length v7, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v4, v1, v6

    invoke-interface {v4}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v2

    array-length v8, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v8, :cond_1

    aget-object v3, v2, v5

    const-string v9, "stale-while-revalidate"

    invoke-interface {v3}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    :try_start_0
    invoke-interface {v3}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual/range {p0 .. p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getStalenessSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    int-to-long v12, v0

    cmp-long v9, v10, v12

    if-gtz v9, :cond_0

    const/4 v9, 0x1

    :goto_2
    return v9

    :catch_0
    move-exception v9

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public mustRevalidate(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .locals 1

    const-string v0, "must-revalidate"

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->hasCacheControlDirective(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public proxyRevalidate(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .locals 1

    const-string v0, "proxy-revalidate"

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->hasCacheControlDirective(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
