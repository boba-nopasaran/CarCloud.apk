.class Lcom/car/cloud/CarCloudActivity$1;
.super Ljava/lang/Object;
.source "CarCloudActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/cloud/CarCloudActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/CarCloudActivity;


# direct methods
.method constructor <init>(Lcom/car/cloud/CarCloudActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/CarCloudActivity$1;->this$0:Lcom/car/cloud/CarCloudActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v1, p0, Lcom/car/cloud/CarCloudActivity$1;->this$0:Lcom/car/cloud/CarCloudActivity;

    invoke-static {p2}, Lcom/car/common/ICarCloud$Stub;->asInterface(Landroid/os/IBinder;)Lcom/car/common/ICarCloud;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/car/cloud/CarCloudActivity;->access$002(Lcom/car/cloud/CarCloudActivity;Lcom/car/common/ICarCloud;)Lcom/car/common/ICarCloud;

    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/car/cloud/CarCloudActivity$1;->this$0:Lcom/car/cloud/CarCloudActivity;

    invoke-static {v2}, Lcom/car/cloud/CarCloudActivity;->access$100(Lcom/car/cloud/CarCloudActivity;)Lcom/car/cloud/CarCloudActivity$MyCloudCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/car/cloud/WebSocketUtil;->registerCallback(Lcom/car/cloud/WebSocketCallback;)V

    :try_start_0
    iget-object v1, p0, Lcom/car/cloud/CarCloudActivity$1;->this$0:Lcom/car/cloud/CarCloudActivity;

    invoke-static {v1}, Lcom/car/cloud/CarCloudActivity;->access$000(Lcom/car/cloud/CarCloudActivity;)Lcom/car/common/ICarCloud;

    move-result-object v1

    invoke-interface {v1}, Lcom/car/common/ICarCloud;->deviceOnline()Z

    move-result v0

    iget-object v1, p0, Lcom/car/cloud/CarCloudActivity$1;->this$0:Lcom/car/cloud/CarCloudActivity;

    invoke-static {v1, v0}, Lcom/car/cloud/CarCloudActivity;->access$200(Lcom/car/cloud/CarCloudActivity;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/car/cloud/CarCloudActivity$1;->this$0:Lcom/car/cloud/CarCloudActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/car/cloud/CarCloudActivity;->access$002(Lcom/car/cloud/CarCloudActivity;Lcom/car/common/ICarCloud;)Lcom/car/common/ICarCloud;

    return-void
.end method
