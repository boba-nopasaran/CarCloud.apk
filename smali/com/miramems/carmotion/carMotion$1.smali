.class Lcom/miramems/carmotion/carMotion$1;
.super Ljava/lang/Object;
.source "carMotion.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miramems/carmotion/carMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miramems/carmotion/carMotion;


# direct methods
.method constructor <init>(Lcom/miramems/carmotion/carMotion;)V
    .locals 0

    iput-object p1, p0, Lcom/miramems/carmotion/carMotion$1;->this$0:Lcom/miramems/carmotion/carMotion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    :try_start_0
    iget-object v5, p0, Lcom/miramems/carmotion/carMotion$1;->this$0:Lcom/miramems/carmotion/carMotion;

    invoke-virtual {v5}, Lcom/miramems/carmotion/carMotion;->Get_Alg_State()I

    move-result v3

    iget-object v5, p0, Lcom/miramems/carmotion/carMotion$1;->this$0:Lcom/miramems/carmotion/carMotion;

    invoke-static {v5}, Lcom/miramems/carmotion/carMotion;->access$000(Lcom/miramems/carmotion/carMotion;)I

    move-result v5

    if-eq v3, v5, :cond_0

    iget-object v5, p0, Lcom/miramems/carmotion/carMotion$1;->this$0:Lcom/miramems/carmotion/carMotion;

    invoke-static {v5, v3}, Lcom/miramems/carmotion/carMotion;->access$002(Lcom/miramems/carmotion/carMotion;I)I

    div-int/lit8 v1, v3, 0x64

    rem-int/lit8 v4, v3, 0x64

    const-string v5, "CarMotion"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "call HandleEvent("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/miramems/carmotion/carMotion$1;->this$0:Lcom/miramems/carmotion/carMotion;

    invoke-virtual {v5, v1, v4}, Lcom/miramems/carmotion/carMotion;->HandleEvent(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/miramems/carmotion/carMotion$1;->this$0:Lcom/miramems/carmotion/carMotion;

    invoke-static {v5}, Lcom/miramems/carmotion/carMotion;->access$200(Lcom/miramems/carmotion/carMotion;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/miramems/carmotion/carMotion$1;->this$0:Lcom/miramems/carmotion/carMotion;

    invoke-static {v6}, Lcom/miramems/carmotion/carMotion;->access$100(Lcom/miramems/carmotion/carMotion;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v5, p0, Lcom/miramems/carmotion/carMotion$1;->this$0:Lcom/miramems/carmotion/carMotion;

    invoke-static {v5}, Lcom/miramems/carmotion/carMotion;->access$200(Lcom/miramems/carmotion/carMotion;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/miramems/carmotion/carMotion$1;->this$0:Lcom/miramems/carmotion/carMotion;

    invoke-static {v6}, Lcom/miramems/carmotion/carMotion;->access$100(Lcom/miramems/carmotion/carMotion;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v8, 0xfa

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catch_0
    move-exception v2

    const-string v5, "CarMotion"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get_Alg_State Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v5, "CarMotion"

    const-string v6, "Get_Alg_State UnsatisfiedLinkError"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
