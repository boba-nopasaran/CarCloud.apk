.class final Lcom/car/cloud/HTTPMultiPart$Part;
.super Ljava/lang/Object;
.source "HTTPMultiPart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/cloud/HTTPMultiPart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Part"
.end annotation


# instance fields
.field file:Ljava/io/File;

.field name:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/cloud/HTTPMultiPart$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/cloud/HTTPMultiPart$Part;-><init>()V

    return-void
.end method
