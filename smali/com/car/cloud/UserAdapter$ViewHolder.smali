.class Lcom/car/cloud/UserAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "UserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/cloud/UserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field mDelete:Landroid/widget/ImageView;

.field mHeadImage:Landroid/widget/ImageView;

.field mMessageView:Landroid/widget/TextView;

.field mNameView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/car/cloud/UserAdapter;


# direct methods
.method private constructor <init>(Lcom/car/cloud/UserAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/UserAdapter$ViewHolder;->this$0:Lcom/car/cloud/UserAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/cloud/UserAdapter;Lcom/car/cloud/UserAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/cloud/UserAdapter$ViewHolder;-><init>(Lcom/car/cloud/UserAdapter;)V

    return-void
.end method
