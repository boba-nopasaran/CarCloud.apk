.class public Lcom/car/cloud/MessageView$MsgInfoComparator;
.super Ljava/lang/Object;
.source "MessageView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/cloud/MessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MsgInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/car/cloud/Type$MsgInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/car/cloud/Type$MsgInfo;Lcom/car/cloud/Type$MsgInfo;)I
    .locals 4

    iget-wide v0, p1, Lcom/car/cloud/Type$MsgInfo;->sendTime:J

    iget-wide v2, p2, Lcom/car/cloud/Type$MsgInfo;->sendTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/car/cloud/Type$MsgInfo;

    check-cast p2, Lcom/car/cloud/Type$MsgInfo;

    invoke-virtual {p0, p1, p2}, Lcom/car/cloud/MessageView$MsgInfoComparator;->compare(Lcom/car/cloud/Type$MsgInfo;Lcom/car/cloud/Type$MsgInfo;)I

    move-result v0

    return v0
.end method
