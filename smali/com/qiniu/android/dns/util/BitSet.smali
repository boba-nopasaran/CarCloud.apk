.class public final Lcom/qiniu/android/dns/util/BitSet;
.super Ljava/lang/Object;
.source "BitSet.java"


# instance fields
.field private set:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    return-void
.end method


# virtual methods
.method public allIsSet(I)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    add-int/lit8 v1, v1, 0x1

    shl-int v2, v0, p1

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()Lcom/qiniu/android/dns/util/BitSet;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    return-object p0
.end method

.method public isSet(I)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public leadingZeros()I
    .locals 3

    const/16 v0, 0x20

    iget v2, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    shr-int/lit8 v1, v2, 0x10

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x10

    iput v1, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    :cond_0
    iget v2, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    shr-int/lit8 v1, v2, 0x8

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x8

    iput v1, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    :cond_1
    iget v2, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    shr-int/lit8 v1, v2, 0x4

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x4

    iput v1, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    :cond_2
    iget v2, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    shr-int/lit8 v1, v2, 0x2

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x2

    iput v1, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    :cond_3
    iget v2, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    shr-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_4

    add-int/lit8 v2, v0, -0x2

    :goto_0
    return v2

    :cond_4
    iget v2, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    sub-int v2, v0, v2

    goto :goto_0
.end method

.method public noneIsSet(I)Z
    .locals 1

    iget v0, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(I)Lcom/qiniu/android/dns/util/BitSet;
    .locals 2

    iget v0, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    return-object p0
.end method

.method public value()I
    .locals 1

    iget v0, p0, Lcom/qiniu/android/dns/util/BitSet;->set:I

    return v0
.end method
