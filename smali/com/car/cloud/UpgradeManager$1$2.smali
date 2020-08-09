.class Lcom/car/cloud/UpgradeManager$1$2;
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

    iput-object p1, p0, Lcom/car/cloud/UpgradeManager$1$2;->this$1:Lcom/car/cloud/UpgradeManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v2, p0, Lcom/car/cloud/UpgradeManager$1$2;->this$1:Lcom/car/cloud/UpgradeManager$1;

    iget-object v2, v2, Lcom/car/cloud/UpgradeManager$1;->this$0:Lcom/car/cloud/UpgradeManager;

    invoke-static {v2}, Lcom/car/cloud/UpgradeManager;->access$200(Lcom/car/cloud/UpgradeManager;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/car/cloud/UpgradeManager$1$2;->this$1:Lcom/car/cloud/UpgradeManager$1;

    iget-object v2, v2, Lcom/car/cloud/UpgradeManager$1;->this$0:Lcom/car/cloud/UpgradeManager;

    invoke-static {v2}, Lcom/car/cloud/UpgradeManager;->access$100(Lcom/car/cloud/UpgradeManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "ignore_version"

    iget-object v3, p0, Lcom/car/cloud/UpgradeManager$1$2;->this$1:Lcom/car/cloud/UpgradeManager$1;

    iget-object v3, v3, Lcom/car/cloud/UpgradeManager$1;->val$version:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
