.class public Lcom/miramems/carmotion/carMotion$CarMotionPinLevel;
.super Ljava/lang/Object;
.source "carMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miramems/carmotion/carMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CarMotionPinLevel"
.end annotation


# static fields
.field public static final NONE:I = 0x0

.field public static final PIN_LEVEL_HIGH:I = 0x2

.field public static final PIN_LEVEL_LOW:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/miramems/carmotion/carMotion;


# direct methods
.method public constructor <init>(Lcom/miramems/carmotion/carMotion;)V
    .locals 0

    iput-object p1, p0, Lcom/miramems/carmotion/carMotion$CarMotionPinLevel;->this$0:Lcom/miramems/carmotion/carMotion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
