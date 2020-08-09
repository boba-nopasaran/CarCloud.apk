.class Lcom/car/cloud/MessageView$4;
.super Ljava/lang/Object;
.source "MessageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/MessageView;->flipScrollView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/MessageView;


# direct methods
.method constructor <init>(Lcom/car/cloud/MessageView;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/MessageView$4;->this$0:Lcom/car/cloud/MessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/car/cloud/MessageView$4;->this$0:Lcom/car/cloud/MessageView;

    invoke-static {v0}, Lcom/car/cloud/MessageView;->access$400(Lcom/car/cloud/MessageView;)Lcom/car/cloud/MyScrollView;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/car/cloud/MyScrollView;->fullScroll(I)Z

    return-void
.end method
