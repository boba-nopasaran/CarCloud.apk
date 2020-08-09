.class Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;
.super Landroid/os/Handler;
.source "CarCloudGPSDataUploadThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/cloud/CarCloudGPSDataUploadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GPSHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;


# direct methods
.method constructor <init>(Lcom/car/cloud/CarCloudGPSDataUploadThread;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    const/16 v13, 0x2718

    const/4 v8, 0x1

    const/4 v11, 0x0

    const/16 v10, 0x2714

    const/16 v12, 0x2713

    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-lez v6, :cond_0

    iget-object v7, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    int-to-long v8, v6

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-static {v7, v8, v9}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->access$302(Lcom/car/cloud/CarCloudGPSDataUploadThread;J)J

    :cond_0
    iget-object v7, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-static {v7}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->access$000(Lcom/car/cloud/CarCloudGPSDataUploadThread;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setGPSUpdateInterval mGPSUpdateInterval = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-static {v9}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->access$300(Lcom/car/cloud/CarCloudGPSDataUploadThread;)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v12}, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_1
    iget-object v7, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v7, v8}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->access$402(Lcom/car/cloud/CarCloudGPSDataUploadThread;I)I

    iget-object v7, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-static {v7}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->access$000(Lcom/car/cloud/CarCloudGPSDataUploadThread;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Last Update GPS time is:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-static {v9}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->access$400(Lcom/car/cloud/CarCloudGPSDataUploadThread;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-static {v7, v4}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->access$500(Lcom/car/cloud/CarCloudGPSDataUploadThread;Ljava/nio/ByteBuffer;)I

    goto :goto_0

    :pswitch_3
    iget-object v7, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-static {v7}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->access$600(Lcom/car/cloud/CarCloudGPSDataUploadThread;)V

    invoke-virtual {p0, v12}, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->removeMessages(I)V

    iget-object v7, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-static {v7}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->access$300(Lcom/car/cloud/CarCloudGPSDataUploadThread;)J

    move-result-wide v8

    invoke-virtual {p0, v12, v8, v9}, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_4
    iget-object v7, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-static {v7}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->access$700(Lcom/car/cloud/CarCloudGPSDataUploadThread;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-virtual {v7}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->sendHistoryGPSCompressData()V

    :cond_1
    iget-object v7, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-static {v7}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->access$800(Lcom/car/cloud/CarCloudGPSDataUploadThread;)I

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p0, v10}, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_2
    const-wide/32 v8, 0xea60

    invoke-virtual {p0, v10, v8, v9}, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v5, p1, Landroid/os/Message;->arg1:I

    :try_start_0
    iget-object v7, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-static {v7}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->access$700(Lcom/car/cloud/CarCloudGPSDataUploadThread;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    if-nez v5, :cond_4

    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-static {v7}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->access$700(Lcom/car/cloud/CarCloudGPSDataUploadThread;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-static {v9}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->access$700(Lcom/car/cloud/CarCloudGPSDataUploadThread;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".bak"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    iget-object v7, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-static {v7}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->access$000(Lcom/car/cloud/CarCloudGPSDataUploadThread;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Server received :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-static {v9}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->access$700(Lcom/car/cloud/CarCloudGPSDataUploadThread;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Rename it security"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-static {v7, v11}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->access$702(Lcom/car/cloud/CarCloudGPSDataUploadThread;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-static {v7}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->access$000(Lcom/car/cloud/CarCloudGPSDataUploadThread;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Server received GPS History Failed, Retry Later"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v7, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-static {v7, v11}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->access$702(Lcom/car/cloud/CarCloudGPSDataUploadThread;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-static {v8, v11}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->access$702(Lcom/car/cloud/CarCloudGPSDataUploadThread;Ljava/lang/String;)Ljava/lang/String;

    throw v7

    :pswitch_6
    invoke-virtual {p0, v12}, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->sendEmptyMessage(I)Z

    invoke-virtual {p0, v10}, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->sendEmptyMessage(I)Z

    iget-object v7, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-static {v7}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->access$000(Lcom/car/cloud/CarCloudGPSDataUploadThread;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Start Send GPS data"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p0, v12}, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->removeMessages(I)V

    invoke-virtual {p0, v10}, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->removeMessages(I)V

    const/16 v7, 0x2712

    invoke-virtual {p0, v7}, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->removeMessages(I)V

    iget-object v7, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-static {v7}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->access$000(Lcom/car/cloud/CarCloudGPSDataUploadThread;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Stop Send GPS data"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_8
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.car.gpsservice.CarGPSService"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "com.car.carservice"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "from_remote_process"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_3
    iget-object v7, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-static {v7}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->access$1000(Lcom/car/cloud/CarCloudGPSDataUploadThread;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-static {v8}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->access$900(Lcom/car/cloud/CarCloudGPSDataUploadThread;)Landroid/content/ServiceConnection;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v7, v3, v8, v9}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    iget-object v7, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-static {v7}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->access$200(Lcom/car/cloud/CarCloudGPSDataUploadThread;)Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->removeMessages(I)V

    iget-object v7, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-static {v7}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->access$200(Lcom/car/cloud/CarCloudGPSDataUploadThread;)Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;

    move-result-object v7

    const-wide/16 v8, 0x2710

    invoke-virtual {v7, v13, v8, v9}, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :catch_1
    move-exception v1

    iget-object v7, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-static {v7}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->access$000(Lcom/car/cloud/CarCloudGPSDataUploadThread;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
