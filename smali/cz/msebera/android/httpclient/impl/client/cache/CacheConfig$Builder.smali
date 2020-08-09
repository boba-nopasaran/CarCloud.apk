.class public Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;
.super Ljava/lang/Object;
.source "CacheConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private allow303Caching:Z

.field private asynchronousWorkerIdleLifetimeSecs:I

.field private asynchronousWorkersCore:I

.field private asynchronousWorkersMax:I

.field private heuristicCachingEnabled:Z

.field private heuristicCoefficient:F

.field private heuristicDefaultLifetime:J

.field private isSharedCache:Z

.field private maxCacheEntries:I

.field private maxObjectSize:J

.field private maxUpdateRetries:I

.field private neverCacheHTTP10ResponsesWithQuery:Z

.field private revalidationQueueSize:I

.field private weakETagOnPutDeleteAllowed:Z


# direct methods
.method constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2000

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->maxObjectSize:J

    const/16 v0, 0x3e8

    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->maxCacheEntries:I

    iput v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->maxUpdateRetries:I

    iput-boolean v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->allow303Caching:Z

    iput-boolean v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->weakETagOnPutDeleteAllowed:Z

    iput-boolean v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->heuristicCachingEnabled:Z

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->heuristicCoefficient:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->heuristicDefaultLifetime:J

    iput-boolean v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->isSharedCache:Z

    iput v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->asynchronousWorkersMax:I

    iput v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->asynchronousWorkersCore:I

    const/16 v0, 0x3c

    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->asynchronousWorkerIdleLifetimeSecs:I

    const/16 v0, 0x64

    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->revalidationQueueSize:I

    return-void
.end method


# virtual methods
.method public build()Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;
    .locals 20

    new-instance v3, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->maxObjectSize:J

    move-object/from16 v0, p0

    iget v6, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->maxCacheEntries:I

    move-object/from16 v0, p0

    iget v7, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->maxUpdateRetries:I

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->allow303Caching:Z

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->weakETagOnPutDeleteAllowed:Z

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->heuristicCachingEnabled:Z

    move-object/from16 v0, p0

    iget v11, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->heuristicCoefficient:F

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->heuristicDefaultLifetime:J

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->isSharedCache:Z

    move-object/from16 v0, p0

    iget v15, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->asynchronousWorkersMax:I

    move-object/from16 v0, p0

    iget v0, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->asynchronousWorkersCore:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->asynchronousWorkerIdleLifetimeSecs:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->revalidationQueueSize:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->neverCacheHTTP10ResponsesWithQuery:Z

    move/from16 v19, v0

    invoke-direct/range {v3 .. v19}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;-><init>(JIIZZZFJZIIIIZ)V

    return-object v3
.end method

.method public setAllow303Caching(Z)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->allow303Caching:Z

    return-object p0
.end method

.method public setAsynchronousWorkerIdleLifetimeSecs(I)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;
    .locals 0

    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->asynchronousWorkerIdleLifetimeSecs:I

    return-object p0
.end method

.method public setAsynchronousWorkersCore(I)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;
    .locals 0

    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->asynchronousWorkersCore:I

    return-object p0
.end method

.method public setAsynchronousWorkersMax(I)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;
    .locals 0

    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->asynchronousWorkersMax:I

    return-object p0
.end method

.method public setHeuristicCachingEnabled(Z)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->heuristicCachingEnabled:Z

    return-object p0
.end method

.method public setHeuristicCoefficient(F)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;
    .locals 0

    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->heuristicCoefficient:F

    return-object p0
.end method

.method public setHeuristicDefaultLifetime(J)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;
    .locals 1

    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->heuristicDefaultLifetime:J

    return-object p0
.end method

.method public setMaxCacheEntries(I)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;
    .locals 0

    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->maxCacheEntries:I

    return-object p0
.end method

.method public setMaxObjectSize(J)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;
    .locals 1

    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->maxObjectSize:J

    return-object p0
.end method

.method public setMaxUpdateRetries(I)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;
    .locals 0

    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->maxUpdateRetries:I

    return-object p0
.end method

.method public setNeverCacheHTTP10ResponsesWithQueryString(Z)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->neverCacheHTTP10ResponsesWithQuery:Z

    return-object p0
.end method

.method public setRevalidationQueueSize(I)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;
    .locals 0

    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->revalidationQueueSize:I

    return-object p0
.end method

.method public setSharedCache(Z)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->isSharedCache:Z

    return-object p0
.end method

.method public setWeakETagOnPutDeleteAllowed(Z)Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig$Builder;->weakETagOnPutDeleteAllowed:Z

    return-object p0
.end method
