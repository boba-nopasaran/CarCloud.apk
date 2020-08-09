.class Lcom/car/cloud/CarCloudService$MyUploadRunnable;
.super Ljava/lang/Object;
.source "CarCloudService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/cloud/CarCloudService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyUploadRunnable"
.end annotation


# instance fields
.field mPath:Ljava/lang/String;

.field mRelayId:J

.field mUid:Ljava/lang/String;

.field final synthetic this$0:Lcom/car/cloud/CarCloudService;


# direct methods
.method constructor <init>(Lcom/car/cloud/CarCloudService;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/CarCloudService$MyUploadRunnable;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/car/cloud/CarCloudService$MyUploadRunnable;->mPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/car/cloud/CarCloudService$MyUploadRunnable;->mUid:Ljava/lang/String;

    iput-wide p4, p0, Lcom/car/cloud/CarCloudService$MyUploadRunnable;->mRelayId:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/car/common/CarUtil;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/car/cloud/CarCloudService$MyUploadRunnable;->mPath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/car/cloud/CarCloudService$MyUploadRunnable;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v2, p0, Lcom/car/cloud/CarCloudService$MyUploadRunnable;->mPath:Ljava/lang/String;

    const-string v4, "alarm"

    iget-object v5, p0, Lcom/car/cloud/CarCloudService$MyUploadRunnable;->mUid:Ljava/lang/String;

    iget-wide v6, p0, Lcom/car/cloud/CarCloudService$MyUploadRunnable;->mRelayId:J

    invoke-virtual/range {v1 .. v7}, Lcom/car/cloud/CarCloudService;->try2UploadOss(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/car/cloud/CarCloudService$MyUploadRunnable;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v1}, Lcom/car/cloud/CarCloudService;->access$1100(Lcom/car/cloud/CarCloudService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/car/cloud/CarCloudService$MyUploadRunnable;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/car/cloud/CarCloudService$MyUploadRunnable;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v1}, Lcom/car/cloud/CarCloudService;->access$1100(Lcom/car/cloud/CarCloudService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/car/cloud/CarCloudService$MyUploadRunnable;->mPath:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
