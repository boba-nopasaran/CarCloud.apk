.class Lcom/car/cloud/CloudApplication$1;
.super Ljava/lang/Object;
.source "CloudApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/CloudApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/CloudApplication;


# direct methods
.method constructor <init>(Lcom/car/cloud/CloudApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/CloudApplication$1;->this$0:Lcom/car/cloud/CloudApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/cloud/CloudApplication$1;->this$0:Lcom/car/cloud/CloudApplication;

    const-class v2, Lcom/car/cloud/CarCloudService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/car/cloud/CloudApplication$1;->this$0:Lcom/car/cloud/CloudApplication;

    invoke-virtual {v1, v0}, Lcom/car/cloud/CloudApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
