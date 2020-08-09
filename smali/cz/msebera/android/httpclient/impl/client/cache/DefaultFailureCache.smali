.class public Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;
.super Ljava/lang/Object;
.source "DefaultFailureCache.java"

# interfaces
.implements Lcz/msebera/android/httpclient/impl/client/cache/FailureCache;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/ThreadSafe;
.end annotation


# static fields
.field static final DEFAULT_MAX_SIZE:I = 0x3e8

.field static final MAX_UPDATE_TRIES:I = 0xa


# instance fields
.field private final maxSize:I

.field private final storage:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->maxSize:I

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->storage:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private findValueWithOldestTimestamp()Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;
    .locals 9

    const-wide v4, 0x7fffffffffffffffL

    const/4 v3, 0x0

    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;

    invoke-virtual {v7}, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;->getCreationTimeInNanos()J

    move-result-wide v0

    cmp-long v8, v0, v4

    if-gez v8, :cond_0

    move-wide v4, v0

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private removeOldestEntryIfMapSizeExceeded()V
    .locals 3

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    iget v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->maxSize:I

    if-le v1, v2, :cond_0

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->findValueWithOldestTimestamp()Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private updateValue(Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    :goto_0
    const/16 v4, 0xa

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;

    if-nez v3, :cond_1

    new-instance v2, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;

    const/4 v4, 0x1

    invoke-direct {v2, p1, v4}, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;-><init>(Ljava/lang/String;I)V

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;->getErrorCount()I

    move-result v0

    const v4, 0x7fffffff

    if-eq v0, v4, :cond_0

    new-instance v2, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;

    add-int/lit8 v4, v0, 0x1

    invoke-direct {v2, p1, v4}, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;-><init>(Ljava/lang/String;I)V

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1, v3, v2}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getErrorCount(Ljava/lang/String;)I
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "identifier may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;->getErrorCount()I

    move-result v1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public increaseErrorCount(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "identifier may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->updateValue(Ljava/lang/String;)V

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->removeOldestEntryIfMapSizeExceeded()V

    return-void
.end method

.method public resetErrorCount(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "identifier may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
