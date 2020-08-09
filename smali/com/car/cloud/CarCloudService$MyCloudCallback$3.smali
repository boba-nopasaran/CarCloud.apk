.class Lcom/car/cloud/CarCloudService$MyCloudCallback$3;
.super Ljava/lang/Object;
.source "CarCloudService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/CarCloudService$MyCloudCallback;->onPickupInfo(DDLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

.field final synthetic val$lat:D

.field final synthetic val$lng:D

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/car/cloud/CarCloudService$MyCloudCallback;DDLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$3;->this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    iput-wide p2, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$3;->val$lat:D

    iput-wide p4, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$3;->val$lng:D

    iput-object p6, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$3;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.car.navi.go"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "lat"

    iget-wide v2, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$3;->val$lat:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v1, "lng"

    iget-wide v2, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$3;->val$lng:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v1, "addr"

    iget-object v2, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$3;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$3;->this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    iget-object v1, v1, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v1, v0}, Lcom/car/cloud/CarCloudService;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$3;->this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    iget-object v1, v1, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v1}, Lcom/car/cloud/CarCloudService;->access$1700(Lcom/car/cloud/CarCloudService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x6a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
