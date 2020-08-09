.class public Lcz/msebera/android/httpclient/impl/client/cache/ImmediateSchedulingStrategy;
.super Ljava/lang/Object;
.source "ImmediateSchedulingStrategy.java"

# interfaces
.implements Lcz/msebera/android/httpclient/impl/client/cache/SchedulingStrategy;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/ThreadSafe;
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V
    .locals 8

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->getAsynchronousWorkersCore()I

    move-result v2

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->getAsynchronousWorkersMax()I

    move-result v3

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->getAsynchronousWorkerIdleLifetimeSecs()I

    move-result v0

    int-to-long v4, v0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->getRevalidationQueueSize()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    invoke-direct {p0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/ImmediateSchedulingStrategy;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/ImmediateSchedulingStrategy;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method awaitTermination(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/ImmediateSchedulingStrategy;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/ImmediateSchedulingStrategy;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public schedule(Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;)V
    .locals 1

    const-string v0, "AsynchronousValidationRequest"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/ImmediateSchedulingStrategy;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
