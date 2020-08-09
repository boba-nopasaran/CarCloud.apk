.class public Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;
.super Ljava/lang/Object;
.source "RouteSpecificPool.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final connPerRoute:Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;

.field protected final freeEntries:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field protected final maxEntries:I

.field protected numEntries:I

.field protected final route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

.field protected final waitingThreads:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    iput p2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->maxEntries:I

    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool$1;

    invoke-direct {v0, p0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool$1;-><init>(Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->connPerRoute:Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;

    const/4 v0, 0x0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->connPerRoute:Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;

    invoke-interface {p2, p1}, Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;->getMaxForRoute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->maxEntries:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;

    const/4 v0, 0x0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    return-void
.end method


# virtual methods
.method public allocEntry(Ljava/lang/Object;)Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;
    .locals 6

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->getState()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->getState()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v4}, Lcz/msebera/android/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    :goto_0
    return-object v1

    :cond_2
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->getCapacity()I

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->shutdownEntry()V

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v5, "I/O error closing connection"

    invoke-virtual {v4, v5, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createdEntry(Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;)V
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->getPlannedRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Entry not planned for this pool"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->check(ZLjava/lang/String;)V

    iget v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    return-void
.end method

.method public deleteEntry(Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;)Z
    .locals 2

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    :cond_0
    return v0
.end method

.method public dropEntry()V
    .locals 2

    iget v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "There is no entry that could be dropped"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    iget v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public freeEntry(Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;)V
    .locals 3

    iget v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No entry created for this pool. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-gt v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No entry allocated from this pool. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCapacity()I
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->connPerRoute:Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;->getMaxForRoute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)I

    move-result v0

    iget v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getEntryCount()I
    .locals 1

    iget v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    return v0
.end method

.method public final getMaxEntries()I
    .locals 1

    iget v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->maxEntries:I

    return v0
.end method

.method public final getRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    return-object v0
.end method

.method public hasThread()Z
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnused()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    if-ge v1, v0, :cond_0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextThread()Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;

    return-object v0
.end method

.method public queueThread(Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;)V
    .locals 1

    const-string v0, "Waiting thread"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeThread(Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
