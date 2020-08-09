.class Lcom/car/cloud/CarCloudService$MyLock;
.super Ljava/lang/Object;
.source "CarCloudService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/cloud/CarCloudService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyLock"
.end annotation


# instance fields
.field public isNotify:Z

.field final synthetic this$0:Lcom/car/cloud/CarCloudService;

.field public validUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/car/cloud/CarCloudService;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/CarCloudService$MyLock;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
