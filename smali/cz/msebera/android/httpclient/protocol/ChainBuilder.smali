.class final Lcz/msebera/android/httpclient/protocol/ChainBuilder;
.super Ljava/lang/Object;
.source "ChainBuilder.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final list:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final uniqueClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->list:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->uniqueClasses:Ljava/util/Map;

    return-void
.end method

.method private ensureUnique(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v1, p0, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->uniqueClasses:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->list:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->uniqueClasses:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addAllFirst(Ljava/util/Collection;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TE;>;)",
            "Lcz/msebera/android/httpclient/protocol/ChainBuilder",
            "<TE;>;"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-object p0

    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->addFirst(Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    goto :goto_0
.end method

.method public varargs addAllFirst([Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcz/msebera/android/httpclient/protocol/ChainBuilder",
            "<TE;>;"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-object p0

    :cond_1
    move-object v0, p1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->addFirst(Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public addAllLast(Ljava/util/Collection;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TE;>;)",
            "Lcz/msebera/android/httpclient/protocol/ChainBuilder",
            "<TE;>;"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-object p0

    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->addLast(Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    goto :goto_0
.end method

.method public varargs addAllLast([Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcz/msebera/android/httpclient/protocol/ChainBuilder",
            "<TE;>;"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-object p0

    :cond_1
    move-object v0, p1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->addLast(Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public addFirst(Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcz/msebera/android/httpclient/protocol/ChainBuilder",
            "<TE;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->ensureUnique(Ljava/lang/Object;)V

    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public addLast(Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcz/msebera/android/httpclient/protocol/ChainBuilder",
            "<TE;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->ensureUnique(Ljava/lang/Object;)V

    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public build()Ljava/util/LinkedList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->list:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
