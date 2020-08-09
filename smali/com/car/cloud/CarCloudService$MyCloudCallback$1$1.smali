.class Lcom/car/cloud/CarCloudService$MyCloudCallback$1$1;
.super Ljava/lang/Object;
.source "CarCloudService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/CarCloudService$MyCloudCallback$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/car/cloud/CarCloudService$MyCloudCallback$1;


# direct methods
.method constructor <init>(Lcom/car/cloud/CarCloudService$MyCloudCallback$1;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$1$1;->this$2:Lcom/car/cloud/CarCloudService$MyCloudCallback$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$1$1;->this$2:Lcom/car/cloud/CarCloudService$MyCloudCallback$1;

    iget-object v1, v1, Lcom/car/cloud/CarCloudService$MyCloudCallback$1;->val$ui:Lcom/car/cloud/Type$UserInfo;

    iget-object v1, v1, Lcom/car/cloud/Type$UserInfo;->unionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/car/cloud/WebSocketUtil;->removeBond(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$1$1;->this$2:Lcom/car/cloud/CarCloudService$MyCloudCallback$1;

    iget-object v0, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback$1;->this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    iget-object v0, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v0}, Lcom/car/cloud/CarCloudService;->access$1700(Lcom/car/cloud/CarCloudService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
