.class Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$6;
.super Ljava/lang/Object;
.source "MenuViewImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->beginAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

.field final synthetic val$endAnimation:Landroid/view/animation/TranslateAnimation;


# direct methods
.method constructor <init>(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;Landroid/view/animation/TranslateAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$6;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    iput-object p2, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$6;->val$endAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$6;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    invoke-static {v0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->access$1000(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)V

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$6;->val$endAnimation:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$6;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    invoke-static {v0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->access$800(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$6;->val$endAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$6;->this$0:Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->access$400(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;Z)V

    return-void
.end method