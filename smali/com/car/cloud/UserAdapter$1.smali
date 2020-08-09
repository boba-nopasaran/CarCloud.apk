.class Lcom/car/cloud/UserAdapter$1;
.super Ljava/lang/Object;
.source "UserAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/UserAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/UserAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/car/cloud/UserAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/UserAdapter$1;->this$0:Lcom/car/cloud/UserAdapter;

    iput p2, p0, Lcom/car/cloud/UserAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v1, p0, Lcom/car/cloud/UserAdapter$1;->this$0:Lcom/car/cloud/UserAdapter;

    invoke-static {v1}, Lcom/car/cloud/UserAdapter;->access$100(Lcom/car/cloud/UserAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/car/cloud/UserAdapter$1;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/cloud/Type$UserInfo;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/car/cloud/UserAdapter$1;->this$0:Lcom/car/cloud/UserAdapter;

    invoke-static {v2}, Lcom/car/cloud/UserAdapter;->access$200(Lcom/car/cloud/UserAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/car/cloud/UserAdapter$1;->this$0:Lcom/car/cloud/UserAdapter;

    invoke-static {v2}, Lcom/car/cloud/UserAdapter;->access$200(Lcom/car/cloud/UserAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/car/cloud/Type$UserInfo;->nickName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06000a

    new-instance v3, Lcom/car/cloud/UserAdapter$1$1;

    invoke-direct {v3, p0}, Lcom/car/cloud/UserAdapter$1$1;-><init>(Lcom/car/cloud/UserAdapter$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060014

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
