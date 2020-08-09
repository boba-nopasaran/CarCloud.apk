.class Lcom/car/cloud/UpgradeManager$1$1;
.super Ljava/lang/Object;
.source "UpgradeManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/UpgradeManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/cloud/UpgradeManager$1;


# direct methods
.method constructor <init>(Lcom/car/cloud/UpgradeManager$1;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/UpgradeManager$1$1;->this$1:Lcom/car/cloud/UpgradeManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/16 v1, 0x65

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/car/cloud/UpgradeManager$1$1;->this$1:Lcom/car/cloud/UpgradeManager$1;

    iget-object v0, v0, Lcom/car/cloud/UpgradeManager$1;->this$0:Lcom/car/cloud/UpgradeManager;

    invoke-static {v0}, Lcom/car/cloud/UpgradeManager;->access$200(Lcom/car/cloud/UpgradeManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/cloud/UpgradeManager$1$1;->this$1:Lcom/car/cloud/UpgradeManager$1;

    iget-object v0, v0, Lcom/car/cloud/UpgradeManager$1;->this$0:Lcom/car/cloud/UpgradeManager;

    invoke-static {v0}, Lcom/car/cloud/UpgradeManager;->access$200(Lcom/car/cloud/UpgradeManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
