.class public Lcom/miramems/carmotion/carMotion$CarMotionPinLatch;
.super Ljava/lang/Object;
.source "carMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miramems/carmotion/carMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CarMotionPinLatch"
.end annotation


# static fields
.field public static final LATCH_100MS:I = 0xe

.field public static final LATCH_1MS:I = 0xa

.field public static final LATCH_1S:I = 0x3

.field public static final LATCH_250MS:I = 0x1

.field public static final LATCH_25MS:I = 0xc

.field public static final LATCH_2MS:I = 0xb

.field public static final LATCH_2S:I = 0x4

.field public static final LATCH_4S:I = 0x5

.field public static final LATCH_500MS:I = 0x2

.field public static final LATCH_50MS:I = 0xd

.field public static final LATCH_8S:I = 0x6

.field public static final LATCH_EVER:I = 0xf

.field public static final LATCH_NONE:I


# instance fields
.field final synthetic this$0:Lcom/miramems/carmotion/carMotion;


# direct methods
.method public constructor <init>(Lcom/miramems/carmotion/carMotion;)V
    .locals 0

    iput-object p1, p0, Lcom/miramems/carmotion/carMotion$CarMotionPinLatch;->this$0:Lcom/miramems/carmotion/carMotion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
