.class final Lcom/car/cloud/CarCloudService$MyCloudCallback;
.super Lcom/car/cloud/CloudCallback;
.source "CarCloudService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/cloud/CarCloudService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyCloudCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/CarCloudService;


# direct methods
.method constructor <init>(Lcom/car/cloud/CarCloudService;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-direct {p0}, Lcom/car/cloud/CloudCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppointment(DDLjava/lang/String;)V
    .locals 11

    const-string v0, "CarSvc_CarCloudService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppointment:lng = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v0}, Lcom/car/cloud/CarCloudService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/car/common/TipPlayerHelper;->instance()Lcom/car/common/TipPlayerHelper;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v7, v1}, Lcom/car/common/TipPlayerHelper;->playSpeech(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v0, v0, Lcom/car/cloud/CarCloudService;->mPickupDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v0, v0, Lcom/car/cloud/CarCloudService;->mPickupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v0}, Lcom/car/cloud/CarCloudService;->access$1700(Lcom/car/cloud/CarCloudService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v0, v0, Lcom/car/cloud/CarCloudService;->mPickupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v8, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v0}, Lcom/car/cloud/CarCloudService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v0, Lcom/car/cloud/CarCloudService$MyCloudCallback$5;

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p1

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/car/cloud/CarCloudService$MyCloudCallback$5;-><init>(Lcom/car/cloud/CarCloudService$MyCloudCallback;DDLjava/lang/String;)V

    invoke-virtual {v9, v10, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v1}, Lcom/car/cloud/CarCloudService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/car/cloud/CarCloudService$MyCloudCallback$4;

    invoke-direct {v2, p0}, Lcom/car/cloud/CarCloudService$MyCloudCallback$4;-><init>(Lcom/car/cloud/CarCloudService$MyCloudCallback;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v8, Lcom/car/cloud/CarCloudService;->mPickupDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v0, v0, Lcom/car/cloud/CarCloudService;->mPickupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v0, v0, Lcom/car/cloud/CarCloudService;->mPickupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    const/16 v1, 0xa

    iput v1, v0, Lcom/car/cloud/CarCloudService;->mPickupCountDown:I

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v0}, Lcom/car/cloud/CarCloudService;->access$1700(Lcom/car/cloud/CarCloudService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onBondRequest(Lcom/car/cloud/Type$UserInfo;)V
    .locals 4

    const-string v1, "CarSvc_CarCloudService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUserRequestBond: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.cloud.userrequestbond"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "uuid"

    iget-object v2, p1, Lcom/car/cloud/Type$UserInfo;->unionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "nickname"

    iget-object v2, p1, Lcom/car/cloud/Type$UserInfo;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v1, v0}, Lcom/car/cloud/CarCloudService;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v1}, Lcom/car/cloud/CarCloudService;->access$1700(Lcom/car/cloud/CarCloudService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/car/cloud/CarCloudService$MyCloudCallback$1;

    invoke-direct {v2, p0, p1}, Lcom/car/cloud/CarCloudService$MyCloudCallback$1;-><init>(Lcom/car/cloud/CarCloudService$MyCloudCallback;Lcom/car/cloud/Type$UserInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGPSHistoryFileReceived(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "CarSvc_CarCloudService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGPSHistoryFileReceived:day = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/car/cloud/CarCloudService$MyCloudCallback$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/car/cloud/CarCloudService$MyCloudCallback$6;-><init>(Lcom/car/cloud/CarCloudService$MyCloudCallback;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onGpsIntervalSet(I)V
    .locals 3

    const-string v0, "CarSvc_CarCloudService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGpsIntervalSet:interval = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v0}, Lcom/car/cloud/CarCloudService;->access$1500(Lcom/car/cloud/CarCloudService;)Lcom/car/cloud/CarCloudGPSDataUploadThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v0}, Lcom/car/cloud/CarCloudService;->access$1500(Lcom/car/cloud/CarCloudService;)Lcom/car/cloud/CarCloudGPSDataUploadThread;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->setGPSUpdateInterval(I)V

    :cond_0
    return-void
.end method

.method public onLiveHeartbeat()V
    .locals 4

    const/16 v1, 0x6d

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v0}, Lcom/car/cloud/CarCloudService;->access$1700(Lcom/car/cloud/CarCloudService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v0}, Lcom/car/cloud/CarCloudService;->access$1700(Lcom/car/cloud/CarCloudService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onLonginStatus(Lcom/car/cloud/Type$LoginInfo;)V
    .locals 18

    const-string v11, "CarSvc_CarCloudService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onLonginStatus:info = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v14, 0x0

    invoke-static {v11, v14}, Lcom/car/cloud/CarCloudService;->access$802(Lcom/car/cloud/CarCloudService;Z)Z

    move-object/from16 v0, p1

    iget v11, v0, Lcom/car/cloud/Type$LoginInfo;->ret:I

    if-nez v11, :cond_8

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/car/cloud/Type$LoginInfo;->servtime:Ljava/lang/String;

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    mul-long v12, v14, v16

    const-string v11, "CarSvc_CarCloudService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "curTime = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sub-long v14, v12, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const-wide/32 v16, 0x36ee80

    cmp-long v11, v14, v16

    if-lez v11, :cond_0

    new-instance v7, Landroid/content/Intent;

    const-string v11, "com.car.time.set"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "time2set"

    invoke-virtual {v7, v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v11, v7}, Lcom/car/cloud/CarCloudService;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    const-string v14, "cloud"

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Lcom/car/cloud/CarCloudService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v14, "id"

    move-object/from16 v0, p1

    iget v15, v0, Lcom/car/cloud/Type$LoginInfo;->id:I

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-interface {v11, v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v11, v11, Lcom/car/cloud/CarCloudService;->mMyAdManager:Lcom/car/cloud/MyAdManager;

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v11, v11, Lcom/car/cloud/CarCloudService;->mMyAdManager:Lcom/car/cloud/MyAdManager;

    move-object/from16 v0, p1

    iget v14, v0, Lcom/car/cloud/Type$LoginInfo;->id:I

    int-to-long v14, v14

    invoke-virtual {v11, v14, v15}, Lcom/car/cloud/MyAdManager;->setId(J)V

    invoke-static {}, Lcom/car/ad/ADManager;->instance()Lcom/car/ad/ADManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/car/ad/ADManager;->refreshADs()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v11}, Lcom/car/cloud/CarCloudService;->getOssList()V

    move-object/from16 v0, p1

    iget v6, v0, Lcom/car/cloud/Type$LoginInfo;->lastgpstime:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/car/cloud/Type$LoginInfo;->gpsinterval:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v11}, Lcom/car/cloud/CarCloudService;->access$1500(Lcom/car/cloud/CarCloudService;)Lcom/car/cloud/CarCloudGPSDataUploadThread;

    move-result-object v11

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v11}, Lcom/car/cloud/CarCloudService;->access$1500(Lcom/car/cloud/CarCloudService;)Lcom/car/cloud/CarCloudGPSDataUploadThread;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->setGPSLastUpdateTime(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v11}, Lcom/car/cloud/CarCloudService;->access$1500(Lcom/car/cloud/CarCloudService;)Lcom/car/cloud/CarCloudGPSDataUploadThread;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->setGPSUpdateInterval(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v11}, Lcom/car/cloud/CarCloudService;->access$1500(Lcom/car/cloud/CarCloudService;)Lcom/car/cloud/CarCloudGPSDataUploadThread;

    move-result-object v11

    invoke-virtual {v11}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->startSendGPSData()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v14, 0x1

    invoke-static {v11, v14}, Lcom/car/cloud/CarCloudService;->access$802(Lcom/car/cloud/CarCloudService;Z)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v14, 0x1

    invoke-static {v11, v14}, Lcom/car/cloud/CarCloudService;->access$2200(Lcom/car/cloud/CarCloudService;Z)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget-boolean v11, v11, Lcom/car/cloud/CarCloudService;->mSuspendNow:Z

    if-nez v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v11}, Lcom/car/cloud/CarCloudService;->access$1900(Lcom/car/cloud/CarCloudService;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-gtz v11, :cond_3

    const-string v11, "CarSvc_CarCloudService"

    const-string v14, "Workaround to gurantee suspend"

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v14, 0x1

    iput-boolean v14, v11, Lcom/car/cloud/CarCloudService;->mSuspendNow:Z

    :cond_3
    invoke-static {}, Lcom/car/common/CarUtil;->isAliYunOS()Z

    move-result v11

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v11}, Lcom/car/cloud/CarCloudService;->access$1400(Lcom/car/cloud/CarCloudService;)Z

    move-result v11

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v14, 0x0

    iput-boolean v14, v11, Lcom/car/cloud/CarCloudService;->mSuspendNow:Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget-boolean v11, v11, Lcom/car/cloud/CarCloudService;->mSuspendNow:Z

    if-eqz v11, :cond_5

    move-object/from16 v0, p1

    iget v11, v0, Lcom/car/cloud/Type$LoginInfo;->keepalive:I

    const v14, 0x7fffffff

    if-eq v11, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget-boolean v14, v14, Lcom/car/cloud/CarCloudService;->mSuspendNow:Z

    invoke-virtual {v11, v14}, Lcom/car/cloud/CarCloudService;->devReportSuspend(Z)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget-boolean v11, v11, Lcom/car/cloud/CarCloudService;->mReconnectionPromised:Z

    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget-boolean v11, v11, Lcom/car/cloud/CarCloudService;->mSuspendNow:Z

    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v14, 0x0

    invoke-static {v11, v14}, Lcom/car/cloud/CarCloudService;->access$1000(Lcom/car/cloud/CarCloudService;I)Z

    move-result v11

    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Lcom/car/cloud/CarCloudService;->keepAwake(Z)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v14, 0x0

    iput-boolean v14, v11, Lcom/car/cloud/CarCloudService;->mReconnectionPromised:Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v11}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v11, "login_moduletype"

    invoke-static {}, Lcom/car/cloud/CarCloudService;->access$600()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v4, v11, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v11, "login_firmware"

    invoke-static {}, Lcom/car/cloud/CarCloudService;->access$700()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v4, v11, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v11, "login_manufacturer"

    invoke-static {}, Lcom/car/cloud/CarCloudService;->access$500()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v4, v11, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_7
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Lcom/car/cloud/CarCloudService;->keepAwake(Z)V

    return-void

    :cond_8
    move-object/from16 v0, p1

    iget v11, v0, Lcom/car/cloud/Type$LoginInfo;->ret:I

    const/4 v14, 0x2

    if-ne v11, v14, :cond_9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v11}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v11, "login_moduletype"

    const-string v14, ""

    invoke-interface {v4, v11, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v11, "login_firmware"

    const-string v14, ""

    invoke-interface {v4, v11, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v11, "login_manufacturer"

    const-string v14, ""

    invoke-interface {v4, v11, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v11}, Lcom/car/cloud/CarCloudService;->access$1700(Lcom/car/cloud/CarCloudService;)Landroid/os/Handler;

    move-result-object v11

    const/16 v14, 0x66

    invoke-virtual {v11, v14}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v11}, Lcom/car/cloud/CarCloudService;->access$1700(Lcom/car/cloud/CarCloudService;)Landroid/os/Handler;

    move-result-object v11

    const/16 v14, 0x66

    invoke-virtual {v11, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v11}, Lcom/car/cloud/CarCloudService;->access$000(Lcom/car/cloud/CarCloudService;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    :cond_9
    move-object/from16 v0, p1

    iget v11, v0, Lcom/car/cloud/Type$LoginInfo;->ret:I

    const/16 v14, 0x11

    if-ne v11, v14, :cond_b

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v11}, Lcom/car/cloud/CarCloudService;->access$1700(Lcom/car/cloud/CarCloudService;)Landroid/os/Handler;

    move-result-object v11

    const/16 v14, 0x66

    invoke-virtual {v11, v14}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v11}, Lcom/car/cloud/CarCloudService;->access$1700(Lcom/car/cloud/CarCloudService;)Landroid/os/Handler;

    move-result-object v11

    const/16 v16, 0x66

    move-object/from16 v0, p1

    iget v14, v0, Lcom/car/cloud/Type$LoginInfo;->retry:I

    if-eqz v14, :cond_a

    move-object/from16 v0, p1

    iget v14, v0, Lcom/car/cloud/Type$LoginInfo;->retry:I

    int-to-long v14, v14

    :goto_1
    move/from16 v0, v16

    invoke-virtual {v11, v0, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v11}, Lcom/car/cloud/CarCloudService;->access$000(Lcom/car/cloud/CarCloudService;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0

    :cond_a
    const-wide/32 v14, 0xea60

    goto :goto_1

    :cond_b
    move-object/from16 v0, p1

    iget v11, v0, Lcom/car/cloud/Type$LoginInfo;->ret:I

    const/4 v14, 0x1

    if-ne v11, v14, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v11}, Lcom/car/cloud/CarCloudService;->access$000(Lcom/car/cloud/CarCloudService;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p1

    iget v11, v0, Lcom/car/cloud/Type$LoginInfo;->ret:I

    const/16 v14, 0x12e

    if-ne v11, v14, :cond_7

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/car/cloud/Type$LoginInfo;->redirect:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_7

    const-string v11, "persist.sys.carcloud.server"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/car/cloud/Type$LoginInfo;->redirect:Ljava/lang/String;

    invoke-static {v11, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/car/cloud/Type$LoginInfo;->redirect:Ljava/lang/String;

    invoke-static {v11}, Lcom/car/cloud/CarCloudService;->access$302(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public onNotice(Ljava/lang/String;Z)V
    .locals 4

    const-string v1, "CarSvc_CarCloudService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/car/common/TipPlayerHelper;->instance()Lcom/car/common/TipPlayerHelper;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2}, Lcom/car/common/TipPlayerHelper;->playSpeech(Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v2}, Lcom/car/cloud/CarCloudService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/car/cloud/CarCloudService$MyCloudCallback$8;

    invoke-direct {v3, p0}, Lcom/car/cloud/CarCloudService$MyCloudCallback$8;-><init>(Lcom/car/cloud/CarCloudService$MyCloudCallback;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public onOnlinePreviewRequest(Ljava/lang/String;JLjava/lang/String;II)V
    .locals 32

    const/4 v13, 0x0

    const-string v4, "persist.sys.car.live"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v13, -0x1

    :cond_0
    :goto_0
    if-eqz v13, :cond_3

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    invoke-virtual/range {v4 .. v14}, Lcom/car/cloud/WebSocketUtil;->notifyUserPreviewing(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/car/cloud/WebSocketUtil$ReplyHandler;)V

    const-string v4, "CarSvc_CarCloudService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onOnlinePreviewRequest failed. ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/car/cloud/CarCloudService;->access$1000(Lcom/car/cloud/CarCloudService;I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v13, -0x2

    goto :goto_0

    :cond_3
    const-string v4, "CarSvc_CarCloudService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onOnlinePreviewRequest + unionId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " camid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v4, v4, Lcom/car/cloud/CarCloudService;->mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

    if-eqz v4, :cond_9

    if-eqz p1, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    const-string v5, "live"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/car/cloud/CarCloudService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "server"

    invoke-static {}, Lcom/car/cloud/CarCloudService;->access$1600()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v4, 0x0

    const/16 v5, 0x2e

    invoke-virtual {v8, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v8, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$3200(Lcom/car/cloud/CarCloudService;)Ljava/lang/String;

    move-result-object v10

    const/16 v4, 0x2e

    invoke-virtual {v8, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const/16 v29, 0x0

    const-string v28, "F"

    const/4 v4, 0x1

    move/from16 v0, p6

    if-eq v0, v4, :cond_4

    const/16 v4, 0x42

    move/from16 v0, p6

    if-ne v0, v4, :cond_c

    :cond_4
    const-string v28, "B"

    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$3300(Lcom/car/cloud/CarCloudService;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$3300(Lcom/car/cloud/CarCloudService;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$3400(Lcom/car/cloud/CarCloudService;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$3400(Lcom/car/cloud/CarCloudService;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    :cond_7
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget-boolean v4, v4, Lcom/car/cloud/CarCloudService;->mSuspendNow:Z

    if-eqz v4, :cond_8

    new-instance v31, Landroid/content/Intent;

    const-string v4, "com.car.syswakeup"

    move-object/from16 v0, v31

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "reason"

    const-string v5, "recordvideo"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v4}, Lcom/car/cloud/CarCloudService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Lcom/car/cloud/CarCloudService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget v4, v4, Lcom/car/cloud/CarCloudService;->mTtsStreamType:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v4

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget v4, v4, Lcom/car/cloud/CarCloudService;->mTtsStreamType:I

    const/4 v5, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/car/cloud/CarCloudService;->mMuteRecover:Z

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/car/cloud/CarCloudService;->keepAwake(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$1700(Lcom/car/cloud/CarCloudService;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x6d

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$1700(Lcom/car/cloud/CarCloudService;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x6d

    const-wide/16 v6, 0x7530

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://endpoint/http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/bucket/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/keyid/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/car/cloud/CarCloudService;->access$2900()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/keysecret/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/car/cloud/CarCloudService;->access$3000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/file/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v4, v4, Lcom/car/cloud/CarCloudService;->mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

    move-object/from16 v0, v25

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-virtual {v4, v0, v1, v2}, Lcom/car/common/CameraServiceImpl;->onlinePreviewRequest(Ljava/lang/String;II)V

    const-string v4, "CarSvc_CarCloudService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Preview:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v29, v29, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    move/from16 v3, p6

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/car/cloud/CarCloudService;->addLivingClient(Ljava/lang/String;JI)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$3300(Lcom/car/cloud/CarCloudService;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v5, v5, Lcom/car/cloud/CarCloudService;->mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

    invoke-virtual {v5}, Lcom/car/common/CameraServiceImpl;->getCameraList()Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move/from16 v12, p6

    invoke-virtual/range {v4 .. v14}, Lcom/car/cloud/WebSocketUtil;->notifyUserPreviewing(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/car/cloud/WebSocketUtil$ReplyHandler;)V

    :goto_2
    const-string v4, "CarSvc_CarCloudService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "camid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$3400(Lcom/car/cloud/CarCloudService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const/4 v4, 0x5

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/4 v4, 0x0

    const-string v5, "F"

    aput-object v5, v27, v4

    const/4 v4, 0x1

    const-string v5, "B"

    aput-object v5, v27, v4

    const/4 v4, 0x2

    const-string v5, "I"

    aput-object v5, v27, v4

    const/4 v4, 0x3

    const-string v5, "L"

    aput-object v5, v27, v4

    const/4 v4, 0x4

    const-string v5, "R"

    aput-object v5, v27, v4

    const/16 v30, 0x0

    :goto_3
    move-object/from16 v0, v27

    array-length v4, v0

    move/from16 v0, v30

    if-ge v0, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$3300(Lcom/car/cloud/CarCloudService;)Ljava/util/HashMap;

    move-result-object v4

    aget-object v5, v27, v30

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v5, "CarSvc_CarCloudService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " cameraid = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v6, v27, v30

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " LivingFile = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$3300(Lcom/car/cloud/CarCloudService;)Ljava/util/HashMap;

    move-result-object v4

    aget-object v7, v27, v30

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$3400(Lcom/car/cloud/CarCloudService;)Ljava/util/HashMap;

    move-result-object v4

    aget-object v5, v27, v30

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v5, "CarSvc_CarCloudService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " cameraid = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v6, v27, v30

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " LivingCount = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$3400(Lcom/car/cloud/CarCloudService;)Ljava/util/HashMap;

    move-result-object v4

    aget-object v7, v27, v30

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_3

    :cond_c
    const/16 v4, 0x49

    move/from16 v0, p6

    if-ne v0, v4, :cond_d

    const-string v28, "I"

    goto/16 :goto_1

    :cond_d
    const/16 v4, 0x4c

    move/from16 v0, p6

    if-ne v0, v4, :cond_e

    const-string v28, "L"

    goto/16 :goto_1

    :cond_e
    const/16 v4, 0x52

    move/from16 v0, p6

    if-ne v0, v4, :cond_5

    const-string v28, "R"

    goto/16 :goto_1

    :cond_f
    add-int/lit8 v29, v29, -0x1

    if-gez v29, :cond_10

    const/16 v29, 0x0

    :cond_10
    if-nez v29, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v4, v4, Lcom/car/cloud/CarCloudService;->mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

    const-string v5, ""

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v4, v5, v0, v1}, Lcom/car/common/CameraServiceImpl;->onlinePreviewRequest(Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget-boolean v4, v4, Lcom/car/cloud/CarCloudService;->mMuteRecover:Z

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Lcom/car/cloud/CarCloudService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget v4, v4, Lcom/car/cloud/CarCloudService;->mTtsStreamType:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v4

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget v4, v4, Lcom/car/cloud/CarCloudService;->mTtsStreamType:I

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/car/cloud/CarCloudService;->mMuteRecover:Z

    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/car/cloud/CarCloudService;->keepAwake(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$3300(Lcom/car/cloud/CarCloudService;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v14

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v15, p1

    move-wide/from16 v16, p2

    invoke-virtual/range {v14 .. v24}, Lcom/car/cloud/WebSocketUtil;->notifyUserPreviewing(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/car/cloud/WebSocketUtil$ReplyHandler;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    move-object/from16 v0, p1

    move/from16 v1, p6

    invoke-virtual {v4, v0, v1}, Lcom/car/cloud/CarCloudService;->delLivingClient(Ljava/lang/String;I)V

    goto/16 :goto_2
.end method

.method public onPickupInfo(DDLjava/lang/String;)V
    .locals 11

    const-string v0, "CarSvc_CarCloudService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPickupInfo:lng = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v0}, Lcom/car/cloud/CarCloudService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/car/common/TipPlayerHelper;->instance()Lcom/car/common/TipPlayerHelper;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v7, v1}, Lcom/car/common/TipPlayerHelper;->playSpeech(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v0, v0, Lcom/car/cloud/CarCloudService;->mPickupDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v0, v0, Lcom/car/cloud/CarCloudService;->mPickupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v0}, Lcom/car/cloud/CarCloudService;->access$1700(Lcom/car/cloud/CarCloudService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v0, v0, Lcom/car/cloud/CarCloudService;->mPickupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v8, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v0}, Lcom/car/cloud/CarCloudService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v0, Lcom/car/cloud/CarCloudService$MyCloudCallback$3;

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p1

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/car/cloud/CarCloudService$MyCloudCallback$3;-><init>(Lcom/car/cloud/CarCloudService$MyCloudCallback;DDLjava/lang/String;)V

    invoke-virtual {v9, v10, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v1}, Lcom/car/cloud/CarCloudService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/car/cloud/CarCloudService$MyCloudCallback$2;

    invoke-direct {v2, p0}, Lcom/car/cloud/CarCloudService$MyCloudCallback$2;-><init>(Lcom/car/cloud/CarCloudService$MyCloudCallback;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v8, Lcom/car/cloud/CarCloudService;->mPickupDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v0, v0, Lcom/car/cloud/CarCloudService;->mPickupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v0, v0, Lcom/car/cloud/CarCloudService;->mPickupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    const/16 v1, 0xa

    iput v1, v0, Lcom/car/cloud/CarCloudService;->mPickupCountDown:I

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v0}, Lcom/car/cloud/CarCloudService;->access$1700(Lcom/car/cloud/CarCloudService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onReceiveMsg(Lcom/car/cloud/Type$MsgInfo;)V
    .locals 4

    const-string v1, "CarSvc_CarCloudService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceiveMsg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v1, p1}, Lcom/car/cloud/CarCloudService;->access$2700(Lcom/car/cloud/CarCloudService;Lcom/car/cloud/Type$MsgInfo;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v1}, Lcom/car/cloud/CarCloudService;->access$2400(Lcom/car/cloud/CarCloudService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p1, Lcom/car/cloud/Type$MsgInfo;->from:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v2}, Lcom/car/cloud/CarCloudService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v1, v0}, Lcom/car/cloud/CloudApplication;->speechTips(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onRecordingVideo(Ljava/lang/String;JIILjava/lang/String;)V
    .locals 14

    const-string v3, "CarSvc_CarCloudService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRecordingVideo:unionId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget-boolean v3, v3, Lcom/car/cloud/CarCloudService;->mSuspendNow:Z

    if-eqz v3, :cond_0

    new-instance v12, Landroid/content/Intent;

    const-string v3, "com.car.syswakeup"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "reason"

    const-string v4, "recordvideo"

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v3}, Lcom/car/cloud/CarCloudService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Lcom/car/cloud/CarCloudService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget v3, v3, Lcom/car/cloud/CarCloudService;->mTtsStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget v3, v3, Lcom/car/cloud/CarCloudService;->mTtsStreamType:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    iget-object v3, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/car/cloud/CarCloudService;->mMuteRecover:Z

    :cond_0
    iget-object v3, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v4, 0x5

    const/4 v9, 0x5

    if-gtz p5, :cond_1

    const/4 v10, 0x5

    :goto_0
    move-object v5, p1

    move-wide/from16 v6, p2

    move/from16 v8, p4

    move-object/from16 v11, p6

    invoke-virtual/range {v3 .. v11}, Lcom/car/cloud/CarCloudService;->alarmNotify(ILjava/lang/String;JIIILjava/lang/String;)V

    return-void

    :cond_1
    move/from16 v10, p5

    goto :goto_0
.end method

.method public onRequestTodayGPS(Ljava/lang/String;)V
    .locals 3

    const-string v0, "CarSvc_CarCloudService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestTodayGPS:message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/car/cloud/CarCloudService$MyCloudCallback$7;

    invoke-direct {v1, p0, p1}, Lcom/car/cloud/CarCloudService$MyCloudCallback$7;-><init>(Lcom/car/cloud/CarCloudService$MyCloudCallback;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onTakingPhoto(Ljava/lang/String;JILjava/lang/String;)V
    .locals 10

    const/4 v7, 0x0

    const-string v0, "CarSvc_CarCloudService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTakingPhoto:unionId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v2, 0x4

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move v8, v7

    move-object v9, p5

    invoke-virtual/range {v1 .. v9}, Lcom/car/cloud/CarCloudService;->alarmNotify(ILjava/lang/String;JIIILjava/lang/String;)V

    return-void
.end method

.method public onUserBondlist(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/cloud/Type$UserInfo;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v6, 0xbb8

    const/16 v5, 0x69

    const-string v2, "CarSvc_CarCloudService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUserBondlist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v2, p1}, Lcom/car/cloud/CarCloudService;->access$1302(Lcom/car/cloud/CarCloudService;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v2, p1}, Lcom/car/cloud/CarCloudService;->access$2300(Lcom/car/cloud/CarCloudService;Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v2}, Lcom/car/cloud/CarCloudService;->access$2400(Lcom/car/cloud/CarCloudService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v2}, Lcom/car/cloud/CarCloudService;->access$1300(Lcom/car/cloud/CarCloudService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/cloud/Type$UserInfo;

    iget-object v2, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v2}, Lcom/car/cloud/CarCloudService;->access$2400(Lcom/car/cloud/CarCloudService;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v1, Lcom/car/cloud/Type$UserInfo;->unionId:Ljava/lang/String;

    iget-object v4, v1, Lcom/car/cloud/Type$UserInfo;->nickName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v2}, Lcom/car/cloud/CarCloudService;->access$1300(Lcom/car/cloud/CarCloudService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v2}, Lcom/car/cloud/CarCloudService;->access$1700(Lcom/car/cloud/CarCloudService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v2}, Lcom/car/cloud/CarCloudService;->access$1700(Lcom/car/cloud/CarCloudService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    sget-boolean v2, Lcom/car/cloud/CarCloudService;->mRebootDone:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v2}, Lcom/car/cloud/CarCloudService;->access$1700(Lcom/car/cloud/CarCloudService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x68

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v2}, Lcom/car/cloud/CarCloudService;->access$800(Lcom/car/cloud/CarCloudService;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "CarSvc_CarCloudService"

    const-string v3, "try to show bund dialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v2}, Lcom/car/cloud/CarCloudService;->access$900(Lcom/car/cloud/CarCloudService;)V

    goto :goto_1
.end method

.method public onUserStatus(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "CarSvc_CarCloudService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserStatus:unionId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", onLine = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v0}, Lcom/car/cloud/CarCloudService;->access$000(Lcom/car/cloud/CarCloudService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v0, p1, p2}, Lcom/car/cloud/CarCloudService;->access$2800(Lcom/car/cloud/CarCloudService;Ljava/lang/String;Z)V

    return-void
.end method

.method public onVoiceReceived(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/car/cloud/WebSocketUtil;->notifyUserVoiceReceived(Ljava/lang/String;JLcom/car/cloud/WebSocketUtil$ReplyHandler;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/car/cloud/CarCloudService$MyCloudCallback$9;

    invoke-direct {v1, p0, p4, p5, p6}, Lcom/car/cloud/CarCloudService$MyCloudCallback$9;-><init>(Lcom/car/cloud/CarCloudService$MyCloudCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onWebSocketStatus(I)V
    .locals 13

    const/16 v12, 0x64

    const/16 v11, 0xa

    const/16 v10, 0x70

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$1700(Lcom/car/cloud/CarCloudService;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x66

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget-boolean v4, v4, Lcom/car/cloud/CarCloudService;->mWsEverOk:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v4}, Lcom/car/cloud/CarCloudService;->doStopLive()V

    :cond_0
    if-nez p1, :cond_4

    iget-object v4, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$1700(Lcom/car/cloud/CarCloudService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v4}, Lcom/car/cloud/CarCloudService;->forceWakeLockReleased()V

    iget-object v4, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v4, v9}, Lcom/car/cloud/CarCloudService;->keepAwake(Z)V

    iget-object v4, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v4}, Lcom/car/cloud/CarCloudService;->needRelogin()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$1700(Lcom/car/cloud/CarCloudService;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x6f

    const-wide/16 v6, 0x7530

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    iget-object v4, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iput-boolean v9, v4, Lcom/car/cloud/CarCloudService;->mWsEverOk:Z

    iget-object v4, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/car/cloud/CarCloudService;->mLastOKTime:J

    iget-object v4, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$1700(Lcom/car/cloud/CarCloudService;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x66

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4, v8}, Lcom/car/cloud/CarCloudService;->access$802(Lcom/car/cloud/CarCloudService;Z)Z

    iget-object v4, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4, v8}, Lcom/car/cloud/CarCloudService;->access$2200(Lcom/car/cloud/CarCloudService;Z)V

    :cond_3
    return-void

    :cond_4
    iget-object v4, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v4}, Lcom/car/cloud/CarCloudService;->forceWakeLockReleased()V

    iget-object v4, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iput-boolean v8, v4, Lcom/car/cloud/CarCloudService;->mWsEverOk:Z

    iget-object v4, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$1700(Lcom/car/cloud/CarCloudService;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x69

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$1700(Lcom/car/cloud/CarCloudService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$1700(Lcom/car/cloud/CarCloudService;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v12, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v4, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$1500(Lcom/car/cloud/CarCloudService;)Lcom/car/cloud/CarCloudGPSDataUploadThread;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$1500(Lcom/car/cloud/CarCloudService;)Lcom/car/cloud/CarCloudGPSDataUploadThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->stopSendGPSData()V

    :cond_5
    iget-object v4, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$000(Lcom/car/cloud/CarCloudService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    iget-object v4, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v4}, Lcom/car/cloud/CarCloudService;->forceWakeLockReleased()V

    invoke-static {}, Lcom/car/cloud/CarCloudService;->access$300()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/car/cloud/CarCloudService;->access$2100()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v4, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget-wide v4, v4, Lcom/car/cloud/CarCloudService;->mLastOKTime:J

    sub-long v4, v0, v4

    const-wide/32 v6, 0x6ddd00

    cmp-long v4, v4, v6

    if-ltz v4, :cond_6

    invoke-static {}, Lcom/car/cloud/CarCloudService;->access$2100()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$302(Ljava/lang/String;)Ljava/lang/String;

    :cond_6
    iget-object v4, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget-boolean v4, v4, Lcom/car/cloud/CarCloudService;->mSuspendNow:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4, v8}, Lcom/car/cloud/CarCloudService;->access$1000(Lcom/car/cloud/CarCloudService;I)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "CarSvc_CarCloudService"

    const-string v5, "Abnormal close, keep awake to promise reconnection"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v4, v9}, Lcom/car/cloud/CarCloudService;->keepAwake(Z)V

    iget-object v4, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iput-boolean v9, v4, Lcom/car/cloud/CarCloudService;->mReconnectionPromised:Z

    goto/16 :goto_0

    :cond_7
    iget-object v4, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4, v8}, Lcom/car/cloud/CarCloudService;->access$1000(Lcom/car/cloud/CarCloudService;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget-wide v4, v4, Lcom/car/cloud/CarCloudService;->mLastAirplaneTime:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0x36ee80

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$1700(Lcom/car/cloud/CarCloudService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$1700(Lcom/car/cloud/CarCloudService;)Landroid/os/Handler;

    move-result-object v4

    const-string v5, "sys.car.feedtime"

    invoke-static {v5, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v6, v5

    invoke-virtual {v4, v10, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v4, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v4, v4, Lcom/car/cloud/CarCloudService;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    const-string v5, "sys.car.feedtime"

    invoke-static {v5, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v5, v5, 0x3c

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Lcom/car/common/util/MyWakeLock;->setTimeOut(J)V

    iget-object v4, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v4, v9}, Lcom/car/cloud/CarCloudService;->keepAwake(Z)V

    goto/16 :goto_0
.end method
