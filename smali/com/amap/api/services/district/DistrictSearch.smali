.class public Lcom/amap/api/services/district/DistrictSearch;
.super Ljava/lang/Object;
.source "DistrictSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/services/interfaces/IDistrictSearch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/amap/api/services/a/h;->a(Z)Lcom/amap/api/services/a/bh;

    move-result-object v1

    const-string v2, "com.amap.api.services.dynamic.DistrictSearchWrapper"

    const-class v3, Lcom/amap/api/services/a/ao;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/amap/api/services/a/cj;->a(Landroid/content/Context;Lcom/amap/api/services/a/bh;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/interfaces/IDistrictSearch;

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;
    :try_end_0
    .catch Lcom/amap/api/services/a/ay; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Lcom/amap/api/services/a/ao;

    invoke-direct {v0, p1}, Lcom/amap/api/services/a/ao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/ay;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getQuery()Lcom/amap/api/services/district/DistrictSearchQuery;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IDistrictSearch;->getQuery()Lcom/amap/api/services/district/DistrictSearchQuery;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public searchDistrict()Lcom/amap/api/services/district/DistrictResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IDistrictSearch;->searchDistrict()Lcom/amap/api/services/district/DistrictResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public searchDistrictAnsy()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IDistrictSearch;->searchDistrictAnsy()V

    :cond_0
    return-void
.end method

.method public searchDistrictAsyn()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IDistrictSearch;->searchDistrictAsyn()V

    :cond_0
    return-void
.end method

.method public setOnDistrictSearchListener(Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IDistrictSearch;->setOnDistrictSearchListener(Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;)V

    :cond_0
    return-void
.end method

.method public setQuery(Lcom/amap/api/services/district/DistrictSearchQuery;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IDistrictSearch;->setQuery(Lcom/amap/api/services/district/DistrictSearchQuery;)V

    :cond_0
    return-void
.end method