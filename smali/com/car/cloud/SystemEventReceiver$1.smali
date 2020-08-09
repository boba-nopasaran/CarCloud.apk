.class Lcom/car/cloud/SystemEventReceiver$1;
.super Ljava/lang/Object;
.source "SystemEventReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/SystemEventReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/SystemEventReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/car/cloud/SystemEventReceiver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/SystemEventReceiver$1;->this$0:Lcom/car/cloud/SystemEventReceiver;

    iput-object p2, p0, Lcom/car/cloud/SystemEventReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/cloud/SystemEventReceiver$1;->val$context:Landroid/content/Context;

    const-class v2, Lcom/car/cloud/CarCloudService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/car/cloud/SystemEventReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
