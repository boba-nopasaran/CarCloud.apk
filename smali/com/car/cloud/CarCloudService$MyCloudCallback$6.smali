.class Lcom/car/cloud/CarCloudService$MyCloudCallback$6;
.super Ljava/lang/Object;
.source "CarCloudService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/CarCloudService$MyCloudCallback;->onGPSHistoryFileReceived(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

.field final synthetic val$day:Ljava/lang/String;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/car/cloud/CarCloudService$MyCloudCallback;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$6;->this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    iput-object p2, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$6;->val$day:Ljava/lang/String;

    iput p3, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$6;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$6;->this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    iget-object v0, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v0}, Lcom/car/cloud/CarCloudService;->access$1500(Lcom/car/cloud/CarCloudService;)Lcom/car/cloud/CarCloudGPSDataUploadThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$6;->this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    iget-object v0, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v0}, Lcom/car/cloud/CarCloudService;->access$1500(Lcom/car/cloud/CarCloudService;)Lcom/car/cloud/CarCloudGPSDataUploadThread;

    move-result-object v0

    iget-object v1, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$6;->val$day:Ljava/lang/String;

    iget v2, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$6;->val$status:I

    invoke-virtual {v0, v1, v2}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->deleteLastSendGPSFile(Ljava/lang/String;I)I

    :cond_0
    return-void
.end method
