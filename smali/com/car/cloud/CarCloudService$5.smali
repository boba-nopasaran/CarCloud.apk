.class Lcom/car/cloud/CarCloudService$5;
.super Ljava/lang/Object;
.source "CarCloudService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/CarCloudService;->alarmNotify(ILjava/lang/String;JIIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/CarCloudService;

.field final synthetic val$camid:I

.field final synthetic val$lengthBackward:I

.field final synthetic val$lengthForward:I

.field final synthetic val$passback:Ljava/lang/String;

.field final synthetic val$relayid:J

.field final synthetic val$type:I

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/car/cloud/CarCloudService;ILjava/lang/String;Ljava/lang/String;JIII)V
    .locals 1

    iput-object p1, p0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    iput p2, p0, Lcom/car/cloud/CarCloudService$5;->val$type:I

    iput-object p3, p0, Lcom/car/cloud/CarCloudService$5;->val$passback:Ljava/lang/String;

    iput-object p4, p0, Lcom/car/cloud/CarCloudService$5;->val$uid:Ljava/lang/String;

    iput-wide p5, p0, Lcom/car/cloud/CarCloudService$5;->val$relayid:J

    iput p7, p0, Lcom/car/cloud/CarCloudService$5;->val$lengthBackward:I

    iput p8, p0, Lcom/car/cloud/CarCloudService$5;->val$camid:I

    iput p9, p0, Lcom/car/cloud/CarCloudService$5;->val$lengthForward:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 56

    :try_start_0
    new-instance v39, Lorg/json/JSONObject;

    invoke-direct/range {v39 .. v39}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "alarmType"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/car/cloud/CarCloudService$5;->val$type:I

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "passback"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$5;->val$passback:Ljava/lang/String;

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "sys.current.gpsinfo"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    const-string v4, ":"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    array-length v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    const/4 v4, 0x2

    aget-object v4, v38, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v26

    ushr-int/lit8 v50, v26, 0x1e

    const-string v4, "coordtype"

    move-object/from16 v0, v39

    move/from16 v1, v50

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "lat"

    const/4 v5, 0x0

    aget-object v5, v38, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "lng"

    const/4 v5, 0x1

    aget-object v5, v38, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$type:I

    if-nez v4, :cond_4

    const-string v4, "text"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v5}, Lcom/car/cloud/CarCloudService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f06002b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    :goto_0
    new-instance v46, Ljava/util/ArrayList;

    invoke-direct/range {v46 .. v46}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->val$uid:Ljava/lang/String;

    if-nez v4, :cond_4d

    new-instance v53, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$1300(Lcom/car/cloud/CarCloudService;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual/range {v53 .. v53}, Ljava/util/ArrayList;->size()I

    move-result v27

    invoke-virtual/range {v53 .. v53}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :goto_1
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/car/cloud/Type$UserInfo;

    new-instance v45, Lcom/car/cloud/Type$MsgInfo;

    invoke-direct/range {v45 .. v45}, Lcom/car/cloud/Type$MsgInfo;-><init>()V

    const-wide/16 v4, -0x1

    move-object/from16 v0, v45

    iput-wide v4, v0, Lcom/car/cloud/Type$MsgInfo;->msgIndex:J

    invoke-virtual/range {v39 .. v39}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v45

    iput-object v4, v0, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    const-string v4, "alarm"

    move-object/from16 v0, v45

    iput-object v4, v0, Lcom/car/cloud/Type$MsgInfo;->msgType:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    move-object/from16 v0, v45

    iput-wide v4, v0, Lcom/car/cloud/Type$MsgInfo;->sendTime:J

    move-object/from16 v0, v51

    iget-object v4, v0, Lcom/car/cloud/Type$UserInfo;->unionId:Ljava/lang/String;

    move-object/from16 v0, v45

    iput-object v4, v0, Lcom/car/cloud/Type$MsgInfo;->to:Ljava/lang/String;

    move-object/from16 v0, v46

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "CarSvc_CarCloudService"

    invoke-virtual/range {v45 .. v45}, Lcom/car/cloud/Type$MsgInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    iget-boolean v4, v4, Lcom/car/cloud/CarCloudService;->mSuspendNow:Z

    if-eqz v4, :cond_3

    const-string v4, "sys.car.sleep"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/car/cloud/CarCloudService;->keepAwake(Z)V

    :goto_3
    return-void

    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$type:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_5

    const-string v4, "text"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v5}, Lcom/car/cloud/CarCloudService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f060029

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$type:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_6

    const-string v4, "text"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v5}, Lcom/car/cloud/CarCloudService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f060030

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$type:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_7

    const-string v4, "text"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v5}, Lcom/car/cloud/CarCloudService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f060031

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$type:I

    const/16 v5, 0x9

    if-ne v4, v5, :cond_8

    const-string v4, "text"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v5}, Lcom/car/cloud/CarCloudService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f060032

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$type:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_9

    const-string v4, "text"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v5}, Lcom/car/cloud/CarCloudService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f060033

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$type:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$type:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$type:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_26

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$5;->val$uid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/car/cloud/CarCloudService$5;->val$relayid:J

    const-string v8, "tping"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/car/cloud/CarCloudService;->progressReport(Ljava/lang/String;JLjava/lang/String;I)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$lengthBackward:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_19

    const/16 v47, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a

    const-string v4, "text"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v5}, Lcom/car/cloud/CarCloudService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f06002c

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-wide/16 v4, 0x1388

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    :cond_b
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$5;->val$uid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/car/cloud/CarCloudService$5;->val$relayid:J

    const-string v8, "tping"

    const/16 v9, 0xa

    invoke-virtual/range {v4 .. v9}, Lcom/car/cloud/CarCloudService;->progressReport(Ljava/lang/String;JLjava/lang/String;I)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$camid:I

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$camid:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v4, v4, Lcom/car/cloud/CarCloudService;->mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

    const-string v5, "/sdcard/Pictures/"

    move/from16 v0, v47

    invoke-virtual {v4, v5, v0}, Lcom/car/common/CameraServiceImpl;->takeFrontPicture2(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    const-string v4, "CarSvc_CarCloudService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Capture front photo: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_d

    const-string v4, "CarSvc_CarCloudService"

    const-string v5, "Try again"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x1388

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v4, v4, Lcom/car/cloud/CarCloudService;->mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

    const-string v5, "/sdcard/Pictures/"

    move/from16 v0, v47

    invoke-virtual {v4, v5, v0}, Lcom/car/common/CameraServiceImpl;->takeFrontPicture2(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    :cond_d
    new-instance v54, Ljava/util/ArrayList;

    invoke-direct/range {v54 .. v54}, Ljava/util/ArrayList;-><init>()V

    if-nez v6, :cond_e

    const-string v6, ""

    :cond_e
    const-string v4, "imgurl"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->val$uid:Ljava/lang/String;

    if-eqz v4, :cond_f

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Ljava/lang/Thread;

    new-instance v4, Lcom/car/cloud/CarCloudService$MyUploadRunnable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/car/cloud/CarCloudService$5;->val$uid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/car/cloud/CarCloudService$5;->val$relayid:J

    invoke-direct/range {v4 .. v9}, Lcom/car/cloud/CarCloudService$MyUploadRunnable;-><init>(Lcom/car/cloud/CarCloudService;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {v11, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    :cond_f
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/car/cloud/CarCloudService$5;->val$uid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/car/cloud/CarCloudService$5;->val$relayid:J

    const-string v12, "tping"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v4}, Lcom/car/cloud/CarCloudService;->isDualCVBS()Z

    move-result v4

    if-eqz v4, :cond_1c

    const/16 v13, 0x1e

    :goto_6
    invoke-virtual/range {v8 .. v13}, Lcom/car/cloud/CarCloudService;->progressReport(Ljava/lang/String;JLjava/lang/String;I)V

    const-string v4, "persist.usb.cam.bad"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$camid:I

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$camid:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1d

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v4, v4, Lcom/car/cloud/CarCloudService;->mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

    const-string v5, "/sdcard/Pictures/"

    move/from16 v0, v47

    invoke-virtual {v4, v5, v0}, Lcom/car/common/CameraServiceImpl;->takeBackPicture2(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    const-string v4, "CarSvc_CarCloudService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Capture rear photo: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_11

    const-string v4, "CarSvc_CarCloudService"

    const-string v5, "Try again"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x1388

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v4, v4, Lcom/car/cloud/CarCloudService;->mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

    const-string v5, "/sdcard/Pictures/"

    move/from16 v0, v47

    invoke-virtual {v4, v5, v0}, Lcom/car/common/CameraServiceImpl;->takeBackPicture2(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    :cond_11
    :goto_7
    if-nez v6, :cond_12

    const-string v6, ""

    :cond_12
    :goto_8
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/car/cloud/CarCloudService$5;->val$uid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/car/cloud/CarCloudService$5;->val$relayid:J

    const-string v12, "tping"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v4}, Lcom/car/cloud/CarCloudService;->isDualCVBS()Z

    move-result v4

    if-eqz v4, :cond_1f

    const/16 v13, 0x46

    :goto_9
    invoke-virtual/range {v8 .. v13}, Lcom/car/cloud/CarCloudService;->progressReport(Ljava/lang/String;JLjava/lang/String;I)V

    const-string v4, "imgurlrear"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->val$uid:Ljava/lang/String;

    if-eqz v4, :cond_13

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Ljava/lang/Thread;

    new-instance v4, Lcom/car/cloud/CarCloudService$MyUploadRunnable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/car/cloud/CarCloudService$5;->val$uid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/car/cloud/CarCloudService$5;->val$relayid:J

    invoke-direct/range {v4 .. v9}, Lcom/car/cloud/CarCloudService$MyUploadRunnable;-><init>(Lcom/car/cloud/CarCloudService;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {v11, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v4}, Lcom/car/cloud/CarCloudService;->isDualCVBS()Z

    move-result v4

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$camid:I

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$camid:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_20

    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v4, v4, Lcom/car/cloud/CarCloudService;->mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

    const-string v5, "/sdcard/Pictures/"

    move/from16 v0, v47

    invoke-virtual {v4, v5, v0}, Lcom/car/common/CameraServiceImpl;->takeInsidePicture2(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    const-string v4, "CarSvc_CarCloudService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Capture inside photo: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_15

    const-string v4, "CarSvc_CarCloudService"

    const-string v5, "Try again"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x1388

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v4, v4, Lcom/car/cloud/CarCloudService;->mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

    const-string v5, "/sdcard/Pictures/"

    move/from16 v0, v47

    invoke-virtual {v4, v5, v0}, Lcom/car/common/CameraServiceImpl;->takeInsidePicture2(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    :cond_15
    :goto_a
    if-nez v6, :cond_16

    const-string v6, ""

    :cond_16
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/car/cloud/CarCloudService$5;->val$uid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/car/cloud/CarCloudService$5;->val$relayid:J

    const-string v12, "tping"

    const/16 v13, 0x64

    invoke-virtual/range {v8 .. v13}, Lcom/car/cloud/CarCloudService;->progressReport(Ljava/lang/String;JLjava/lang/String;I)V

    const-string v4, "imgurlinside"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->val$uid:Ljava/lang/String;

    if-eqz v4, :cond_17

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Ljava/lang/Thread;

    new-instance v4, Lcom/car/cloud/CarCloudService$MyUploadRunnable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/car/cloud/CarCloudService$5;->val$uid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/car/cloud/CarCloudService$5;->val$relayid:J

    invoke-direct/range {v4 .. v9}, Lcom/car/cloud/CarCloudService$MyUploadRunnable;-><init>(Lcom/car/cloud/CarCloudService;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {v11, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    :cond_17
    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$100(Lcom/car/cloud/CarCloudService;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v49, 0x3c

    :goto_b
    if-lez v49, :cond_22

    const/16 v44, 0x0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_18
    :goto_c
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$1100(Lcom/car/cloud/CarCloudService;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    add-int/lit8 v44, v44, 0x1

    goto :goto_c

    :cond_19
    const/16 v47, 0x0

    goto/16 :goto_4

    :cond_1a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1b

    const-string v4, "text"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v5}, Lcom/car/cloud/CarCloudService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f06002d

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_5

    :cond_1b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$type:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_b

    const-string v4, "text"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v5}, Lcom/car/cloud/CarCloudService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f06002f

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v47, 0x1

    goto/16 :goto_5

    :cond_1c
    const/16 v13, 0x32

    goto/16 :goto_6

    :cond_1d
    const-string v6, ""

    goto/16 :goto_7

    :cond_1e
    const-string v6, ""

    goto/16 :goto_8

    :cond_1f
    const/16 v13, 0x64

    goto/16 :goto_9

    :cond_20
    const-string v6, ""

    goto/16 :goto_a

    :cond_21
    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v44

    if-ne v0, v4, :cond_24

    :cond_22
    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v41, v0

    const/4 v4, 0x0

    const-string v5, "imgurl"

    aput-object v5, v41, v4

    const/4 v4, 0x1

    const-string v5, "imgurlrear"

    aput-object v5, v41, v4

    const/4 v4, 0x2

    const-string v5, "imgurlinside"

    aput-object v5, v41, v4

    move-object/from16 v23, v41

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v43, v0

    const/16 v37, 0x0

    :goto_d
    move/from16 v0, v37

    move/from16 v1, v43

    if-ge v0, v1, :cond_25

    aget-object v40, v23, v37

    invoke-virtual/range {v39 .. v40}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$1100(Lcom/car/cloud/CarCloudService;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/String;

    if-eqz v52, :cond_23

    invoke-virtual/range {v52 .. v52}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_23

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "CarSvc_CarCloudService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "change "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v48

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v52

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    add-int/lit8 v37, v37, 0x1

    goto :goto_d

    :cond_24
    add-int/lit8 v49, v49, -0x1

    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_b

    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v4}, Lcom/car/cloud/CarCloudService;->filesClean()V

    goto/16 :goto_0

    :cond_26
    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_27

    const-string v4, "text"

    const-string v5, "\u540e\u89c6\u955c\u5df2\u8f83\u957f\u65f6\u95f4\u5904\u4e8e\u8017\u7535\u72b6\u6001\uff0c\u91cd\u542f\u5f52\u4f4d"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v4}, Lcom/car/cloud/CarCloudService;->sendWakeLockInfo2Server()V

    goto/16 :goto_0

    :cond_27
    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_28

    const-string v4, "text"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v5}, Lcom/car/cloud/CarCloudService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f06002a

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    :cond_28
    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$type:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_29

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$type:I

    const/16 v5, 0xb

    if-eq v4, v5, :cond_29

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$type:I

    const/16 v5, 0xc

    if-ne v4, v5, :cond_1

    :cond_29
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/car/cloud/CarCloudService$5;->val$uid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/car/cloud/CarCloudService$5;->val$relayid:J

    const-string v12, "vring"

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/car/cloud/CarCloudService;->progressReport(Ljava/lang/String;JLjava/lang/String;I)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$type:I

    const/16 v5, 0xb

    if-ne v4, v5, :cond_35

    const-string v4, "text"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v5}, Lcom/car/cloud/CarCloudService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f06002c

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_e
    const/16 v25, -0x1

    const-string v4, "persist.remote.record.param"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/car/cloud/CarCloudService$5;->val$lengthForward:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/car/cloud/CarCloudService$5;->val$lengthBackward:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$camid:I

    if-eqz v4, :cond_2a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$camid:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2b

    :cond_2a
    const-string v4, "sys.car.dvr.accident.f"

    const-string v5, "3"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    const-string v4, "persist.usb.cam.bad"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2e

    invoke-static {}, Lcom/car/cloud/CarCloudService;->access$1200()Z

    move-result v4

    if-nez v4, :cond_2e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$camid:I

    if-eqz v4, :cond_2c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$camid:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2e

    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v4}, Lcom/car/cloud/CarCloudService;->isDualCVBS()Z

    move-result v4

    if-eqz v4, :cond_2d

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$camid:I

    if-eqz v4, :cond_2d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v4}, Lcom/car/cloud/CarCloudService;->insideOfDualCVBSisWorking()Z

    move-result v4

    if-eqz v4, :cond_2d

    const/16 v25, 0x1

    const-string v4, "/sys/power/utxd2_switch_control"

    const-string v5, "low"

    invoke-static {v4, v5}, Lcom/car/common/Util;->writeSysValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    const-string v4, "sys.car.dvr.accident.b"

    const-string v5, "3"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$camid:I

    if-eqz v4, :cond_2f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$camid:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_31

    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v4}, Lcom/car/cloud/CarCloudService;->isDualCVBS()Z

    move-result v4

    if-eqz v4, :cond_30

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$camid:I

    if-eqz v4, :cond_30

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v4}, Lcom/car/cloud/CarCloudService;->insideOfDualCVBSisWorking()Z

    move-result v4

    if-nez v4, :cond_30

    const/16 v25, 0x0

    const-string v4, "/sys/power/utxd2_switch_control"

    const-string v5, "high"

    invoke-static {v4, v5}, Lcom/car/common/Util;->writeSysValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    const-string v4, "sys.car.dvr.accident.b"

    const-string v5, "3"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/car/cloud/CarCloudService$5;->val$uid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/car/cloud/CarCloudService$5;->val$relayid:J

    const-string v12, "vring"

    const/16 v13, 0xa

    invoke-virtual/range {v8 .. v13}, Lcom/car/cloud/CarCloudService;->progressReport(Ljava/lang/String;JLjava/lang/String;I)V

    const/16 v33, 0x0

    new-instance v54, Ljava/util/ArrayList;

    invoke-direct/range {v54 .. v54}, Ljava/util/ArrayList;-><init>()V

    move/from16 v36, v33

    :goto_f
    add-int/lit8 v33, v36, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$lengthBackward:I

    add-int/lit8 v4, v4, 0x28

    move/from16 v0, v36

    if-ge v0, v4, :cond_32

    const-string v4, "sys.dvr.remotecap.front"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v4, "sys.dvr.remotecap.back"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v4, 0xa

    move/from16 v0, v33

    if-lt v0, v4, :cond_3d

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_37

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_37

    :cond_32
    if-ltz v25, :cond_33

    const-string v5, "/sys/power/utxd2_switch_control"

    if-nez v25, :cond_3e

    const-string v4, "low"

    :goto_10
    invoke-static {v5, v4}, Lcom/car/common/Util;->writeSysValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_44

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$100(Lcom/car/cloud/CarCloudService;)Z

    move-result v4

    if-eqz v4, :cond_44

    const/16 v49, 0x78

    :goto_11
    if-lez v49, :cond_40

    const/16 v44, 0x0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_34
    :goto_12
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$1100(Lcom/car/cloud/CarCloudService;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    add-int/lit8 v44, v44, 0x1

    goto :goto_12

    :cond_35
    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$type:I

    const/16 v5, 0xc

    if-ne v4, v5, :cond_36

    const-string v4, "text"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v5}, Lcom/car/cloud/CarCloudService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f06002f

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_e

    :cond_36
    const-string v4, "text"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v5}, Lcom/car/cloud/CarCloudService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f06002e

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_e

    :cond_37
    const-string v4, "videourl"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_39

    const-string v4, "3,"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/sdcard/Movies/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v4, "videourl"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->val$uid:Ljava/lang/String;

    if-eqz v4, :cond_38

    move-object/from16 v0, v54

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/Thread;

    new-instance v8, Lcom/car/cloud/CarCloudService$MyUploadRunnable;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/car/cloud/CarCloudService$5;->val$uid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/car/cloud/CarCloudService$5;->val$relayid:J

    invoke-direct/range {v8 .. v13}, Lcom/car/cloud/CarCloudService$MyUploadRunnable;-><init>(Lcom/car/cloud/CarCloudService;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {v4, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    :cond_38
    const-string v4, "CarSvc_CarCloudService"

    invoke-virtual/range {v39 .. v39}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "persist.usb.cam.bad"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_32

    invoke-static {}, Lcom/car/cloud/CarCloudService;->access$1200()Z

    move-result v4

    if-nez v4, :cond_32

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$camid:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_32

    :cond_39
    const-string v4, "videourlrear"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3b

    const-string v4, "3,"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/sdcard/Movies/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v4, "videourlrear"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->val$uid:Ljava/lang/String;

    if-eqz v4, :cond_3a

    move-object/from16 v0, v54

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/Thread;

    new-instance v12, Lcom/car/cloud/CarCloudService$MyUploadRunnable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/car/cloud/CarCloudService$5;->val$uid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/cloud/CarCloudService$5;->val$relayid:J

    move-wide/from16 v16, v0

    invoke-direct/range {v12 .. v17}, Lcom/car/cloud/CarCloudService$MyUploadRunnable;-><init>(Lcom/car/cloud/CarCloudService;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {v4, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    :cond_3a
    const-string v4, "CarSvc_CarCloudService"

    invoke-virtual/range {v39 .. v39}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$camid:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_32

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$camid:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_32

    :cond_3b
    :goto_13
    const-string v4, "videourl"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    const-string v4, "videourlrear"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_32

    :cond_3c
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    move/from16 v36, v33

    goto/16 :goto_f

    :cond_3d
    const/16 v4, 0x9

    move/from16 v0, v33

    if-ne v0, v4, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/CarCloudService$5;->val$uid:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/cloud/CarCloudService$5;->val$relayid:J

    move-wide/from16 v18, v0

    const-string v20, "vring"

    const/16 v21, 0x32

    invoke-virtual/range {v16 .. v21}, Lcom/car/cloud/CarCloudService;->progressReport(Ljava/lang/String;JLjava/lang/String;I)V

    goto :goto_13

    :cond_3e
    const-string v4, "high"

    goto/16 :goto_10

    :cond_3f
    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v44

    if-ne v0, v4, :cond_42

    :cond_40
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v41, v0

    const/4 v4, 0x0

    const-string v5, "videourl"

    aput-object v5, v41, v4

    const/4 v4, 0x1

    const-string v5, "videourlrear"

    aput-object v5, v41, v4

    move-object/from16 v23, v41

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v43, v0

    const/16 v37, 0x0

    :goto_14
    move/from16 v0, v37

    move/from16 v1, v43

    if-ge v0, v1, :cond_43

    aget-object v40, v23, v37

    invoke-virtual/range {v39 .. v40}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_41

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$1100(Lcom/car/cloud/CarCloudService;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/String;

    if-eqz v52, :cond_41

    invoke-virtual/range {v52 .. v52}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_41

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "CarSvc_CarCloudService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "change "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v48

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v52

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    add-int/lit8 v37, v37, 0x1

    goto :goto_14

    :cond_42
    add-int/lit8 v49, v49, -0x1

    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_11

    :cond_43
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v4}, Lcom/car/cloud/CarCloudService;->filesClean()V

    :cond_44
    const-string v4, "sys.dvr.remotecap.front"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "sys.dvr.remotecap.back"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/CarCloudService$5;->val$uid:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/cloud/CarCloudService$5;->val$relayid:J

    move-wide/from16 v18, v0

    const-string v20, "vring"

    const/16 v21, 0x64

    invoke-virtual/range {v16 .. v21}, Lcom/car/cloud/CarCloudService;->progressReport(Ljava/lang/String;JLjava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    iget-boolean v4, v4, Lcom/car/cloud/CarCloudService;->mMuteRecover:Z

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Lcom/car/cloud/CarCloudService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    iget v4, v4, Lcom/car/cloud/CarCloudService;->mTtsStreamType:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    iget v4, v4, Lcom/car/cloud/CarCloudService;->mTtsStreamType:I

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/car/cloud/CarCloudService;->mMuteRecover:Z

    goto/16 :goto_0

    :cond_45
    const-string v4, "persist.car.monitor.notify"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_4b

    new-instance v45, Lcom/car/cloud/Type$MsgInfo;

    invoke-direct/range {v45 .. v45}, Lcom/car/cloud/Type$MsgInfo;-><init>()V

    const-wide/16 v4, -0x2

    move-object/from16 v0, v45

    iput-wide v4, v0, Lcom/car/cloud/Type$MsgInfo;->msgIndex:J

    invoke-virtual/range {v39 .. v39}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v45

    iput-object v4, v0, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    const-string v4, "alarm"

    move-object/from16 v0, v45

    iput-object v4, v0, Lcom/car/cloud/Type$MsgInfo;->msgType:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    move-object/from16 v0, v45

    iput-wide v4, v0, Lcom/car/cloud/Type$MsgInfo;->sendTime:J

    const-string v4, "3rdparty"

    move-object/from16 v0, v45

    iput-object v4, v0, Lcom/car/cloud/Type$MsgInfo;->to:Ljava/lang/String;

    const-string v4, "persist.car.monitor.notify"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4a

    new-instance v33, Landroid/content/Intent;

    invoke-direct/range {v33 .. v33}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.car.monitor.notify"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "operation"

    const-string v5, "capd"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "percent"

    const/16 v5, 0x64

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "result"

    move-object/from16 v0, v45

    iget-object v5, v0, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "CarSvc_CarCloudService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "monitor: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v45

    iget-object v7, v0, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Lcom/car/cloud/CarCloudService;->sendBroadcast(Landroid/content/Intent;)V

    :cond_46
    :goto_15
    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$type:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_47

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/cloud/CarCloudService$5;->val$type:I

    const/16 v5, 0xb

    if-ne v4, v5, :cond_49

    :cond_47
    const-string v4, "ro.galarm.delay"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v30

    if-lez v30, :cond_49

    const-string v4, "time"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v34

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    div-long v28, v4, v8

    sub-long v4, v28, v34

    long-to-int v0, v4

    move/from16 v42, v0

    sub-int v55, v30, v42

    if-lez v55, :cond_48

    const/16 v27, 0x0

    :goto_16
    move/from16 v0, v27

    move/from16 v1, v55

    if-gt v0, v1, :cond_48

    const-string v4, "sys.car.sleep"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4e

    :cond_48
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v4}, Lcom/car/cloud/CarCloudService;->access$1400(Lcom/car/cloud/CarCloudService;)Z

    move-result v4

    if-eqz v4, :cond_49

    const-string v4, "CarSvc_CarCloudService"

    const-string v5, "don\'t report g alarm since acc on right now"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->clear()V

    :cond_49
    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$5;->val$uid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/car/cloud/CarCloudService$5;->val$relayid:J

    move-object/from16 v0, v46

    invoke-virtual {v4, v0, v5, v8, v9}, Lcom/car/cloud/CarCloudService;->try2SendMsgAlarm(Ljava/util/List;Ljava/lang/String;J)V

    goto/16 :goto_2

    :cond_4a
    move-object/from16 v0, v46

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "CarSvc_CarCloudService"

    invoke-virtual/range {v45 .. v45}, Lcom/car/cloud/Type$MsgInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_4b
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/car/cloud/CarCloudService$5;->val$relayid:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-lez v4, :cond_46

    new-instance v33, Landroid/content/Intent;

    invoke-direct/range {v33 .. v33}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.car.monitor.notify"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "operation"

    const-string v5, "capd"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "id"

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/car/cloud/CarCloudService$5;->val$relayid:J

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "percent"

    const/16 v5, 0x64

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "result"

    invoke-virtual/range {v39 .. v39}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "CarSvc_CarCloudService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "monitor: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v39 .. v39}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Lcom/car/cloud/CarCloudService;->sendBroadcast(Landroid/content/Intent;)V

    const-wide/16 v4, 0xbb8

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    iget-boolean v4, v4, Lcom/car/cloud/CarCloudService;->mSuspendNow:Z

    if-eqz v4, :cond_4c

    const-string v4, "sys.car.sleep"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/car/cloud/CarCloudService;->keepAwake(Z)V

    goto/16 :goto_3

    :cond_4d
    new-instance v45, Lcom/car/cloud/Type$MsgInfo;

    invoke-direct/range {v45 .. v45}, Lcom/car/cloud/Type$MsgInfo;-><init>()V

    const-wide/16 v4, -0x1

    move-object/from16 v0, v45

    iput-wide v4, v0, Lcom/car/cloud/Type$MsgInfo;->msgIndex:J

    invoke-virtual/range {v39 .. v39}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v45

    iput-object v4, v0, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    const-string v4, "alarm"

    move-object/from16 v0, v45

    iput-object v4, v0, Lcom/car/cloud/Type$MsgInfo;->msgType:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    move-object/from16 v0, v45

    iput-wide v4, v0, Lcom/car/cloud/Type$MsgInfo;->sendTime:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudService$5;->val$uid:Ljava/lang/String;

    move-object/from16 v0, v45

    iput-object v4, v0, Lcom/car/cloud/Type$MsgInfo;->to:Ljava/lang/String;

    move-object/from16 v0, v46

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    :cond_4e
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_16
.end method
