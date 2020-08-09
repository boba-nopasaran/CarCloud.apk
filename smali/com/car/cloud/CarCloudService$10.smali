.class Lcom/car/cloud/CarCloudService$10;
.super Lcom/car/cloud/WebSocketUtil$ReplyHandler;
.source "CarCloudService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/CarCloudService;->try2SendMsgAlarm(Ljava/util/List;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/CarCloudService;

.field final synthetic val$mi:Lcom/car/cloud/Type$MsgInfo;


# direct methods
.method constructor <init>(Lcom/car/cloud/CarCloudService;Lcom/car/cloud/Type$MsgInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/CarCloudService$10;->this$0:Lcom/car/cloud/CarCloudService;

    iput-object p2, p0, Lcom/car/cloud/CarCloudService$10;->val$mi:Lcom/car/cloud/Type$MsgInfo;

    invoke-direct {p0}, Lcom/car/cloud/WebSocketUtil$ReplyHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public cloudReply(ILorg/json/JSONObject;[B)V
    .locals 8

    const-wide/16 v6, -0x2

    iget-object v4, p0, Lcom/car/cloud/CarCloudService$10;->val$mi:Lcom/car/cloud/Type$MsgInfo;

    iget-wide v4, v4, Lcom/car/cloud/Type$MsgInfo;->msgIndex:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const-string v4, "ro.oem.customer"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ECAR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v2, 0x1

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/car/cloud/CarCloudService$10;->val$mi:Lcom/car/cloud/Type$MsgInfo;

    iget-object v4, v4, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/car/cloud/CarCloudService$10;->val$mi:Lcom/car/cloud/Type$MsgInfo;

    iget-wide v4, v4, Lcom/car/cloud/Type$MsgInfo;->msgIndex:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    const-string v4, "alarmType"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "alarmType"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/16 v4, 0xb

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.car.monitor.notify"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "operation"

    const-string v5, "capd"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "id"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "percent"

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "result"

    iget-object v5, p0, Lcom/car/cloud/CarCloudService$10;->val$mi:Lcom/car/cloud/Type$MsgInfo;

    iget-object v5, v5, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "CarSvc_CarCloudService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "monitor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/car/cloud/CarCloudService$10;->val$mi:Lcom/car/cloud/Type$MsgInfo;

    iget-object v6, v6, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/car/cloud/CarCloudService$10;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v4, v0}, Lcom/car/cloud/CarCloudService;->sendBroadcast(Landroid/content/Intent;)V

    const-wide/16 v4, 0xbb8

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    :cond_2
    iget-object v4, p0, Lcom/car/cloud/CarCloudService$10;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/car/cloud/CarCloudService;->keepAwake(Z)V

    return-void

    :catch_0
    move-exception v4

    goto :goto_0
.end method
