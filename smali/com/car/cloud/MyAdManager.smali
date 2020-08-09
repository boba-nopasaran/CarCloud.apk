.class public Lcom/car/cloud/MyAdManager;
.super Ljava/lang/Object;
.source "MyAdManager.java"

# interfaces
.implements Lcom/car/ad/IADClient;
.implements Lcom/car/ad/ADManager$ADStatusListener;


# instance fields
.field mContext:Landroid/content/Context;

.field mIdFromCloud:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/car/cloud/MyAdManager;->mIdFromCloud:J

    return-void
.end method


# virtual methods
.method public getClientADDirPath()Ljava/lang/String;
    .locals 3

    const-string v1, "/sdcard/carcloud"

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    return-object v1
.end method

.method public getClientCity()Ljava/lang/String;
    .locals 2

    const-string v0, "persist.sys.car.city"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientID()J
    .locals 2

    iget-wide v0, p0, Lcom/car/cloud/MyAdManager;->mIdFromCloud:J

    return-wide v0
.end method

.method public getClientModel()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.product.model"

    const-string v1, "default"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientTime()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getClientToken()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/car/cloud/MyAdManager;->getClientID()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/car/cloud/WebSocketUtil;->nativeGetHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method init(Landroid/content/Context;)Lcom/car/cloud/MyAdManager;
    .locals 4

    iput-object p1, p0, Lcom/car/cloud/MyAdManager;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/car/ad/ADManager;->initialize(Landroid/content/Context;Lcom/car/ad/IADClient;)V

    invoke-static {}, Lcom/car/ad/ADManager;->instance()Lcom/car/ad/ADManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/car/ad/ADManager;->registADStatusListener(Lcom/car/ad/ADManager$ADStatusListener;)V

    iget-object v0, p0, Lcom/car/cloud/MyAdManager;->mContext:Landroid/content/Context;

    const-string v1, "cloud"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "id"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/car/cloud/MyAdManager;->mIdFromCloud:J

    return-object p0
.end method

.method public onADStatusChange()V
    .locals 8

    const/4 v4, 0x0

    invoke-static {}, Lcom/car/ad/ADManager;->instance()Lcom/car/ad/ADManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/car/ad/ADManager;->getADList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/ad/ADItem;

    iget-object v5, v0, Lcom/car/ad/ADItem;->position:Ljava/lang/String;

    const-string v6, "mirror_poweron"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/car/ad/ADItem;->adfile:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v0, Lcom/car/ad/ADItem;->adfile:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".jpeg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v0, Lcom/car/ad/ADItem;->adfile:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_0

    iget-object v5, p0, Lcom/car/cloud/MyAdManager;->mContext:Landroid/content/Context;

    const-string v6, "cloud"

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "adid"

    iget-wide v6, v0, Lcom/car/ad/ADItem;->adid:J

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v4, "persist.cm7.bootanim.url"

    iget-object v5, v0, Lcom/car/ad/ADItem;->adfile:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/car/cloud/MyAdManager;->mContext:Landroid/content/Context;

    const-string v6, "cloud"

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "adid"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v4, "persist.cm7.bootanim.url"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setId(J)V
    .locals 5

    iget-wide v0, p0, Lcom/car/cloud/MyAdManager;->mIdFromCloud:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/cloud/MyAdManager;->mContext:Landroid/content/Context;

    const-string v1, "cloud"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-wide p1, p0, Lcom/car/cloud/MyAdManager;->mIdFromCloud:J

    :cond_0
    return-void
.end method
