.class public Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;
.super Ljava/lang/Object;
.source "CachingExec.java"

# interfaces
.implements Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/ThreadSafe;
.end annotation


# static fields
.field private static final SUPPORTS_RANGE_AND_CONTENT_RANGE_HEADERS:Z


# instance fields
.field private final asynchRevalidator:Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;

.field private final backend:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

.field private final cacheConfig:Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

.field private final cacheHits:Ljava/util/concurrent/atomic/AtomicLong;

.field private final cacheMisses:Ljava/util/concurrent/atomic/AtomicLong;

.field private final cacheUpdates:Ljava/util/concurrent/atomic/AtomicLong;

.field private final cacheableRequestPolicy:Lcz/msebera/android/httpclient/impl/client/cache/CacheableRequestPolicy;

.field private final conditionalRequestBuilder:Lcz/msebera/android/httpclient/impl/client/cache/ConditionalRequestBuilder;

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final requestCompliance:Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;

.field private final responseCache:Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;

.field private final responseCachingPolicy:Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;

.field private final responseCompliance:Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;

.field private final responseGenerator:Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;

.field private final suitabilityChecker:Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;

.field private final validityPolicy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

.field private final viaHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcz/msebera/android/httpclient/ProtocolVersion;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;)V
    .locals 2

    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;-><init>()V

    sget-object v1, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->DEFAULT:Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    invoke-direct {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/client/cache/ResourceFactory;Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;

    invoke-direct {v0, p2, p3, p4}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;-><init>(Lcz/msebera/android/httpclient/client/cache/ResourceFactory;Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V

    invoke-direct {p0, p1, v0, p4}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheHits:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheMisses:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->viaHeaders:Ljava/util/Map;

    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v0, "HTTP backend"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HttpCache"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    :goto_0
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheConfig:Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->backend:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseCache:Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;

    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->validityPolicy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->validityPolicy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;-><init>(Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseGenerator:Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;

    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheableRequestPolicy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheableRequestPolicy;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheableRequestPolicy:Lcz/msebera/android/httpclient/impl/client/cache/CacheableRequestPolicy;

    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->validityPolicy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheConfig:Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;-><init>(Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->suitabilityChecker:Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;

    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/ConditionalRequestBuilder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/cache/ConditionalRequestBuilder;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->conditionalRequestBuilder:Lcz/msebera/android/httpclient/impl/client/cache/ConditionalRequestBuilder;

    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseCompliance:Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;

    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheConfig:Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->isWeakETagOnPutDeleteAllowed()Z

    move-result v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;-><init>(Z)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->requestCompliance:Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;

    new-instance v1, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheConfig:Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->getMaxObjectSize()J

    move-result-wide v2

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheConfig:Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->isSharedCache()Z

    move-result v4

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheConfig:Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->isNeverCacheHTTP10ResponsesWithQuery()Z

    move-result v5

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheConfig:Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->is303CachingEnabled()Z

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;-><init>(JZZZ)V

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseCachingPolicy:Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;

    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->asynchRevalidator:Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;

    return-void

    :cond_0
    sget-object p3, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->DEFAULT:Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    goto :goto_0
.end method

.method constructor <init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;Lcz/msebera/android/httpclient/impl/client/cache/CacheableRequestPolicy;Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;Lcz/msebera/android/httpclient/impl/client/cache/ConditionalRequestBuilder;Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheHits:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheMisses:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->viaHeaders:Ljava/util/Map;

    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    if-eqz p11, :cond_0

    :goto_0
    iput-object p11, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheConfig:Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->backend:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseCache:Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;

    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->validityPolicy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseCachingPolicy:Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;

    iput-object p5, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseGenerator:Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;

    iput-object p6, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheableRequestPolicy:Lcz/msebera/android/httpclient/impl/client/cache/CacheableRequestPolicy;

    iput-object p7, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->suitabilityChecker:Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;

    iput-object p8, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->conditionalRequestBuilder:Lcz/msebera/android/httpclient/impl/client/cache/ConditionalRequestBuilder;

    iput-object p9, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseCompliance:Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;

    iput-object p10, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->requestCompliance:Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;

    iput-object p12, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->asynchRevalidator:Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;

    return-void

    :cond_0
    sget-object p11, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->DEFAULT:Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    goto :goto_0
.end method

.method private alreadyHaveNewerCacheEntry(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/HttpResponse;)Z
    .locals 7

    const/4 v5, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseCache:Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;

    invoke-interface {v6, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;->getCacheEntry(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-nez v2, :cond_1

    :cond_0
    :goto_1
    return v5

    :cond_1
    const-string v6, "Date"

    invoke-virtual {v2, v6}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v6, "Date"

    invoke-interface {p3, v6}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-interface {v4}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v5

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private explicitFreshnessRequest(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .locals 22

    const-string v18, "Cache-Control"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v6

    array-length v12, v6

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v12, :cond_4

    aget-object v9, v6, v11

    invoke-interface {v9}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v7

    array-length v13, v7

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v13, :cond_3

    aget-object v8, v7, v10

    const-string v18, "max-stale"

    invoke-interface {v8}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    :try_start_0
    invoke-interface {v8}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->validityPolicy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->validityPolicy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getFreshnessLifetimeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v14

    sub-long v18, v4, v14

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-lez v18, :cond_2

    const/16 v18, 0x1

    :goto_2
    return v18

    :catch_0
    move-exception v17

    const/16 v18, 0x1

    goto :goto_2

    :cond_0
    const-string v18, "min-fresh"

    invoke-interface {v8}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    const-string v18, "max-age"

    invoke-interface {v8}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    :cond_1
    const/16 v18, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto :goto_0

    :cond_4
    const/16 v18, 0x0

    goto :goto_2
.end method

.method private flushEntriesInvalidatedByRequest(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseCache:Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;

    invoke-interface {v1, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;->flushInvalidatedCacheEntriesFor(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "Unable to flush invalidated entries from cache"

    invoke-virtual {v1, v2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private generateCachedResponse(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 6

    const-string v1, "If-None-Match"

    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "If-Modified-Since"

    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseGenerator:Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;

    invoke-virtual {v1, p3}, Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;->generateNotModifiedResponse(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v0

    :goto_0
    sget-object v1, Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;->CACHE_HIT:Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;

    invoke-direct {p0, p2, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->setResponseStatus(Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;)V

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->validityPolicy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v1, p3, p4}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getStalenessSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    const-string v1, "Warning"

    const-string v2, "110 localhost \"Response is stale\""

    invoke-interface {v0, v1, v2}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0

    :cond_2
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseGenerator:Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;

    invoke-virtual {v1, p1, p3}, Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;->generateResponse(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v0

    goto :goto_0
.end method

.method private generateGatewayTimeout(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 4

    sget-object v0, Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;->CACHE_MODULE_RESPONSE:Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->setResponseStatus(Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;)V

    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;

    sget-object v1, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    const/16 v2, 0x1f8

    const-string v3, "Gateway Timeout"

    invoke-direct {v0, v1, v2, v3}, Lcz/msebera/android/httpclient/message/BasicHttpResponse;-><init>(Lcz/msebera/android/httpclient/ProtocolVersion;ILjava/lang/String;)V

    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/client/cache/Proxies;->enhanceResponse(Lcz/msebera/android/httpclient/HttpResponse;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method private generateViaHeader(Lcz/msebera/android/httpclient/HttpMessage;)Ljava/lang/String;
    .locals 14

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpMessage;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v3

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->viaHeaders:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v7, "cz.msebera.android.httpclient.client"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-static {v7, v8}, Lcz/msebera/android/httpclient/util/VersionInfo;->loadVersionInfo(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcz/msebera/android/httpclient/util/VersionInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/util/VersionInfo;->getRelease()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/ProtocolVersion;->getMajor()I

    move-result v1

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/ProtocolVersion;->getMinor()I

    move-result v2

    const-string v7, "http"

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "%d.%d localhost (Apache-HttpClient/%s (cache))"

    new-array v8, v13, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    aput-object v4, v8, v12

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->viaHeaders:Ljava/util/Map;

    invoke-interface {v7, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v5

    goto :goto_0

    :cond_1
    const-string v4, "UNAVAILABLE"

    goto :goto_1

    :cond_2
    const-string v7, "%s/%d.%d localhost (Apache-HttpClient/%s (cache))"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    aput-object v4, v8, v13

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method private getExistingCacheVariants(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/HttpHost;",
            "Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/impl/client/cache/Variant;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseCache:Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;

    invoke-interface {v2, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;->getVariantCacheEntriesWithEtags(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v3, "Unable to retrieve variant entries from cache"

    invoke-virtual {v2, v3, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getFatallyNoncompliantResponse(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;
    .locals 5

    const/4 v2, 0x0

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->requestCompliance:Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;

    invoke-virtual {v4, p1}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->requestIsFatallyNonCompliant(Lcz/msebera/android/httpclient/HttpRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    sget-object v4, Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;->CACHE_MODULE_RESPONSE:Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;

    invoke-direct {p0, p2, v4}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->setResponseStatus(Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;)V

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->requestCompliance:Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;

    invoke-virtual {v4, v0}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->getErrorForRequest(Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v2

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private getUpdatedVariantEntry(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Ljava/util/Date;Ljava/util/Date;Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;Lcz/msebera/android/httpclient/impl/client/cache/Variant;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v9, p7

    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseCache:Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;

    invoke-virtual/range {p6 .. p6}, Lcz/msebera/android/httpclient/impl/client/cache/Variant;->getCacheKey()Ljava/lang/String;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p7

    move-object v4, p5

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v7}, Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;->updateVariantCacheEntry(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Lcz/msebera/android/httpclient/HttpResponse;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    invoke-interface {p5}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    :goto_0
    return-object v9

    :catch_0
    move-exception v8

    :try_start_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v1, "Could not update cache entry"

    invoke-virtual {v0, v1, v8}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p5}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p5}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    throw v0
.end method

.method private handleCacheHit(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    invoke-virtual {p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v8

    invoke-direct {p0, v8, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->recordCacheHit(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;)V

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->getCurrentDate()Ljava/util/Date;

    move-result-object v6

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->suitabilityChecker:Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;

    invoke-virtual {v0, v8, p2, p5, v6}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->canCachedResponseBeUsed(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v1, "Cache hit"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    invoke-direct {p0, p2, p3, p5, v6}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->generateCachedResponse(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v7

    :goto_0
    const-string v0, "http.route"

    invoke-virtual {p3, v0, p1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "http.target_host"

    invoke-virtual {p3, v0, v8}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "http.request"

    invoke-virtual {p3, v0, p2}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "http.response"

    invoke-virtual {p3, v0, v7}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "http.request_sent"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, v0, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v7

    :goto_1
    return-object v0

    :cond_0
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->mayCallBackend(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v1, "Cache entry not suitable but only-if-cached requested"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    invoke-direct {p0, p3}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->generateGatewayTimeout(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v7

    goto :goto_0

    :cond_1
    invoke-virtual {p5}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getStatusCode()I

    move-result v0

    const/16 v1, 0x130

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->suitabilityChecker:Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;

    invoke-virtual {v0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->isConditional(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v1, "Revalidating cache entry"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->revalidateCacheEntry(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v1, "Cache entry not usable; calling backend"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->callBackend(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v0

    goto :goto_1
.end method

.method private handleCacheMiss(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    invoke-virtual {p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->recordCacheMiss(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;)V

    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->mayCallBackend(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;

    sget-object v1, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    const/16 v2, 0x1f8

    const-string v3, "Gateway Timeout"

    invoke-direct {v0, v1, v2, v3}, Lcz/msebera/android/httpclient/message/BasicHttpResponse;-><init>(Lcz/msebera/android/httpclient/ProtocolVersion;ILjava/lang/String;)V

    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/client/cache/Proxies;->enhanceResponse(Lcz/msebera/android/httpclient/HttpResponse;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v6, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->getExistingCacheVariants(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->negotiateResponseFromVariants(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;Ljava/util/Map;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->callBackend(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v0

    goto :goto_0
.end method

.method private handleRevalidationFailure(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 1

    invoke-direct {p0, p1, p3, p4}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->staleResponseNotAllowed(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->generateGatewayTimeout(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->unvalidatedCacheHit(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v0

    goto :goto_0
.end method

.method private mayCallBackend(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;)Z
    .locals 10

    const-string v8, "Cache-Control"

    invoke-virtual {p1, v8}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

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

    const-string v8, "only-if-cached"

    invoke-interface {v2}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v9, "Request marked only-if-cached"

    invoke-virtual {v8, v9}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    const/4 v8, 0x0

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
    const/4 v8, 0x1

    goto :goto_2
.end method

.method private recordCacheHit(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;)V
    .locals 4

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheHits:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache hit [host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private recordCacheMiss(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;)V
    .locals 4

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheMisses:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache miss [host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private recordCacheUpdate(Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    sget-object v0, Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;->VALIDATED:Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->setResponseStatus(Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;)V

    return-void
.end method

.method private retryRequestUnconditionally(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->conditionalRequestBuilder:Lcz/msebera/android/httpclient/impl/client/cache/ConditionalRequestBuilder;

    invoke-virtual {v1, p2, p5}, Lcz/msebera/android/httpclient/impl/client/cache/ConditionalRequestBuilder;->buildUnconditionalRequest(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3, p4}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->callBackend(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v1

    return-object v1
.end method

.method private revalidateCacheEntry(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->asynchRevalidator:Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p5, p6}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->staleResponseNotAllowed(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->validityPolicy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v0, p5, p6}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->mayReturnStaleWhileRevalidating(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v1, "Serving stale with asynchronous revalidation"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    invoke-direct {p0, p2, p3, p5, p6}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->generateCachedResponse(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v8

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->asynchRevalidator:Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;->revalidateCacheEntry(Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)V

    :goto_0
    return-object v8

    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->revalidateCacheEntry(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-direct {p0, p2, p3, p5, p6}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->handleRevalidationFailure(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v8

    goto :goto_0
.end method

.method private revalidationResponseIsTooOld(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .locals 6

    const/4 v4, 0x0

    const-string v5, "Date"

    invoke-virtual {p2, v5}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    const-string v5, "Date"

    invoke-interface {p1, v5}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v3

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    invoke-interface {v1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-interface {v3}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method private satisfyFromCache(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseCache:Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;

    invoke-interface {v2, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;->getCacheEntry(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v3, "Unable to retrieve entries from cache"

    invoke-virtual {v2, v3, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setResponseStatus(Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "http.cache.response.status"

    invoke-interface {p1, v0, p2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private shouldSendNotModifiedResponse(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->suitabilityChecker:Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->isConditional(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->suitabilityChecker:Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p1, p2, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->allConditionalsMatch(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private staleIfErrorAppliesTo(I)Z
    .locals 1

    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1f6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1f7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1f8

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private staleResponseNotAllowed(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->validityPolicy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->mustRevalidate(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheConfig:Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->isSharedCache()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->validityPolicy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->proxyRevalidate(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->explicitFreshnessRequest(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private storeRequestIfModifiedSinceFor304Response(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)V
    .locals 3

    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0x130

    if-ne v1, v2, :cond_0

    const-string v1, "If-Modified-Since"

    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Last-Modified"

    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcz/msebera/android/httpclient/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private tryToUpdateVariantMap(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/impl/client/cache/Variant;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseCache:Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;

    invoke-interface {v1, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;->reuseVariantEntryFor(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/impl/client/cache/Variant;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "Could not update cache entry to reuse variant"

    invoke-virtual {v1, v2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private unvalidatedCacheHit(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 3

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseGenerator:Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;

    invoke-virtual {v1, p1, p3}, Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;->generateResponse(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v0

    sget-object v1, Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;->CACHE_HIT:Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;

    invoke-direct {p0, p2, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->setResponseStatus(Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;)V

    const-string v1, "Warning"

    const-string v2, "111 localhost \"Revalidation failed\""

    invoke-interface {v0, v1, v2}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method callBackend(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->getCurrentDate()Ljava/util/Date;

    move-result-object v3

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v1, "Calling the backend"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->backend:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    invoke-interface {v0, p1, p2, p3, p4}, Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;->execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v5

    :try_start_0
    const-string v0, "Via"

    invoke-direct {p0, v5}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->generateViaHeader(Lcz/msebera/android/httpclient/HttpMessage;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->getCurrentDate()Ljava/util/Date;

    move-result-object v4

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->handleBackendResponse(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Ljava/util/Date;Ljava/util/Date;Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v6

    invoke-interface {v5}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    throw v6

    :catch_1
    move-exception v6

    invoke-interface {v5}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    throw v6
.end method

.method clientRequestsOurOptions(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    const-string v2, "OPTIONS"

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "*"

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "0"

    const-string v3, "Max-Forwards"

    invoke-interface {p1, v3}, Lcz/msebera/android/httpclient/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v3

    invoke-interface {v3}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    invoke-static {}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->create()Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    invoke-virtual {p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v7

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getOriginal()Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->generateViaHeader(Lcz/msebera/android/httpclient/HttpMessage;)Ljava/lang/String;

    move-result-object v8

    sget-object v0, Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;->CACHE_MISS:Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;

    invoke-direct {p0, p3, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->setResponseStatus(Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;)V

    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->clientRequestsOurOptions(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;->CACHE_MODULE_RESPONSE:Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;

    invoke-direct {p0, p3, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->setResponseStatus(Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;)V

    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/OptionsHttp11Response;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/cache/OptionsHttp11Response;-><init>()V

    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/client/cache/Proxies;->enhanceResponse(Lcz/msebera/android/httpclient/HttpResponse;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p2, p3}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->getFatallyNoncompliantResponse(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {v6}, Lcz/msebera/android/httpclient/impl/client/cache/Proxies;->enhanceResponse(Lcz/msebera/android/httpclient/HttpResponse;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->requestCompliance:Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;

    invoke-virtual {v0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->makeRequestCompliant(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;)V

    const-string v0, "Via"

    invoke-virtual {p2, v0, v8}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->flushEntriesInvalidatedByRequest(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;)V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheableRequestPolicy:Lcz/msebera/android/httpclient/impl/client/cache/CacheableRequestPolicy;

    invoke-virtual {v0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheableRequestPolicy;->isServableFromCache(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v1, "Request is not servable from cache"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->callBackend(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, v7, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->satisfyFromCache(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    move-result-object v5

    if-nez v5, :cond_3

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v1, "Cache miss"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->handleCacheMiss(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->handleCacheHit(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public getCacheHits()J
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheHits:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheMisses()J
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheMisses:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheUpdates()J
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method getCurrentDate()Ljava/util/Date;
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method

.method handleBackendResponse(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Ljava/util/Date;Ljava/util/Date;Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "Handling Backend response"

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseCompliance:Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;

    invoke-virtual {v0, p1, p5}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;->ensureProtocolCompliance(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/HttpResponse;)V

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseCachingPolicy:Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;

    invoke-virtual {v0, p1, p5}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->isResponseCacheable(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v6

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseCache:Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;

    invoke-interface {v0, v1, p1, p5}, Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;->flushInvalidatedCacheEntriesFor(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)V

    if-eqz v6, :cond_1

    invoke-direct {p0, v1, p1, p5}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->alreadyHaveNewerCacheEntry(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p5}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->storeRequestIfModifiedSinceFor304Response(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseCache:Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;

    move-object v2, p1

    move-object v3, p5

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;->cacheAndReturnResponse(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;Ljava/util/Date;Ljava/util/Date;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object p5

    :cond_0
    :goto_0
    return-object p5

    :cond_1
    if-nez v6, :cond_0

    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseCache:Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;

    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;->flushCacheEntriesFor(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "Unable to flush invalid cache entries"

    invoke-virtual {v0, v2, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method negotiateResponseFromVariants(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;Ljava/util/Map;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
            "Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;",
            "Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;",
            "Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/impl/client/cache/Variant;",
            ">;)",
            "Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->conditionalRequestBuilder:Lcz/msebera/android/httpclient/impl/client/cache/ConditionalRequestBuilder;

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {v3, v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/ConditionalRequestBuilder;->buildConditionalRequestFromVariants(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Ljava/util/Map;)Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->getCurrentDate()Ljava/util/Date;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->backend:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-interface {v3, v0, v5, v1, v2}, Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;->execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v8

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->getCurrentDate()Ljava/util/Date;

    move-result-object v7

    const-string v3, "Via"

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->generateViaHeader(Lcz/msebera/android/httpclient/HttpMessage;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v3, v4}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0x130

    if-eq v3, v4, :cond_1

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v3 .. v8}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->handleBackendResponse(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Ljava/util/Date;Ljava/util/Date;Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v16

    :cond_0
    :goto_0
    return-object v16

    :cond_1
    const-string v3, "ETag"

    invoke-interface {v8, v3}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v19

    if-nez v19, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v4, "304 response did not contain ETag"

    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->warn(Ljava/lang/Object;)V

    invoke-interface {v8}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Lcz/msebera/android/httpclient/impl/client/cache/IOUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    invoke-interface {v8}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    invoke-virtual/range {p0 .. p4}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->callBackend(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v16

    goto :goto_0

    :cond_2
    invoke-interface/range {v19 .. v19}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcz/msebera/android/httpclient/impl/client/cache/Variant;

    if-nez v9, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v4, "304 response did not contain ETag matching one sent in If-None-Match"

    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    invoke-interface {v8}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Lcz/msebera/android/httpclient/impl/client/cache/IOUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    invoke-interface {v8}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    invoke-virtual/range {p0 .. p4}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->callBackend(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v16

    goto :goto_0

    :cond_3
    invoke-virtual {v9}, Lcz/msebera/android/httpclient/impl/client/cache/Variant;->getEntry()Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->revalidationResponseIsTooOld(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v8}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Lcz/msebera/android/httpclient/impl/client/cache/IOUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    invoke-interface {v8}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-direct/range {v9 .. v14}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->retryRequestUnconditionally(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v16

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->recordCacheUpdate(Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    invoke-virtual/range {p3 .. p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v4

    move-object/from16 v3, p0

    move-object v10, v14

    invoke-direct/range {v3 .. v10}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->getUpdatedVariantEntry(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Ljava/util/Date;Ljava/util/Date;Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;Lcz/msebera/android/httpclient/impl/client/cache/Variant;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    move-result-object v17

    invoke-interface {v8}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseGenerator:Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;->generateResponse(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1, v9}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->tryToUpdateVariantMap(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/impl/client/cache/Variant;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->shouldSendNotModifiedResponse(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseGenerator:Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;->generateNotModifiedResponse(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v16

    goto/16 :goto_0

    :catch_0
    move-exception v15

    invoke-interface {v8}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    throw v15

    :catch_1
    move-exception v15

    invoke-interface {v8}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    throw v15
.end method

.method revalidateCacheEntry(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->conditionalRequestBuilder:Lcz/msebera/android/httpclient/impl/client/cache/ConditionalRequestBuilder;

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {v4, v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/ConditionalRequestBuilder;->buildConditionalRequest(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;

    move-result-object v12

    invoke-virtual {v12}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v22

    if-eqz v22, :cond_0

    :try_start_0
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURIForRoute(Ljava/net/URI;Lcz/msebera/android/httpclient/conn/routing/RouteInfo;)Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->setURI(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->getCurrentDate()Ljava/util/Date;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->backend:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-interface {v4, v0, v12, v1, v2}, Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;->execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->getCurrentDate()Ljava/util/Date;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v8, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->revalidationResponseIsTooOld(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v8}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->conditionalRequestBuilder:Lcz/msebera/android/httpclient/impl/client/cache/ConditionalRequestBuilder;

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {v4, v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/ConditionalRequestBuilder;->buildUnconditionalRequest(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->getCurrentDate()Ljava/util/Date;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->backend:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-interface {v4, v0, v1, v2, v3}, Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;->execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->getCurrentDate()Ljava/util/Date;

    move-result-object v10

    :cond_1
    const-string v4, "Via"

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->generateViaHeader(Lcz/msebera/android/httpclient/HttpMessage;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v4, v5}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v19

    const/16 v4, 0x130

    move/from16 v0, v19

    if-eq v0, v4, :cond_2

    const/16 v4, 0xc8

    move/from16 v0, v19

    if-ne v0, v4, :cond_3

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->recordCacheUpdate(Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    :cond_3
    const/16 v4, 0x130

    move/from16 v0, v19

    if-ne v0, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseCache:Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;

    invoke-virtual/range {p3 .. p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v5

    move-object/from16 v6, p2

    move-object/from16 v7, p5

    invoke-interface/range {v4 .. v10}, Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;->updateCacheEntry(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Lcz/msebera/android/httpclient/HttpResponse;Ljava/util/Date;Ljava/util/Date;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->suitabilityChecker:Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->isConditional(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->suitabilityChecker:Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1, v5}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->allConditionalsMatch(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseGenerator:Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;->generateNotModifiedResponse(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v17

    :goto_0
    return-object v17

    :catch_0
    move-exception v18

    new-instance v4, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-direct {v4, v5, v0}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseGenerator:Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;->generateResponse(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v17

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->staleIfErrorAppliesTo(I)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->getCurrentDate()Ljava/util/Date;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2, v4}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->staleResponseNotAllowed(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v4

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->validityPolicy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {v4, v0, v1, v10}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->mayReturnStaleIfError(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_6

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseGenerator:Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {v4, v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;->generateResponse(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v17

    const-string v4, "Warning"

    const-string v5, "110 localhost \"Response is stale\""

    move-object/from16 v0, v17

    invoke-interface {v0, v4, v5}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v8}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-interface {v8}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    throw v4

    :cond_6
    move-object/from16 v11, p0

    move-object/from16 v13, p3

    move-object v14, v9

    move-object v15, v10

    move-object/from16 v16, v8

    invoke-virtual/range {v11 .. v16}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->handleBackendResponse(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Ljava/util/Date;Ljava/util/Date;Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v17

    goto :goto_0
.end method

.method public supportsRangeAndContentRangeHeaders()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
