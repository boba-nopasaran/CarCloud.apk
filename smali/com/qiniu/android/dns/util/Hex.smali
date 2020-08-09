.class public final Lcom/qiniu/android/dns/util/Hex;
.super Ljava/lang/Object;
.source "Hex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/dns/util/Hex$HexDecodeException;
    }
.end annotation


# static fields
.field private static final DIGITS_LOWER:[C

.field private static final DIGITS_UPPER:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x10

    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/qiniu/android/dns/util/Hex;->DIGITS_LOWER:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/qiniu/android/dns/util/Hex;->DIGITS_UPPER:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeHex([C)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qiniu/android/dns/util/Hex$HexDecodeException;
        }
    .end annotation

    array-length v3, p0

    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_0

    new-instance v5, Lcom/qiniu/android/dns/util/Hex$HexDecodeException;

    const-string v6, "Odd number of characters."

    invoke-direct {v5, v6}, Lcom/qiniu/android/dns/util/Hex$HexDecodeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    shr-int/lit8 v5, v3, 0x1

    new-array v4, v5, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-char v5, p0, v2

    invoke-static {v5, v2}, Lcom/qiniu/android/dns/util/Hex;->toDigit(CI)I

    move-result v5

    shl-int/lit8 v0, v5, 0x4

    add-int/lit8 v2, v2, 0x1

    aget-char v5, p0, v2

    invoke-static {v5, v2}, Lcom/qiniu/android/dns/util/Hex;->toDigit(CI)I

    move-result v5

    or-int/2addr v0, v5

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v5, v0, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method public static encodeHex([B)[C
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/qiniu/android/dns/util/Hex;->encodeHex([BZ)[C

    move-result-object v0

    return-object v0
.end method

.method public static encodeHex([BZ)[C
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/qiniu/android/dns/util/Hex;->DIGITS_LOWER:[C

    :goto_0
    invoke-static {p0, v0}, Lcom/qiniu/android/dns/util/Hex;->encodeHex([B[C)[C

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/qiniu/android/dns/util/Hex;->DIGITS_UPPER:[C

    goto :goto_0
.end method

.method private static encodeHex([B[C)[C
    .locals 6

    array-length v3, p0

    shl-int/lit8 v5, v3, 0x1

    new-array v4, v5, [C

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    add-int/lit8 v1, v2, 0x1

    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, p1, v5

    aput-char v5, v4, v2

    add-int/lit8 v2, v1, 0x1

    aget-byte v5, p0, v0

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p1, v5

    aput-char v5, v4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method public static encodeHexString([B)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/qiniu/android/dns/util/Hex;->encodeHex([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method protected static toDigit(CI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qiniu/android/dns/util/Hex$HexDecodeException;
        }
    .end annotation

    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v1, Lcom/qiniu/android/dns/util/Hex$HexDecodeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal hexadecimal character "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/qiniu/android/dns/util/Hex$HexDecodeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return v0
.end method
