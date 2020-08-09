.class Lcom/car/cloud/CarCloudService$11$1;
.super Ljava/lang/Object;
.source "CarCloudService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/CarCloudService$11;->onMsgNotify(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/cloud/CarCloudService$11;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/car/cloud/CarCloudService$11;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/CarCloudService$11$1;->this$1:Lcom/car/cloud/CarCloudService$11;

    iput-object p2, p0, Lcom/car/cloud/CarCloudService$11$1;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$11$1;->val$list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$11$1;->this$1:Lcom/car/cloud/CarCloudService$11;

    iget-object v0, v0, Lcom/car/cloud/CarCloudService$11;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v1, p0, Lcom/car/cloud/CarCloudService$11$1;->val$list:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/car/cloud/CarCloudService;->try2SendMsgAlarm(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/car/cloud/CarCloudService$11$1;->this$1:Lcom/car/cloud/CarCloudService$11;

    iget-object v0, v0, Lcom/car/cloud/CarCloudService$11;->this$0:Lcom/car/cloud/CarCloudService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/car/cloud/CarCloudService;->keepAwake(Z)V

    return-void
.end method
