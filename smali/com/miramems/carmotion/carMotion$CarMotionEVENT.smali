.class public Lcom/miramems/carmotion/carMotion$CarMotionEVENT;
.super Ljava/lang/Object;
.source "carMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miramems/carmotion/carMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CarMotionEVENT"
.end annotation


# static fields
.field public static final JOLT_NOTIFY:I = 0x5

.field public static final NONE_NOTIFY:I = 0x0

.field public static final PARKING_NOTIFY:I = 0x2

.field public static final STATE_NOTIFY:I = 0x4

.field public static final VIDEOING_NOTIFY:I = 0x1

.field public static final VIOLENT_NOTIFY:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/miramems/carmotion/carMotion;


# direct methods
.method public constructor <init>(Lcom/miramems/carmotion/carMotion;)V
    .locals 0

    iput-object p1, p0, Lcom/miramems/carmotion/carMotion$CarMotionEVENT;->this$0:Lcom/miramems/carmotion/carMotion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
