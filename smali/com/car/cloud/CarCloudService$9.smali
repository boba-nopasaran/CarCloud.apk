.class Lcom/car/cloud/CarCloudService$9;
.super Landroid/content/BroadcastReceiver;
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

    iput-object p1, p0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 47

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.car.uploadgps"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v5}, Lcom/car/cloud/CarCloudService;->access$1500(Lcom/car/cloud/CarCloudService;)Lcom/car/cloud/CarCloudGPSDataUploadThread;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v5}, Lcom/car/cloud/CarCloudService;->access$1500(Lcom/car/cloud/CarCloudService;)Lcom/car/cloud/CarCloudGPSDataUploadThread;

    move-result-object v5

    invoke-virtual {v5}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->uploadGpsZip()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "com.car.lowvoltage"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    const/16 v6, 0xd

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/car/cloud/CarCloudService;->alarmNotify(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v5, "com.car.fakebtn.first"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v5, v5, Lcom/car/cloud/CarCloudService;->mBindDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v5, v5, Lcom/car/cloud/CarCloudService;->mBindDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v5, v5, Lcom/car/cloud/CarCloudService;->mBindDialog:Landroid/app/AlertDialog;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Button;->performClick()Z

    invoke-static {}, Lcom/car/common/TipPlayerHelper;->instance()Lcom/car/common/TipPlayerHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v6}, Lcom/car/cloud/CarCloudService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06001b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/car/common/TipPlayerHelper;->playSpeech(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    new-instance v27, Landroid/content/Intent;

    const-string v5, "com.car.fakebtn.second"

    move-object/from16 v0, v27

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/car/cloud/CarCloudService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v5, "com.car.ad.show"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "video"

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v31

    const-string v5, "path"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    if-eqz v40, :cond_0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    const-string v5, "timeout"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v45

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    move/from16 v0, v31

    move-object/from16 v1, v40

    move/from16 v2, v45

    invoke-virtual {v5, v0, v1, v2}, Lcom/car/cloud/CarCloudService;->ADisplay(ZLjava/lang/String;I)V

    goto/16 :goto_0

    :cond_5
    const-string v5, "com.car.monitor"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "operation"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string v5, "id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/16 v6, 0x0

    cmp-long v5, v8, v6

    if-nez v5, :cond_6

    const-string v5, "id"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    int-to-long v8, v5

    :cond_6
    const-string v5, "cam"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string v5, "length"

    const/16 v6, 0xa

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const-string v5, "length_forward"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const-string v5, "nosound"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v34

    const-wide/16 v6, 0x0

    cmp-long v5, v8, v6

    if-lez v5, :cond_0

    if-eqz v35, :cond_0

    const-string v5, "image"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v6, 0x4

    const/4 v7, 0x0

    if-eqz v34, :cond_7

    const/4 v11, 0x1

    :goto_1
    invoke-virtual/range {v5 .. v11}, Lcom/car/cloud/CarCloudService;->alarmNotify(ILjava/lang/String;JII)V

    goto/16 :goto_0

    :cond_7
    const/4 v11, 0x0

    goto :goto_1

    :cond_8
    const-string v5, "video"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v6, 0x5

    const/4 v7, 0x0

    const-string v13, ""

    invoke-virtual/range {v5 .. v13}, Lcom/car/cloud/CarCloudService;->alarmNotify(ILjava/lang/String;JIIILjava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    const-string v5, "status"

    const/4 v6, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v44

    const/4 v5, 0x2

    move/from16 v0, v44

    if-eq v0, v5, :cond_a

    const/4 v5, 0x5

    move/from16 v0, v44

    if-ne v0, v5, :cond_f

    :cond_a
    const/16 v29, 0x1

    :goto_2
    if-eqz v29, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    iget-boolean v5, v5, Lcom/car/cloud/CarCloudService;->mIsCharging:Z

    move/from16 v0, v29

    if-eq v5, v0, :cond_e

    const-string v5, "CarSvc_CarCloudService"

    const-string v6, "ACC is on, notify car\'s owner"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v36

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    iget-wide v6, v5, Lcom/car/cloud/CarCloudService;->mLastTimeOfAccOn:J

    const-wide/16 v14, 0x0

    cmp-long v5, v6, v14

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    iget-wide v6, v5, Lcom/car/cloud/CarCloudService;->mLastTimeOfAccOn:J

    sub-long v6, v36, v6

    const-wide/16 v14, 0x7530

    cmp-long v5, v6, v14

    if-ltz v5, :cond_e

    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/car/cloud/CarCloudService;->mLastTimeOfAccOn:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/car/cloud/CarCloudService;->alarmNotify(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v5, v5, Lcom/car/cloud/CarCloudService;->mMyAdManager:Lcom/car/cloud/MyAdManager;

    if-eqz v5, :cond_e

    invoke-static {}, Lcom/car/ad/ADManager;->instance()Lcom/car/ad/ADManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/car/ad/ADManager;->getADList()Ljava/util/List;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_e

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_c
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/car/ad/ADItem;

    const-string v5, "CarSvc_CarCloudService"

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/car/ad/ADItem;->position:Ljava/lang/String;

    const-string v6, "mirror_wakeup"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/car/ad/ADItem;->adfile:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/car/ad/ADItem;->adfile:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".jpeg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/car/ad/ADItem;->adfile:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_d
    const/16 v30, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    if-nez v30, :cond_11

    const/4 v5, 0x1

    :goto_4
    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/car/ad/ADItem;->adfile:Ljava/lang/String;

    move-object/from16 v0, v22

    iget v13, v0, Lcom/car/ad/ADItem;->duration:I

    invoke-virtual {v6, v5, v7, v13}, Lcom/car/cloud/CarCloudService;->ADisplay(ZLjava/lang/String;I)V

    invoke-static {}, Lcom/car/ad/ADManager;->instance()Lcom/car/ad/ADManager;

    move-result-object v5

    move-object/from16 v0, v22

    iget-wide v6, v0, Lcom/car/ad/ADItem;->adid:J

    const/4 v13, 0x0

    invoke-virtual {v5, v6, v7, v13}, Lcom/car/ad/ADManager;->reportAD(JI)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    move/from16 v0, v29

    iput-boolean v0, v5, Lcom/car/cloud/CarCloudService;->mIsCharging:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    iget-boolean v5, v5, Lcom/car/cloud/CarCloudService;->mIsCharging:Z

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    iget-boolean v5, v5, Lcom/car/cloud/CarCloudService;->mMuteRecover:Z

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Lcom/car/cloud/CarCloudService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    iget v5, v5, Lcom/car/cloud/CarCloudService;->mTtsStreamType:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    iget v5, v5, Lcom/car/cloud/CarCloudService;->mTtsStreamType:I

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/car/cloud/CarCloudService;->mMuteRecover:Z

    goto/16 :goto_0

    :cond_f
    const/16 v29, 0x0

    goto/16 :goto_2

    :cond_10
    const/16 v30, 0x0

    goto :goto_3

    :cond_11
    const/4 v5, 0x0

    goto :goto_4

    :cond_12
    const-string v5, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    const-string v5, "persist.car.acc.off.img"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/car/cloud/CarCloudService;->alarmNotify(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    const-string v5, "com.car.gotosleep"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/car/cloud/CarCloudService;->mSuspendNow:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    iget-boolean v6, v6, Lcom/car/cloud/CarCloudService;->mSuspendNow:Z

    invoke-virtual {v5, v6}, Lcom/car/cloud/CarCloudService;->devReportSuspend(Z)V

    goto/16 :goto_0

    :cond_14
    const-string v5, "com.car.syswakeup"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const-string v5, "reason"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    if-eqz v42, :cond_0

    const-string v5, "gsensor"

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    const-string v5, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/PowerManager;

    invoke-virtual/range {v41 .. v41}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v5, "CarSvc_CarCloudService"

    const-string v6, "pm.isInteractive, invalid gsensor wakeup."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_15
    const-string v5, "CarSvc_CarCloudService"

    const-string v6, "Monitor Alarm"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "ro.car.wakeupimg"

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/car/cloud/CarCloudService;->alarmNotify(ILjava/lang/String;)V

    :cond_16
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Lcom/car/cloud/CarCloudService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    iget v5, v5, Lcom/car/cloud/CarCloudService;->mTtsStreamType:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v5

    if-nez v5, :cond_17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    iget v5, v5, Lcom/car/cloud/CarCloudService;->mTtsStreamType:I

    const/4 v6, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/car/cloud/CarCloudService;->mMuteRecover:Z

    :cond_17
    const-string v5, "modem"

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/car/cloud/CarCloudService;->mSuspendNow:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    iget-boolean v6, v6, Lcom/car/cloud/CarCloudService;->mSuspendNow:Z

    invoke-virtual {v5, v6}, Lcom/car/cloud/CarCloudService;->devReportSuspend(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/car/cloud/CarCloudService;->access$1802(Lcom/car/cloud/CarCloudService;I)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v5}, Lcom/car/cloud/CarCloudService;->access$1700(Lcom/car/cloud/CarCloudService;)Landroid/os/Handler;

    move-result-object v5

    const/16 v13, 0x6b

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v6}, Lcom/car/cloud/CarCloudService;->access$800(Lcom/car/cloud/CarCloudService;)Z

    move-result v6

    if-eqz v6, :cond_19

    const-wide/16 v6, 0x7d0

    :goto_6
    invoke-virtual {v5, v13, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_18
    const-string v5, "persist.video.wakeup.params"

    const-string v6, "1,0,15"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    array-length v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    const/16 v14, 0xb

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/4 v5, 0x0

    aget-object v5, v39, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/4 v5, 0x1

    aget-object v5, v39, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/4 v5, 0x2

    aget-object v5, v39, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const-string v21, ""

    invoke-virtual/range {v13 .. v21}, Lcom/car/cloud/CarCloudService;->alarmNotify(ILjava/lang/String;JIIILjava/lang/String;)V

    goto/16 :goto_5

    :cond_19
    const-wide/16 v6, 0x3a98

    goto :goto_6

    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    iget-boolean v5, v5, Lcom/car/cloud/CarCloudService;->mSuspendNow:Z

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/car/cloud/CarCloudService;->mSuspendNow:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    iget-boolean v6, v6, Lcom/car/cloud/CarCloudService;->mSuspendNow:Z

    invoke-virtual {v5, v6}, Lcom/car/cloud/CarCloudService;->devReportSuspend(Z)V

    goto/16 :goto_0

    :cond_1b
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    iget-boolean v5, v5, Lcom/car/cloud/CarCloudService;->mSuspendNow:Z

    if-eqz v5, :cond_1c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/car/cloud/CarCloudService;->mSuspendNow:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    iget-boolean v6, v6, Lcom/car/cloud/CarCloudService;->mSuspendNow:Z

    invoke-virtual {v5, v6}, Lcom/car/cloud/CarCloudService;->devReportSuspend(Z)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    iget-boolean v5, v5, Lcom/car/cloud/CarCloudService;->mMuteRecover:Z

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Lcom/car/cloud/CarCloudService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    iget v5, v5, Lcom/car/cloud/CarCloudService;->mTtsStreamType:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    iget v5, v5, Lcom/car/cloud/CarCloudService;->mTtsStreamType:I

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/car/cloud/CarCloudService;->mMuteRecover:Z

    goto/16 :goto_0

    :cond_1d
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    iget-boolean v5, v5, Lcom/car/cloud/CarCloudService;->mSuspendNow:Z

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v5}, Lcom/car/cloud/CarCloudService;->access$1900(Lcom/car/cloud/CarCloudService;)Ljava/util/List;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_0

    const-string v5, "CarSvc_CarCloudService"

    const-string v6, "Workaround to gurantee device\'s suspend"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/car/cloud/CarCloudService;->mSuspendNow:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    iget-boolean v6, v6, Lcom/car/cloud/CarCloudService;->mSuspendNow:Z

    invoke-virtual {v5, v6}, Lcom/car/cloud/CarCloudService;->devReportSuspend(Z)V

    goto/16 :goto_0

    :cond_1e
    const-string v5, "com.car.launcher.FORCE_REBOOT"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.car.ping"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    const-string v5, "host"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/car/cloud/CarCloudService;->testServer(Ljava/lang/String;)J

    goto/16 :goto_0

    :cond_1f
    const-string v5, "com.car.f10.pressed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    const-string v5, "down"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v25

    const-string v5, "repeatCount"

    const/4 v6, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v43

    const-string v5, "CarSvc_CarCloudService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "F10, down:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", repeatCount:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v25, :cond_0

    if-nez v43, :cond_0

    const-string v5, "ro.car.sosimg"

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/car/cloud/CarCloudService;->alarmNotify(ILjava/lang/String;)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    const-string v6, "SOS"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/car/cloud/CarCloudService;->alarmNotify(ILjava/lang/String;)V

    goto :goto_7

    :cond_21
    const-string v5, "com.car.videorecorder.recording_time_changed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    const-string v5, "recording_camera"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v33

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    iget v5, v5, Lcom/car/cloud/CarCloudService;->mLiveCameraList:I

    move/from16 v0, v33

    if-eq v5, v0, :cond_0

    const-string v5, "CarSvc_CarCloudService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Change mLiveCameraList from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    iget v7, v7, Lcom/car/cloud/CarCloudService;->mLiveCameraList:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    move/from16 v0, v33

    iput v0, v5, Lcom/car/cloud/CarCloudService;->mLiveCameraList:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v5}, Lcom/car/cloud/CarCloudService;->notifyLivingCameraStatus()V

    goto/16 :goto_0

    :cond_22
    const-string v5, "com.car.usersdel"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    const-string v5, "usersdel"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-static {}, Lcom/car/common/TipPlayerHelper;->instance()Lcom/car/common/TipPlayerHelper;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v46

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    const v13, 0x7f060020

    invoke-virtual {v7, v13}, Lcom/car/cloud/CarCloudService;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Lcom/car/common/TipPlayerHelper;->playSpeech(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_23
    const-string v5, "com.car.feeddog"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/car/cloud/WebSocketUtil;->sendKeepAliveNow()V

    goto/16 :goto_0

    :cond_24
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$9;->this$0:Lcom/car/cloud/CarCloudService;

    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lcom/car/cloud/CarCloudService;->access$2000(Lcom/car/cloud/CarCloudService;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
