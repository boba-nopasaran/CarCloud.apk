.class Lcom/car/cloud/CarCloudService$MyCloudCallback$9;
.super Ljava/lang/Object;
.source "CarCloudService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/CarCloudService$MyCloudCallback;->onVoiceReceived(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

.field final synthetic val$bucket:Ljava/lang/String;

.field final synthetic val$endPoint:Ljava/lang/String;

.field final synthetic val$objKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/car/cloud/CarCloudService$MyCloudCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$9;->this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    iput-object p2, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$9;->val$endPoint:Ljava/lang/String;

    iput-object p3, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$9;->val$bucket:Ljava/lang/String;

    iput-object p4, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$9;->val$objKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    new-instance v3, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;

    invoke-static {}, Lcom/car/cloud/CarCloudService;->access$2900()Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Lcom/car/cloud/CarCloudService;->access$3000()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v1}, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lcom/alibaba/sdk/android/oss/OSSClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback$9;->this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/car/cloud/CarCloudService;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback$9;->val$endPoint:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v13, v0, v1, v3}, Lcom/alibaba/sdk/android/oss/OSSClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;)V

    new-instance v8, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback$9;->val$bucket:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback$9;->val$objKey:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v8, v0, v1}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {v13, v8}, Lcom/alibaba/sdk/android/oss/OSS;->getObject(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;)Lcom/alibaba/sdk/android/oss/model/GetObjectResult;

    move-result-object v9

    const-string v16, "CarSvc_CarCloudService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Content-Length: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v9}, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->getContentLength()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "/sdcard/Music/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback$9;->val$objKey:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v9}, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->getObjectContent()Ljava/io/InputStream;

    move-result-object v10

    const/16 v16, 0x800

    move/from16 v0, v16

    new-array v2, v0, [B

    :goto_0
    invoke-virtual {v10, v2}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v11, v0, :cond_0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v2, v0, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Lcom/alibaba/sdk/android/oss/ClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/ClientException;->printStackTrace()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    new-instance v12, Landroid/media/MediaPlayer;

    invoke-direct {v12}, Landroid/media/MediaPlayer;-><init>()V

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    invoke-virtual {v12, v14}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    new-instance v16, Lcom/car/cloud/CarCloudService$MyCloudCallback$9$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/car/cloud/CarCloudService$MyCloudCallback$9$1;-><init>(Lcom/car/cloud/CarCloudService$MyCloudCallback$9;Ljava/io/File;)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback$9;->this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/cloud/CarCloudService;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback$9;->this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/car/cloud/CarCloudService;->access$3100(Lcom/car/cloud/CarCloudService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v17

    const/16 v18, 0x3

    const/16 v19, 0x3

    invoke-virtual/range {v16 .. v19}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v15

    invoke-virtual {v12}, Landroid/media/MediaPlayer;->prepare()V

    invoke-virtual {v12}, Landroid/media/MediaPlayer;->start()V

    new-instance v4, Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback$9;->val$bucket:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback$9;->val$objKey:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1}, Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v13, v4, v0}, Lcom/alibaba/sdk/android/oss/OSS;->asyncDeleteObject(Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    :try_end_1
    .catch Lcom/alibaba/sdk/android/oss/ClientException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_1
    move-exception v5

    const-string v16, "CarSvc_CarCloudService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "RequestId"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/ServiceException;->getRequestId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v16, "CarSvc_CarCloudService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ErrorCode"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/ServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v16, "CarSvc_CarCloudService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "HostId"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/ServiceException;->getHostId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v16, "CarSvc_CarCloudService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "RawMessage"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/ServiceException;->getRawMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1
.end method
