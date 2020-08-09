.class Lcom/car/cloud/CarCloudService$LivingClient;
.super Ljava/lang/Object;
.source "CarCloudService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/cloud/CarCloudService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LivingClient"
.end annotation


# instance fields
.field mCamID:I

.field mRelayId:J

.field mUnionId:Ljava/lang/String;

.field final synthetic this$0:Lcom/car/cloud/CarCloudService;


# direct methods
.method constructor <init>(Lcom/car/cloud/CarCloudService;Ljava/lang/String;JI)V
    .locals 1

    iput-object p1, p0, Lcom/car/cloud/CarCloudService$LivingClient;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/car/cloud/CarCloudService$LivingClient;->mUnionId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/car/cloud/CarCloudService$LivingClient;->mRelayId:J

    iput p5, p0, Lcom/car/cloud/CarCloudService$LivingClient;->mCamID:I

    return-void
.end method
