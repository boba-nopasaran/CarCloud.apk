.class Lcom/car/cloud/CarCloudGPSDataUploadThread$1;
.super Ljava/lang/Object;
.source "CarCloudGPSDataUploadThread.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/cloud/CarCloudGPSDataUploadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;


# direct methods
.method constructor <init>(Lcom/car/cloud/CarCloudGPSDataUploadThread;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$1;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$1;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-static {v0}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->access$000(Lcom/car/cloud/CarCloudGPSDataUploadThread;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "connect to CarGPSService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$1;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-static {p2}, Lcom/car/gpsservice/ICarGPSService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/car/gpsservice/ICarGPSService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->access$102(Lcom/car/cloud/CarCloudGPSDataUploadThread;Lcom/car/gpsservice/ICarGPSService;)Lcom/car/gpsservice/ICarGPSService;

    iget-object v0, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$1;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-static {v0}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->access$200(Lcom/car/cloud/CarCloudGPSDataUploadThread;)Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;

    move-result-object v0

    const/16 v1, 0x2718

    invoke-virtual {v0, v1}, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->removeMessages(I)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    const/16 v4, 0x2718

    iget-object v0, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$1;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-static {v0}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->access$000(Lcom/car/cloud/CarCloudGPSDataUploadThread;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "disconnect CarGPSService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$1;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->access$102(Lcom/car/cloud/CarCloudGPSDataUploadThread;Lcom/car/gpsservice/ICarGPSService;)Lcom/car/gpsservice/ICarGPSService;

    iget-object v0, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$1;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-static {v0}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->access$200(Lcom/car/cloud/CarCloudGPSDataUploadThread;)Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread$1;->this$0:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-static {v0}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->access$200(Lcom/car/cloud/CarCloudGPSDataUploadThread;)Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;

    move-result-object v0

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v4, v2, v3}, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
