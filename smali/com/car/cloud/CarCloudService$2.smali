.class Lcom/car/cloud/CarCloudService$2;
.super Landroid/os/Handler;
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

    iput-object p1, p0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_3

    const/16 v2, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/car/cloud/CarCloudService$2;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v2}, Lcom/car/cloud/CarCloudService;->access$100(Lcom/car/cloud/CarCloudService;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v2}, Lcom/car/cloud/CarCloudService;->access$200(Lcom/car/cloud/CarCloudService;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v2

    invoke-static {}, Lcom/car/cloud/CarCloudService;->access$300()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/car/cloud/WebSocketUtil;->openWebSocket(Ljava/lang/String;)V

    const/16 v2, 0x6c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/car/cloud/CarCloudService$2;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x6c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/car/cloud/CarCloudService$2;->removeMessages(I)V

    :cond_1
    const/16 v2, 0x6c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/car/cloud/CarCloudService$2;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x70

    if-ne v2, v3, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    iget-wide v2, v2, Lcom/car/cloud/CarCloudService;->mLastAirplaneTime:J

    sub-long v2, v16, v2

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v2, v2, Lcom/car/cloud/CarCloudService;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    const-wide/32 v4, 0x2bf20

    invoke-virtual {v2, v4, v5}, Lcom/car/common/util/MyWakeLock;->setTimeOut(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v2, v2, Lcom/car/cloud/CarCloudService;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/car/common/util/MyWakeLock;->keepAwake(Z)V

    const/16 v2, 0x70

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/car/cloud/CarCloudService$2;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.car.modem_off"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/car/cloud/CarCloudService;->sendBroadcast(Landroid/content/Intent;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.car.modem_on"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/car/cloud/CarCloudService;->sendBroadcast(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/car/cloud/CarCloudService;->mLastAirplaneTime:J

    goto :goto_0

    :cond_4
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x65

    if-ne v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    const-wide/32 v4, 0x5265c00

    const-class v6, Lcom/car/cloud/CarCloudService;

    const-string v7, "com.car.cloud.RemindVersion"

    invoke-static/range {v2 .. v7}, Lcom/car/cloud/CarCloudService;->access$400(Lcom/car/cloud/CarCloudService;Landroid/content/Context;JLjava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x66

    if-ne v2, v3, :cond_6

    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v2

    invoke-static {}, Lcom/car/cloud/CarCloudService;->access$500()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/car/cloud/CarCloudService;->access$600()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/car/cloud/CarCloudService;->access$700()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/car/cloud/WebSocketUtil;->deviceLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x67

    if-ne v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v2}, Lcom/car/cloud/CarCloudService;->forceWakeLockReleased()V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x68

    if-ne v2, v3, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    const-string v2, "CarSvc_CarCloudService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device\'s runningTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x69

    if-ne v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v2}, Lcom/car/cloud/CarCloudService;->reSendAlarmMsg()V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x6e

    if-ne v2, v3, :cond_c

    const/16 v2, 0x6e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/car/cloud/CarCloudService$2;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v2, v2, Lcom/car/cloud/CarCloudService;->mBindDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v9

    if-eqz v9, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v3}, Lcom/car/cloud/CarCloudService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    iget v3, v3, Lcom/car/cloud/CarCloudService;->mBindCountDown:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    iget v3, v2, Lcom/car/cloud/CarCloudService;->mBindCountDown:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/car/cloud/CarCloudService;->mBindCountDown:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    iget v2, v2, Lcom/car/cloud/CarCloudService;->mBindCountDown:I

    if-gtz v2, :cond_b

    invoke-virtual {v9}, Landroid/widget/Button;->performClick()Z

    invoke-static {}, Lcom/car/common/TipPlayerHelper;->instance()Lcom/car/common/TipPlayerHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v3}, Lcom/car/cloud/CarCloudService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/car/common/TipPlayerHelper;->playSpeech(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0x6e

    const-wide/16 v4, 0x3e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/car/cloud/CarCloudService$2;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x6a

    if-ne v2, v3, :cond_f

    const/16 v2, 0x6a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/car/cloud/CarCloudService$2;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v2, v2, Lcom/car/cloud/CarCloudService;->mPickupDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v9

    if-eqz v9, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v3}, Lcom/car/cloud/CarCloudService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    iget v3, v3, Lcom/car/cloud/CarCloudService;->mPickupCountDown:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    iget v3, v2, Lcom/car/cloud/CarCloudService;->mPickupCountDown:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/car/cloud/CarCloudService;->mPickupCountDown:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    iget v2, v2, Lcom/car/cloud/CarCloudService;->mPickupCountDown:I

    if-gtz v2, :cond_e

    invoke-virtual {v9}, Landroid/widget/Button;->performClick()Z

    goto/16 :goto_0

    :cond_e
    const/16 v2, 0x6a

    const-wide/16 v4, 0x3e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/car/cloud/CarCloudService$2;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x6b

    if-ne v2, v3, :cond_10

    const/16 v2, 0x6b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/car/cloud/CarCloudService$2;->removeMessages(I)V

    const-string v2, "CarSvc_CarCloudService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_TRY2SHOW_BUND_DLG, mLoginWebServer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$800(Lcom/car/cloud/CarCloudService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v2}, Lcom/car/cloud/CarCloudService;->access$800(Lcom/car/cloud/CarCloudService;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    sget-object v3, Lcom/car/cloud/CloudMsgProvider;->URI_USER:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/car/cloud/CloudMsgProviderUtils;->getAllUserList(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v20

    const-string v2, "CarSvc_CarCloudService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v2}, Lcom/car/cloud/CarCloudService;->access$900(Lcom/car/cloud/CarCloudService;)V

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_12

    const-wide/32 v12, 0x1b7740

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    const-string v3, "live"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/car/cloud/CarCloudService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pingtime"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    sub-long v2, v10, v14

    cmp-long v2, v2, v12

    if-lez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/car/cloud/CarCloudService;->access$1000(Lcom/car/cloud/CarCloudService;I)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v2}, Lcom/car/cloud/CarCloudService;->testServers()V

    :cond_11
    const/16 v2, 0x6c

    const-wide/32 v4, 0x493e0

    add-long/2addr v4, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/car/cloud/CarCloudService$2;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x6d

    if-ne v2, v3, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    iget-boolean v2, v2, Lcom/car/cloud/CarCloudService;->mMuteRecover:Z

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/car/cloud/CarCloudService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    iget v2, v2, Lcom/car/cloud/CarCloudService;->mTtsStreamType:I

    invoke-virtual {v8, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    iget v2, v2, Lcom/car/cloud/CarCloudService;->mTtsStreamType:I

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/car/cloud/CarCloudService;->mMuteRecover:Z

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/car/cloud/CarCloudService;->keepAwake(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v2}, Lcom/car/cloud/CarCloudService;->doStopLive()V

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x6f

    if-ne v2, v3, :cond_2

    const/16 v2, 0x6f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/car/cloud/CarCloudService$2;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudService$2;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v2}, Lcom/car/cloud/CarCloudService;->needRelogin()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x6f

    const-wide/32 v4, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/car/cloud/CarCloudService$2;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method
