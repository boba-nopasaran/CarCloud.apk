.class public Lcz/msebera/android/httpclient/message/HeaderGroup;
.super Ljava/lang/Object;
.source "HeaderGroup.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x243470d8cecee2c1L


# instance fields
.field private final EMPTY:[Lcz/msebera/android/httpclient/Header;

.field private final headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/Header;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Lcz/msebera/android/httpclient/Header;

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->EMPTY:[Lcz/msebera/android/httpclient/Header;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->headers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addHeader(Lcz/msebera/android/httpclient/Header;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/Header;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public copy()Lcz/msebera/android/httpclient/message/HeaderGroup;
    .locals 3

    new-instance v0, Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/message/HeaderGroup;-><init>()V

    iget-object v1, v0, Lcz/msebera/android/httpclient/message/HeaderGroup;->headers:Ljava/util/List;

    iget-object v2, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getAllHeaders()[Lcz/msebera/android/httpclient/Header;
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->headers:Ljava/util/List;

    iget-object v1, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcz/msebera/android/httpclient/Header;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcz/msebera/android/httpclient/Header;

    return-object v0
.end method

.method public getCondensedHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/message/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    array-length v3, v0

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    array-length v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    aget-object v3, v0, v5

    goto :goto_0

    :cond_1
    new-instance v2, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    aget-object v3, v0, v5

    invoke-interface {v3}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    aget-object v3, v0, v1

    invoke-interface {v3}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance v3, Lcz/msebera/android/httpclient/message/BasicHeader;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcz/msebera/android/httpclient/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/Header;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/Header;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcz/msebera/android/httpclient/Header;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcz/msebera/android/httpclient/Header;

    :goto_1
    return-object v3

    :cond_3
    iget-object v3, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->EMPTY:[Lcz/msebera/android/httpclient/Header;

    goto :goto_1
.end method

.method public getLastHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;
    .locals 3

    iget-object v2, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/Header;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public iterator()Lcz/msebera/android/httpclient/HeaderIterator;
    .locals 3

    new-instance v0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;

    iget-object v1, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->headers:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public iterator(Ljava/lang/String;)Lcz/msebera/android/httpclient/HeaderIterator;
    .locals 2

    new-instance v0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;

    iget-object v1, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-direct {v0, v1, p1}, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public removeHeader(Lcz/msebera/android/httpclient/Header;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setHeaders([Lcz/msebera/android/httpclient/Header;)V
    .locals 1

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/message/HeaderGroup;->clear()V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateHeader(Lcz/msebera/android/httpclient/Header;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/Header;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
