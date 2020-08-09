.class public Lcom/car/cloud/CarCloudService$LocalBinder;
.super Landroid/os/Binder;
.source "CarCloudService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/cloud/CarCloudService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/CarCloudService;


# direct methods
.method public constructor <init>(Lcom/car/cloud/CarCloudService;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/CarCloudService$LocalBinder;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/car/cloud/CarCloudService;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$LocalBinder;->this$0:Lcom/car/cloud/CarCloudService;

    return-object v0
.end method
