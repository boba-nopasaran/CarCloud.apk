.class Lcom/car/cloud/QRActivity$2;
.super Ljava/lang/Object;
.source "QRActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/QRActivity;->refreshLoginWebServer(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/QRActivity;

.field final synthetic val$login:Z


# direct methods
.method constructor <init>(Lcom/car/cloud/QRActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/QRActivity$2;->this$0:Lcom/car/cloud/QRActivity;

    iput-boolean p2, p0, Lcom/car/cloud/QRActivity$2;->val$login:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/car/cloud/QRActivity$2;->this$0:Lcom/car/cloud/QRActivity;

    iget-boolean v2, p0, Lcom/car/cloud/QRActivity$2;->val$login:Z

    invoke-static {v1, v2}, Lcom/car/cloud/QRActivity;->access$302(Lcom/car/cloud/QRActivity;Z)Z

    iget-object v1, p0, Lcom/car/cloud/QRActivity$2;->this$0:Lcom/car/cloud/QRActivity;

    invoke-static {v1}, Lcom/car/cloud/QRActivity;->access$300(Lcom/car/cloud/QRActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/car/cloud/WebSocketUtil;->getBondList(Z)V

    iget-object v1, p0, Lcom/car/cloud/QRActivity$2;->this$0:Lcom/car/cloud/QRActivity;

    invoke-static {v1}, Lcom/car/cloud/QRActivity;->access$400(Lcom/car/cloud/QRActivity;)Lcom/car/cloud/UserAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/car/cloud/UserAdapter;->notifyDataSetChanged()V

    :goto_0
    iget-object v1, p0, Lcom/car/cloud/QRActivity$2;->this$0:Lcom/car/cloud/QRActivity;

    invoke-static {v1}, Lcom/car/cloud/QRActivity;->access$500(Lcom/car/cloud/QRActivity;)Lcom/car/cloud/MessageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/car/cloud/MessageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/cloud/QRActivity$2;->this$0:Lcom/car/cloud/QRActivity;

    invoke-virtual {v1}, Lcom/car/cloud/QRActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/car/cloud/QRActivity$2;->this$0:Lcom/car/cloud/QRActivity;

    const/high16 v2, 0x7f060000

    invoke-virtual {v1, v2}, Lcom/car/cloud/QRActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/car/cloud/QRActivity$2;->this$0:Lcom/car/cloud/QRActivity;

    invoke-static {v1}, Lcom/car/cloud/QRActivity;->access$400(Lcom/car/cloud/QRActivity;)Lcom/car/cloud/UserAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/car/cloud/UserAdapter;->clearUserStatus()V

    goto :goto_0
.end method
