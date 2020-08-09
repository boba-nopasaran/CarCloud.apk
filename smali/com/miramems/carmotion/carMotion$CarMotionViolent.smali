.class public Lcom/miramems/carmotion/carMotion$CarMotionViolent;
.super Ljava/lang/Object;
.source "carMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miramems/carmotion/carMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CarMotionViolent"
.end annotation


# static fields
.field public static final VIOLENT_NONE:I = 0x0

.field public static final VIOLENT_SPEED_DOWN:I = 0x2

.field public static final VIOLENT_SPEED_UP:I = 0x1

.field public static final VIOLENT_TURN_LEFT:I = 0x3

.field public static final VIOLENT_TURN_RIGHT:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/miramems/carmotion/carMotion;


# direct methods
.method public constructor <init>(Lcom/miramems/carmotion/carMotion;)V
    .locals 0

    iput-object p1, p0, Lcom/miramems/carmotion/carMotion$CarMotionViolent;->this$0:Lcom/miramems/carmotion/carMotion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
