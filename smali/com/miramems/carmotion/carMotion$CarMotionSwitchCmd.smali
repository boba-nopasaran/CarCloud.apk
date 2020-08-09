.class public Lcom/miramems/carmotion/carMotion$CarMotionSwitchCmd;
.super Ljava/lang/Object;
.source "carMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miramems/carmotion/carMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CarMotionSwitchCmd"
.end annotation


# static fields
.field public static final DISABLE_X:I = 0x0

.field public static final ENABLE_X:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/miramems/carmotion/carMotion;


# direct methods
.method public constructor <init>(Lcom/miramems/carmotion/carMotion;)V
    .locals 0

    iput-object p1, p0, Lcom/miramems/carmotion/carMotion$CarMotionSwitchCmd;->this$0:Lcom/miramems/carmotion/carMotion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
