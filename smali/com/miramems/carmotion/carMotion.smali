.class public Lcom/miramems/carmotion/carMotion;
.super Ljava/lang/Object;
.source "carMotion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miramems/carmotion/carMotion$carMotionEventListener;,
        Lcom/miramems/carmotion/carMotion$CarMotionPinLatch;,
        Lcom/miramems/carmotion/carMotion$CarMotionPinLevel;,
        Lcom/miramems/carmotion/carMotion$CarMotionPinNum;,
        Lcom/miramems/carmotion/carMotion$CarMotionViolent;,
        Lcom/miramems/carmotion/carMotion$CarMotionSwitchCmd;,
        Lcom/miramems/carmotion/carMotion$CarMotionEVENT;,
        Lcom/miramems/carmotion/carMotion$CarMotionAlgorithm;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarMotion"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListenerArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miramems/carmotion/carMotion$carMotionEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRunnable:Ljava/lang/Runnable;

.field private mStateBak:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "carMotion"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "CarMotion"

    const-string v1, "JNI library loaded!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miramems/carmotion/carMotion;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miramems/carmotion/carMotion;->mStateBak:I

    new-instance v0, Lcom/miramems/carmotion/carMotion$1;

    invoke-direct {v0, p0}, Lcom/miramems/carmotion/carMotion$1;-><init>(Lcom/miramems/carmotion/carMotion;)V

    iput-object v0, p0, Lcom/miramems/carmotion/carMotion;->mRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miramems/carmotion/carMotion;->mListenerArray:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/miramems/carmotion/carMotion;)I
    .locals 1

    iget v0, p0, Lcom/miramems/carmotion/carMotion;->mStateBak:I

    return v0
.end method

.method static synthetic access$002(Lcom/miramems/carmotion/carMotion;I)I
    .locals 0

    iput p1, p0, Lcom/miramems/carmotion/carMotion;->mStateBak:I

    return p1
.end method

.method static synthetic access$100(Lcom/miramems/carmotion/carMotion;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/miramems/carmotion/carMotion;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miramems/carmotion/carMotion;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miramems/carmotion/carMotion;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public native Control(II)V
.end method

.method public native Direction_Set_Parma(I)V
.end method

.method public native Get_Alg_State()I
.end method

.method public HandleEvent(II)V
    .locals 3

    iget-object v2, p0, Lcom/miramems/carmotion/carMotion;->mListenerArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miramems/carmotion/carMotion$carMotionEventListener;

    invoke-interface {v0, p1, p2}, Lcom/miramems/carmotion/carMotion$carMotionEventListener;->OncarMotionEvent(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public native Init(IIII)I
.end method

.method public native Parking_Set_Parma(III)V
.end method

.method public native QueryControl(I)I
.end method

.method public RegisteOncarMotionEventListener(Lcom/miramems/carmotion/carMotion$carMotionEventListener;)V
    .locals 4

    iget-object v0, p0, Lcom/miramems/carmotion/carMotion;->mListenerArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miramems/carmotion/carMotion;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miramems/carmotion/carMotion;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miramems/carmotion/carMotion;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public native Set_Debug_Level(I)V
.end method

.method public native Slope_Set_Parma(IIFF)V
.end method

.method public UnRegisteOncarMotionEventListener(Lcom/miramems/carmotion/carMotion$carMotionEventListener;)V
    .locals 2

    iget-object v0, p0, Lcom/miramems/carmotion/carMotion;->mListenerArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miramems/carmotion/carMotion;->mListenerArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miramems/carmotion/carMotion;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public native Videoing_Set_Parma(III)V
.end method

.method public native Violent_Set_Parma(I)V
.end method
