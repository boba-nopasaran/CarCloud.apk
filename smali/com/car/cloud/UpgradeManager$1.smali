.class Lcom/car/cloud/UpgradeManager$1;
.super Ljava/lang/Object;
.source "UpgradeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/UpgradeManager;->showUpgradeUI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/UpgradeManager;

.field final synthetic val$historyTip:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/car/cloud/UpgradeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/UpgradeManager$1;->this$0:Lcom/car/cloud/UpgradeManager;

    iput-object p2, p0, Lcom/car/cloud/UpgradeManager$1;->val$version:Ljava/lang/String;

    iput-object p3, p0, Lcom/car/cloud/UpgradeManager$1;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/car/cloud/UpgradeManager$1;->val$historyTip:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const v4, 0x7f06000d

    const-string v1, "CarCloud_UpgradeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "version = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/car/cloud/UpgradeManager$1;->val$version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CarCloud_UpgradeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/car/cloud/UpgradeManager$1;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CarCloud_UpgradeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "historyTip = \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/car/cloud/UpgradeManager$1;->val$historyTip:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/cloud/UpgradeManager$1;->this$0:Lcom/car/cloud/UpgradeManager;

    invoke-static {v1}, Lcom/car/cloud/UpgradeManager;->access$000(Lcom/car/cloud/UpgradeManager;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/cloud/UpgradeManager$1;->this$0:Lcom/car/cloud/UpgradeManager;

    invoke-static {v1}, Lcom/car/cloud/UpgradeManager;->access$000(Lcom/car/cloud/UpgradeManager;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/car/cloud/UpgradeManager$1;->this$0:Lcom/car/cloud/UpgradeManager;

    invoke-static {v1}, Lcom/car/cloud/UpgradeManager;->access$100(Lcom/car/cloud/UpgradeManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/car/cloud/UpgradeManager$1;->val$version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/car/cloud/UpgradeManager$1;->this$0:Lcom/car/cloud/UpgradeManager;

    invoke-static {v1}, Lcom/car/cloud/UpgradeManager;->access$100(Lcom/car/cloud/UpgradeManager;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06000e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/car/cloud/UpgradeManager$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/car/cloud/UpgradeManager$1;->this$0:Lcom/car/cloud/UpgradeManager;

    invoke-static {v1}, Lcom/car/cloud/UpgradeManager;->access$100(Lcom/car/cloud/UpgradeManager;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06000f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/car/cloud/UpgradeManager$1;->this$0:Lcom/car/cloud/UpgradeManager;

    invoke-static {v1}, Lcom/car/cloud/UpgradeManager;->access$100(Lcom/car/cloud/UpgradeManager;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060010

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/car/cloud/UpgradeManager$1;->val$historyTip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/car/cloud/UpgradeManager$1;->this$0:Lcom/car/cloud/UpgradeManager;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/car/cloud/UpgradeManager$1;->this$0:Lcom/car/cloud/UpgradeManager;

    invoke-static {v3}, Lcom/car/cloud/UpgradeManager;->access$100(Lcom/car/cloud/UpgradeManager;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f06000b

    new-instance v4, Lcom/car/cloud/UpgradeManager$1$2;

    invoke-direct {v4, p0}, Lcom/car/cloud/UpgradeManager$1$2;-><init>(Lcom/car/cloud/UpgradeManager$1;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f06000c

    new-instance v4, Lcom/car/cloud/UpgradeManager$1$1;

    invoke-direct {v4, p0}, Lcom/car/cloud/UpgradeManager$1$1;-><init>(Lcom/car/cloud/UpgradeManager$1;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/car/cloud/UpgradeManager;->access$002(Lcom/car/cloud/UpgradeManager;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/car/cloud/UpgradeManager$1;->this$0:Lcom/car/cloud/UpgradeManager;

    invoke-static {v1}, Lcom/car/cloud/UpgradeManager;->access$000(Lcom/car/cloud/UpgradeManager;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-object v1, p0, Lcom/car/cloud/UpgradeManager$1;->this$0:Lcom/car/cloud/UpgradeManager;

    invoke-static {v1}, Lcom/car/cloud/UpgradeManager;->access$000(Lcom/car/cloud/UpgradeManager;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
