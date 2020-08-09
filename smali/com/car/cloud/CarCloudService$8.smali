.class Lcom/car/cloud/CarCloudService$8;
.super Ljava/lang/Object;
.source "CarCloudService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/CarCloudService;->testServers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/CarCloudService;


# direct methods
.method constructor <init>(Lcom/car/cloud/CarCloudService;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/CarCloudService$8;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/car/cloud/CarCloudService;->access$1600()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-ge v0, v7, :cond_1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/car/cloud/CarCloudService$8;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v8, v7, Lcom/car/cloud/CarCloudService;->mOssLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    invoke-static {}, Lcom/car/cloud/CarCloudService;->access$1600()[Ljava/lang/String;

    move-result-object v7

    aget-object v6, v7, v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v7, p0, Lcom/car/cloud/CarCloudService$8;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v7, v6}, Lcom/car/cloud/CarCloudService;->testServer(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v7, v4, v2

    if-gez v7, :cond_0

    move-wide v2, v4

    move v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    :cond_1
    iget-object v7, p0, Lcom/car/cloud/CarCloudService$8;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v8, v7, Lcom/car/cloud/CarCloudService;->mOssLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_2
    invoke-static {}, Lcom/car/cloud/CarCloudService;->access$1600()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-ge v1, v7, :cond_2

    iget-object v7, p0, Lcom/car/cloud/CarCloudService$8;->this$0:Lcom/car/cloud/CarCloudService;

    const-string v9, "live"

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/car/cloud/CarCloudService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v9, "server"

    invoke-static {}, Lcom/car/cloud/CarCloudService;->access$1600()[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v1

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v9, "pingtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-interface {v7, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    monitor-exit v8

    return-void

    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v7
.end method
