.class Lcom/car/cloud/CarCloudService$MyCloudCallback$7;
.super Ljava/lang/Object;
.source "CarCloudService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/CarCloudService$MyCloudCallback;->onRequestTodayGPS(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/car/cloud/CarCloudService$MyCloudCallback;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$7;->this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    iput-object p2, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$7;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$7;->this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    iget-object v0, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v0}, Lcom/car/cloud/CarCloudService;->access$1500(Lcom/car/cloud/CarCloudService;)Lcom/car/cloud/CarCloudGPSDataUploadThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$7;->this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    iget-object v0, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v0}, Lcom/car/cloud/CarCloudService;->access$1500(Lcom/car/cloud/CarCloudService;)Lcom/car/cloud/CarCloudGPSDataUploadThread;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$7;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->requestTodayGPSData(Ljava/nio/ByteBuffer;)I

    :cond_0
    return-void
.end method
