.class Lcom/car/cloud/UserAdapter$1$1;
.super Ljava/lang/Object;
.source "UserAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/UserAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/cloud/UserAdapter$1;


# direct methods
.method constructor <init>(Lcom/car/cloud/UserAdapter$1;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/UserAdapter$1$1;->this$1:Lcom/car/cloud/UserAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/car/cloud/UserAdapter$1$1;->this$1:Lcom/car/cloud/UserAdapter$1;

    iget-object v1, v1, Lcom/car/cloud/UserAdapter$1;->this$0:Lcom/car/cloud/UserAdapter;

    invoke-static {v1}, Lcom/car/cloud/UserAdapter;->access$100(Lcom/car/cloud/UserAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/car/cloud/UserAdapter$1$1;->this$1:Lcom/car/cloud/UserAdapter$1;

    iget v2, v2, Lcom/car/cloud/UserAdapter$1;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/cloud/Type$UserInfo;

    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v1

    iget-object v2, v0, Lcom/car/cloud/Type$UserInfo;->unionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/car/cloud/WebSocketUtil;->removeBond(Ljava/lang/String;)V

    return-void
.end method
