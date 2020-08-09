.class public Lcz/msebera/android/httpclient/impl/client/AIMDBackoffManager;
.super Ljava/lang/Object;
.source "AIMDBackoffManager.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/BackoffManager;


# instance fields
.field private backoffFactor:D

.field private cap:I

.field private final clock:Lcz/msebera/android/httpclient/impl/client/Clock;

.field private final connPerRoute:Lcz/msebera/android/httpclient/pool/ConnPoolControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/pool/ConnPoolControl",
            "<",
            "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
            ">;"
        }
    .end annotation
.end field

.field private coolDown:J

.field private final lastRouteBackoffs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final lastRouteProbes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/pool/ConnPoolControl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/pool/ConnPoolControl",
            "<",
            "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcz/msebera/android/httpclient/impl/client/SystemClock;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/SystemClock;-><init>()V

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/client/AIMDBackoffManager;-><init>(Lcz/msebera/android/httpclient/pool/ConnPoolControl;Lcz/msebera/android/httpclient/impl/client/Clock;)V

    return-void
.end method

.method constructor <init>(Lcz/msebera/android/httpclient/pool/ConnPoolControl;Lcz/msebera/android/httpclient/impl/client/Clock;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/pool/ConnPoolControl",
            "<",
            "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
            ">;",
            "Lcz/msebera/android/httpclient/impl/client/Clock;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/AIMDBackoffManager;->coolDown:J

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/AIMDBackoffManager;->backoffFactor:D

    const/4 v0, 0x2

    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/AIMDBackoffManager;->cap:I

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/AIMDBackoffManager;->clock:Lcz/msebera/android/httpclient/impl/client/Clock;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/AIMDBackoffManager;->connPerRoute:Lcz/msebera/android/httpclient/pool/ConnPoolControl;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AIMDBackoffManager;->lastRouteProbes:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AIMDBackoffManager;->lastRouteBackoffs:Ljava/util/Map;

    return-void
.end method

.method private getBackedOffPoolSize(I)I
    .locals 4

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/AIMDBackoffManager;->backoffFactor:D

    int-to-double v2, p1

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method private getLastUpdate(Ljava/util/Map;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)Ljava/lang/Long;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
            "Ljava/lang/Long;",
            ">;",
            "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
            ")",
            "Ljava/lang/Long;"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public backOff(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V
    .locals 10

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/AIMDBackoffManager;->connPerRoute:Lcz/msebera/android/httpclient/pool/ConnPoolControl;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/AIMDBackoffManager;->connPerRoute:Lcz/msebera/android/httpclient/pool/ConnPoolControl;

    invoke-interface {v4, p1}, Lcz/msebera/android/httpclient/pool/ConnPoolControl;->getMaxPerRoute(Ljava/lang/Object;)I

    move-result v0

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/AIMDBackoffManager;->lastRouteBackoffs:Ljava/util/Map;

    invoke-direct {p0, v4, p1}, Lcz/msebera/android/httpclient/impl/client/AIMDBackoffManager;->getLastUpdate(Ljava/util/Map;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)Ljava/lang/Long;

    move-result-object v1

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/AIMDBackoffManager;->clock:Lcz/msebera/android/httpclient/impl/client/Clock;

    invoke-interface {v4}, Lcz/msebera/android/httpclient/impl/client/Clock;->getCurrentTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v2, v6

    iget-wide v8, p0, Lcz/msebera/android/httpclient/impl/client/AIMDBackoffManager;->coolDown:J

    cmp-long v4, v6, v8

    if-gez v4, :cond_0

    monitor-exit v5

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/AIMDBackoffManager;->connPerRoute:Lcz/msebera/android/httpclient/pool/ConnPoolControl;

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/client/AIMDBackoffManager;->getBackedOffPoolSize(I)I

    move-result v6

    invoke-interface {v4, p1, v6}, Lcz/msebera/android/httpclient/pool/ConnPoolControl;->setMaxPerRoute(Ljava/lang/Object;I)V

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/AIMDBackoffManager;->lastRouteBackoffs:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public probe(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V
    .locals 12

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/AIMDBackoffManager;->connPerRoute:Lcz/msebera/android/httpclient/pool/ConnPoolControl;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/AIMDBackoffManager;->connPerRoute:Lcz/msebera/android/httpclient/pool/ConnPoolControl;

    invoke-interface {v6, p1}, Lcz/msebera/android/httpclient/pool/ConnPoolControl;->getMaxPerRoute(Ljava/lang/Object;)I

    move-result v0

    iget v6, p0, Lcz/msebera/android/httpclient/impl/client/AIMDBackoffManager;->cap:I

    if-lt v0, v6, :cond_1

    iget v3, p0, Lcz/msebera/android/httpclient/impl/client/AIMDBackoffManager;->cap:I

    :goto_0
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/AIMDBackoffManager;->lastRouteProbes:Ljava/util/Map;

    invoke-direct {p0, v6, p1}, Lcz/msebera/android/httpclient/impl/client/AIMDBackoffManager;->getLastUpdate(Ljava/util/Map;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)Ljava/lang/Long;

    move-result-object v2

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/AIMDBackoffManager;->lastRouteBackoffs:Ljava/util/Map;

    invoke-direct {p0, v6, p1}, Lcz/msebera/android/httpclient/impl/client/AIMDBackoffManager;->getLastUpdate(Ljava/util/Map;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)Ljava/lang/Long;

    move-result-object v1

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/AIMDBackoffManager;->clock:Lcz/msebera/android/httpclient/impl/client/Clock;

    invoke-interface {v6}, Lcz/msebera/android/httpclient/impl/client/Clock;->getCurrentTime()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v8, v4, v8

    iget-wide v10, p0, Lcz/msebera/android/httpclient/impl/client/AIMDBackoffManager;->coolDown:J

    cmp-long v6, v8, v10

    if-ltz v6, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v8, v4, v8

    iget-wide v10, p0, Lcz/msebera/android/httpclient/impl/client/AIMDBackoffManager;->coolDown:J

    cmp-long v6, v8, v10

    if-gez v6, :cond_2

    :cond_0
    monitor-exit v7

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v3, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/AIMDBackoffManager;->connPerRoute:Lcz/msebera/android/httpclient/pool/ConnPoolControl;

    invoke-interface {v6, p1, v3}, Lcz/msebera/android/httpclient/pool/ConnPoolControl;->setMaxPerRoute(Ljava/lang/Object;I)V

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/AIMDBackoffManager;->lastRouteProbes:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v7

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public setBackoffFactor(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Backoff factor must be 0.0 < f < 1.0"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->check(ZLjava/lang/String;)V

    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/client/AIMDBackoffManager;->backoffFactor:D

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCooldownMillis(J)V
    .locals 3

    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/AIMDBackoffManager;->coolDown:J

    const-string v2, "Cool down"

    invoke-static {v0, v1, v2}, Lcz/msebera/android/httpclient/util/Args;->positive(JLjava/lang/String;)J

    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/client/AIMDBackoffManager;->coolDown:J

    return-void
.end method

.method public setPerHostConnectionCap(I)V
    .locals 1

    const-string v0, "Per host connection cap"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->positive(ILjava/lang/String;)I

    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/AIMDBackoffManager;->cap:I

    return-void
.end method
