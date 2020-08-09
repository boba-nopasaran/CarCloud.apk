.class Lcom/car/cloud/CarCloudService$7;
.super Ljava/lang/Object;
.source "CarCloudService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/CarCloudService;->getOssList()V
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

    iput-object p1, p0, Lcom/car/cloud/CarCloudService$7;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v8, 0x0

    const-string v9, "oss.list.url"

    const-string v10, "http://api.carassist.cn/config/load?"

    invoke-static {v9, v10}, Lcom/car/common/OEM;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "osslist=1&oversea="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ro.market.area"

    const-string v11, "china"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "china"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    :goto_0
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/car/cloud/HttpRequestManager;->requestHttp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "CarSvc_CarCloudService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " return "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_3

    const-string v8, "CarSvc_CarCloudService"

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v7, Lorg/json/JSONTokener;

    invoke-direct {v7, v5}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    const-string v8, "ret"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    const-string v8, "osslist"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "osslist"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_3

    iget-object v8, p0, Lcom/car/cloud/CarCloudService$7;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, v8, Lcom/car/cloud/CarCloudService;->mOssListFromServer:[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_1

    iget-object v8, p0, Lcom/car/cloud/CarCloudService$7;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v8, v8, Lcom/car/cloud/CarCloudService;->mOssListFromServer:[Ljava/lang/String;

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "bucket"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/car/cloud/CarCloudService$7;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v8, v8, Lcom/car/cloud/CarCloudService;->mOssListFromServer:[Ljava/lang/String;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/car/cloud/CarCloudService$7;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v8, v8, Lcom/car/cloud/CarCloudService;->mOssListFromServer:[Ljava/lang/String;

    array-length v8, v8

    if-lez v8, :cond_4

    iget-object v8, p0, Lcom/car/cloud/CarCloudService$7;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v9, v8, Lcom/car/cloud/CarCloudService;->mOssLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v8, p0, Lcom/car/cloud/CarCloudService$7;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v8, v8, Lcom/car/cloud/CarCloudService;->mOssListFromServer:[Ljava/lang/String;

    invoke-static {v8}, Lcom/car/cloud/CarCloudService;->access$1602([Ljava/lang/String;)[Ljava/lang/String;

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v8, p0, Lcom/car/cloud/CarCloudService$7;->this$0:Lcom/car/cloud/CarCloudService;

    const-string v9, "live"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/car/cloud/CarCloudService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "pingtime"

    const-wide/16 v10, 0x0

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v8, p0, Lcom/car/cloud/CarCloudService$7;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v8}, Lcom/car/cloud/CarCloudService;->access$1700(Lcom/car/cloud/CarCloudService;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x6c

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/car/cloud/CarCloudService$7;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v8}, Lcom/car/cloud/CarCloudService;->access$1700(Lcom/car/cloud/CarCloudService;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x6c

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v8, p0, Lcom/car/cloud/CarCloudService$7;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v8}, Lcom/car/cloud/CarCloudService;->access$1700(Lcom/car/cloud/CarCloudService;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x6c

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_2
    return-void

    :catchall_0
    move-exception v8

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_4
    :try_start_5
    iget-object v8, p0, Lcom/car/cloud/CarCloudService$7;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/car/cloud/CarCloudService;->mOssListFromServer:[Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2
.end method
