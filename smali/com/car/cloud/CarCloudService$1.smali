.class Lcom/car/cloud/CarCloudService$1;
.super Lcom/car/common/ICarCloud$Stub;
.source "CarCloudService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/cloud/CarCloudService;
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

    iput-object p1, p0, Lcom/car/cloud/CarCloudService$1;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-direct {p0}, Lcom/car/common/ICarCloud$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public deviceOnline()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$1;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v0}, Lcom/car/cloud/CarCloudService;->getLoginWebServer()Z

    move-result v0

    return v0
.end method

.method public getCloudId()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$1;->this$0:Lcom/car/cloud/CarCloudService;

    const-string v1, "cloud"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/car/cloud/CarCloudService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "id"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUserListAsync()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/car/cloud/WebSocketUtil;->getBondList(Z)V

    return v1
.end method

.method public getUserStatus()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/car/cloud/CarCloudService$1;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v5}, Lcom/car/cloud/CarCloudService;->access$000(Lcom/car/cloud/CarCloudService;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-le v5, v6, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_2
    const-string v5, "}"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public registerCallback(Lcom/car/common/ICarCloudCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$1;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v0, p1}, Lcom/car/cloud/CarCloudService;->registerRemoteCallback(Lcom/car/common/ICarCloudCallback;)V

    return-void
.end method

.method public removeUser(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/car/cloud/WebSocketUtil;->removeBond(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public unregisterCallback(Lcom/car/common/ICarCloudCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$1;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v0, p1}, Lcom/car/cloud/CarCloudService;->unregisterRemoteCallback(Lcom/car/common/ICarCloudCallback;)V

    return-void
.end method

.method public userOnline(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$1;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v0, p1}, Lcom/car/cloud/CarCloudService;->getUserOnlineStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
