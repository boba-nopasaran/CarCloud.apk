.class Lcom/car/cloud/CarCloudService$6;
.super Lcom/car/cloud/WebSocketUtil$ReplyHandler;
.source "CarCloudService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/CarCloudService;->devReportSuspend(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/CarCloudService;

.field final synthetic val$suspend:Z


# direct methods
.method constructor <init>(Lcom/car/cloud/CarCloudService;Z)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/CarCloudService$6;->this$0:Lcom/car/cloud/CarCloudService;

    iput-boolean p2, p0, Lcom/car/cloud/CarCloudService$6;->val$suspend:Z

    invoke-direct {p0}, Lcom/car/cloud/WebSocketUtil$ReplyHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public cloudReply(ILorg/json/JSONObject;[B)V
    .locals 7

    const-string v4, "CarSvc_CarCloudService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Report suspend status succeed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/car/cloud/CarCloudService$6;->val$suspend:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/car/cloud/Type$LoginInfo;->parseLoginInfo(Lorg/json/JSONObject;)Lcom/car/cloud/Type$LoginInfo;

    move-result-object v2

    iget v4, v2, Lcom/car/cloud/Type$LoginInfo;->ret:I

    if-nez v4, :cond_1

    iget v1, v2, Lcom/car/cloud/Type$LoginInfo;->lastgpstime:I

    iget v0, v2, Lcom/car/cloud/Type$LoginInfo;->gpsinterval:I

    iget-object v4, p0, Lcom/car/cloud/CarCloudService$6;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$1500(Lcom/car/cloud/CarCloudService;)Lcom/car/cloud/CarCloudGPSDataUploadThread;

    move-result-object v4

    if-eqz v4, :cond_1

    if-nez v0, :cond_0

    const v0, 0x7ffffffe

    :cond_0
    iget-object v4, p0, Lcom/car/cloud/CarCloudService$6;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$1500(Lcom/car/cloud/CarCloudService;)Lcom/car/cloud/CarCloudGPSDataUploadThread;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->setGPSUpdateInterval(I)V

    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.car.cloud.suspend"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "suspend"

    iget-boolean v5, p0, Lcom/car/cloud/CarCloudService$6;->val$suspend:Z

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v4, p0, Lcom/car/cloud/CarCloudService$6;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v4, v3}, Lcom/car/cloud/CarCloudService;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v4, p0, Lcom/car/cloud/CarCloudService$6;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/car/cloud/CarCloudService;->keepAwake(Z)V

    return-void
.end method
