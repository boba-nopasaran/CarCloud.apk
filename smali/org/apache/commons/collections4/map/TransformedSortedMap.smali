.class public Lorg/apache/commons/collections4/map/TransformedSortedMap;
.super Lorg/apache/commons/collections4/map/TransformedMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/TransformedMap",
        "<TK;TV;>;",
        "Ljava/util/SortedMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x797489f887c41572L


# direct methods
.method protected constructor <init>(Ljava/util/SortedMap;Lorg/apache/commons/collections4/q;Lorg/apache/commons/collections4/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Lorg/apache/commons/collections4/q",
            "<-TK;+TK;>;",
            "Lorg/apache/commons/collections4/q",
            "<-TV;+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/collections4/map/TransformedMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/q;Lorg/apache/commons/collections4/q;)V

    return-void
.end method

.method public static transformedSortedMap(Ljava/util/SortedMap;Lorg/apache/commons/collections4/q;Lorg/apache/commons/collections4/q;)Lorg/apache/commons/collections4/map/TransformedSortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Lorg/apache/commons/collections4/q",
            "<-TK;+TK;>;",
            "Lorg/apache/commons/collections4/q",
            "<-TV;+TV;>;)",
            "Lorg/apache/commons/collections4/map/TransformedSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/collections4/map/TransformedSortedMap;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/map/TransformedSortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections4/q;Lorg/apache/commons/collections4/q;)V

    invoke-interface {p0}, Ljava/util/SortedMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, p0}, Lorg/apache/commons/collections4/map/TransformedSortedMap;->transformMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/TransformedSortedMap;->clear()V

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/TransformedSortedMap;->decorated()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object v0
.end method

.method public static transformingSortedMap(Ljava/util/SortedMap;Lorg/apache/commons/collections4/q;Lorg/apache/commons/collections4/q;)Lorg/apache/commons/collections4/map/TransformedSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Lorg/apache/commons/collections4/q",
            "<-TK;+TK;>;",
            "Lorg/apache/commons/collections4/q",
            "<-TV;+TV;>;)",
            "Lorg/apache/commons/collections4/map/TransformedSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/collections4/map/TransformedSortedMap;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/map/TransformedSortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections4/q;Lorg/apache/commons/collections4/q;)V

    return-object v0
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/TransformedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/TransformedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getSortedMap()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/TransformedSortedMap;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/TransformedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/collections4/map/TransformedSortedMap;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/TransformedSortedMap;->keyTransformer:Lorg/apache/commons/collections4/q;

    iget-object v3, p0, Lorg/apache/commons/collections4/map/TransformedSortedMap;->valueTransformer:Lorg/apache/commons/collections4/q;

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/commons/collections4/map/TransformedSortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections4/q;Lorg/apache/commons/collections4/q;)V

    return-object v1
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/TransformedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/TransformedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/collections4/map/TransformedSortedMap;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/TransformedSortedMap;->keyTransformer:Lorg/apache/commons/collections4/q;

    iget-object v3, p0, Lorg/apache/commons/collections4/map/TransformedSortedMap;->valueTransformer:Lorg/apache/commons/collections4/q;

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/commons/collections4/map/TransformedSortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections4/q;Lorg/apache/commons/collections4/q;)V

    return-object v1
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/TransformedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/collections4/map/TransformedSortedMap;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/TransformedSortedMap;->keyTransformer:Lorg/apache/commons/collections4/q;

    iget-object v3, p0, Lorg/apache/commons/collections4/map/TransformedSortedMap;->valueTransformer:Lorg/apache/commons/collections4/q;

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/commons/collections4/map/TransformedSortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections4/q;Lorg/apache/commons/collections4/q;)V

    return-object v1
.end method
