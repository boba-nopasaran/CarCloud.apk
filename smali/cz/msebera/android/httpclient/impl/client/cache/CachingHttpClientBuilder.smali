.class public Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;
.super Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
.source "CachingHttpClientBuilder.java"


# instance fields
.field private cacheConfig:Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

.field private cacheDir:Ljava/io/File;

.field private deleteCache:Z

.field private httpCacheInvalidator:Lcz/msebera/android/httpclient/client/cache/HttpCacheInvalidator;

.field private resourceFactory:Lcz/msebera/android/httpclient/client/cache/ResourceFactory;

.field private schedulingStrategy:Lcz/msebera/android/httpclient/impl/client/cache/SchedulingStrategy;

.field private storage:Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->deleteCache:Z

    return-void
.end method

.method public static create()Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;-><init>()V

    return-object v0
.end method

.method private createAsynchronousRevalidator(Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;
    .locals 3

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->getAsynchronousWorkersMax()I

    move-result v2

    if-lez v2, :cond_0

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->createSchedulingStrategy(Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)Lcz/msebera/android/httpclient/impl/client/cache/SchedulingStrategy;

    move-result-object v0

    new-instance v1, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;

    invoke-direct {v1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;-><init>(Lcz/msebera/android/httpclient/impl/client/cache/SchedulingStrategy;)V

    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->addCloseable(Ljava/io/Closeable;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createSchedulingStrategy(Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)Lcz/msebera/android/httpclient/impl/client/cache/SchedulingStrategy;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->schedulingStrategy:Lcz/msebera/android/httpclient/impl/client/cache/SchedulingStrategy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->schedulingStrategy:Lcz/msebera/android/httpclient/impl/client/cache/SchedulingStrategy;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/ImmediateSchedulingStrategy;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/ImmediateSchedulingStrategy;-><init>(Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V

    goto :goto_0
.end method


# virtual methods
.method protected decorateMainExec(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;)Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    .locals 9

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->cacheConfig:Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->cacheConfig:Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    :goto_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->resourceFactory:Lcz/msebera/android/httpclient/client/cache/ResourceFactory;

    if-nez v1, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->cacheDir:Ljava/io/File;

    if-nez v0, :cond_4

    new-instance v1, Lcz/msebera/android/httpclient/impl/client/cache/HeapResourceFactory;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/client/cache/HeapResourceFactory;-><init>()V

    :cond_0
    :goto_1
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->storage:Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;

    if-nez v2, :cond_1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->cacheDir:Ljava/io/File;

    if-nez v0, :cond_5

    new-instance v2, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCacheStorage;

    invoke-direct {v2, v3}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCacheStorage;-><init>(Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V

    :cond_1
    :goto_2
    invoke-direct {p0, v3}, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->createAsynchronousRevalidator(Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;

    move-result-object v7

    new-instance v4, Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;

    invoke-direct {v4}, Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;-><init>()V

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->httpCacheInvalidator:Lcz/msebera/android/httpclient/client/cache/HttpCacheInvalidator;

    if-nez v5, :cond_2

    new-instance v5, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;

    invoke-direct {v5, v4, v2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;-><init>(Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;)V

    :cond_2
    new-instance v8, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;

    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;

    invoke-direct/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;-><init>(Lcz/msebera/android/httpclient/client/cache/ResourceFactory;Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;Lcz/msebera/android/httpclient/client/cache/HttpCacheInvalidator;)V

    invoke-direct {v8, p1, v0, v3, v7}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;)V

    return-object v8

    :cond_3
    sget-object v3, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->DEFAULT:Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    goto :goto_0

    :cond_4
    new-instance v1, Lcz/msebera/android/httpclient/impl/client/cache/FileResourceFactory;

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->cacheDir:Ljava/io/File;

    invoke-direct {v1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/FileResourceFactory;-><init>(Ljava/io/File;)V

    goto :goto_1

    :cond_5
    new-instance v6, Lcz/msebera/android/httpclient/impl/client/cache/ManagedHttpCacheStorage;

    invoke-direct {v6, v3}, Lcz/msebera/android/httpclient/impl/client/cache/ManagedHttpCacheStorage;-><init>(Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->deleteCache:Z

    if-eqz v0, :cond_6

    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder$1;

    invoke-direct {v0, p0, v6}, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder$1;-><init>(Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;Lcz/msebera/android/httpclient/impl/client/cache/ManagedHttpCacheStorage;)V

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->addCloseable(Ljava/io/Closeable;)V

    :goto_3
    move-object v2, v6

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v6}, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->addCloseable(Ljava/io/Closeable;)V

    goto :goto_3
.end method

.method public final setCacheConfig(Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->cacheConfig:Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    return-object p0
.end method

.method public final setCacheDir(Ljava/io/File;)Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->cacheDir:Ljava/io/File;

    return-object p0
.end method

.method public setDeleteCache(Z)Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;
    .locals 0

    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->deleteCache:Z

    return-object p0
.end method

.method public final setHttpCacheInvalidator(Lcz/msebera/android/httpclient/client/cache/HttpCacheInvalidator;)Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->httpCacheInvalidator:Lcz/msebera/android/httpclient/client/cache/HttpCacheInvalidator;

    return-object p0
.end method

.method public final setHttpCacheStorage(Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;)Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->storage:Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;

    return-object p0
.end method

.method public final setResourceFactory(Lcz/msebera/android/httpclient/client/cache/ResourceFactory;)Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->resourceFactory:Lcz/msebera/android/httpclient/client/cache/ResourceFactory;

    return-object p0
.end method

.method public final setSchedulingStrategy(Lcz/msebera/android/httpclient/impl/client/cache/SchedulingStrategy;)Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingHttpClientBuilder;->schedulingStrategy:Lcz/msebera/android/httpclient/impl/client/cache/SchedulingStrategy;

    return-object p0
.end method
