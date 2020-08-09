.class Lcom/car/cloud/CarCloudActivity$2;
.super Ljava/lang/Object;
.source "CarCloudActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/CarCloudActivity;->refreshLoginWebServer(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/CarCloudActivity;

.field final synthetic val$login:Z


# direct methods
.method constructor <init>(Lcom/car/cloud/CarCloudActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/CarCloudActivity$2;->this$0:Lcom/car/cloud/CarCloudActivity;

    iput-boolean p2, p0, Lcom/car/cloud/CarCloudActivity$2;->val$login:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/car/cloud/CarCloudActivity$2;->this$0:Lcom/car/cloud/CarCloudActivity;

    iget-boolean v2, p0, Lcom/car/cloud/CarCloudActivity$2;->val$login:Z

    invoke-static {v1, v2}, Lcom/car/cloud/CarCloudActivity;->access$302(Lcom/car/cloud/CarCloudActivity;Z)Z

    iget-object v1, p0, Lcom/car/cloud/CarCloudActivity$2;->this$0:Lcom/car/cloud/CarCloudActivity;

    invoke-static {v1}, Lcom/car/cloud/CarCloudActivity;->access$300(Lcom/car/cloud/CarCloudActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/car/cloud/WebSocketUtil;->getBondList(Z)V

    iget-object v1, p0, Lcom/car/cloud/CarCloudActivity$2;->this$0:Lcom/car/cloud/CarCloudActivity;

    invoke-static {v1}, Lcom/car/cloud/CarCloudActivity;->access$400(Lcom/car/cloud/CarCloudActivity;)Lcom/car/cloud/UserAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/car/cloud/UserAdapter;->notifyDataSetChanged()V

    :goto_0
    iget-object v1, p0, Lcom/car/cloud/CarCloudActivity$2;->this$0:Lcom/car/cloud/CarCloudActivity;

    invoke-static {v1}, Lcom/car/cloud/CarCloudActivity;->access$500(Lcom/car/cloud/CarCloudActivity;)Lcom/car/cloud/MessageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/car/cloud/MessageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/cloud/CarCloudActivity$2;->this$0:Lcom/car/cloud/CarCloudActivity;

    invoke-virtual {v1}, Lcom/car/cloud/CarCloudActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/car/cloud/CarCloudActivity$2;->this$0:Lcom/car/cloud/CarCloudActivity;

    const/high16 v3, 0x7f060000

    invoke-virtual {v2, v3}, Lcom/car/cloud/CarCloudActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/car/cloud/CarCloudActivity$2;->this$0:Lcom/car/cloud/CarCloudActivity;

    iget-object v1, p0, Lcom/car/cloud/CarCloudActivity$2;->this$0:Lcom/car/cloud/CarCloudActivity;

    invoke-static {v1}, Lcom/car/cloud/CarCloudActivity;->access$300(Lcom/car/cloud/CarCloudActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f06001e

    :goto_1
    invoke-virtual {v3, v1}, Lcom/car/cloud/CarCloudActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/car/cloud/CarCloudActivity$2;->this$0:Lcom/car/cloud/CarCloudActivity;

    invoke-static {v1}, Lcom/car/cloud/CarCloudActivity;->access$400(Lcom/car/cloud/CarCloudActivity;)Lcom/car/cloud/UserAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/car/cloud/UserAdapter;->clearUserStatus()V

    goto :goto_0

    :cond_2
    const v1, 0x7f06001f

    goto :goto_1
.end method
