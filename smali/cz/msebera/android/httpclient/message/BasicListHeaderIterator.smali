.class public Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;
.super Ljava/lang/Object;
.source "BasicListHeaderIterator.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HeaderIterator;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation


# instance fields
.field protected final allHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/Header;",
            ">;"
        }
    .end annotation
.end field

.field protected currentIndex:I

.field protected headerName:Ljava/lang/String;

.field protected lastIndex:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/Header;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Header list"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;

    iput-object p2, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->headerName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->findNext(I)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->currentIndex:I

    iput v1, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->lastIndex:I

    return-void
.end method


# virtual methods
.method protected filterHeader(I)Z
    .locals 2

    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->headerName:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/Header;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->headerName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method protected findNext(I)I
    .locals 5

    const/4 v3, -0x1

    move v1, p1

    if-ge v1, v3, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    if-ge v1, v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->filterHeader(I)Z

    move-result v0

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->currentIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->nextHeader()Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public nextHeader()Lcz/msebera/android/httpclient/Header;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    iget v0, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->currentIndex:I

    if-gez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Iteration already finished."

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput v0, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->lastIndex:I

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->findNext(I)I

    move-result v1

    iput v1, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->currentIndex:I

    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/Header;

    return-object v1
.end method

.method public remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    iget v0, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->lastIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "No header to remove"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;

    iget v1, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->lastIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->lastIndex:I

    iget v0, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->currentIndex:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
