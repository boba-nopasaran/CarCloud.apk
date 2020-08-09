.class public final Lcom/qiniu/android/dns/local/DnsMessage;
.super Ljava/lang/Object;
.source "DnsMessage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildQuery(Ljava/lang/String;I)[B
    .locals 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x200

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v1, Lcom/qiniu/android/dns/util/BitSet;

    invoke-direct {v1}, Lcom/qiniu/android/dns/util/BitSet;-><init>()V

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/qiniu/android/dns/util/BitSet;->set(I)Lcom/qiniu/android/dns/util/BitSet;

    int-to-short v4, p1

    :try_start_0
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v1}, Lcom/qiniu/android/dns/util/BitSet;->value()I

    move-result v4

    int-to-short v4, v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    invoke-static {v0, p0}, Lcom/qiniu/android/dns/local/DnsMessage;->writeQuestion(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method public static parseResponse([BILjava/lang/String;)[Lcom/qiniu/android/dns/Record;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v6, 0x1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    if-eq v1, p1, :cond_0

    new-instance v8, Lcom/qiniu/android/dns/DnsException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "the answer id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not match "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p2, v9}, Lcom/qiniu/android/dns/DnsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v8

    :cond_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    shr-int/lit8 v9, v4, 0x8

    and-int/lit8 v9, v9, 0x1

    if-ne v9, v6, :cond_2

    move v7, v6

    :goto_0
    shr-int/lit8 v9, v4, 0x7

    and-int/lit8 v9, v9, 0x1

    if-ne v9, v6, :cond_3

    :goto_1
    if-eqz v6, :cond_1

    if-nez v7, :cond_4

    :cond_1
    new-instance v8, Lcom/qiniu/android/dns/DnsException;

    const-string v9, "the dns server cant support recursion "

    invoke-direct {v8, p2, v9}, Lcom/qiniu/android/dns/DnsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v8

    :cond_2
    move v7, v8

    goto :goto_0

    :cond_3
    move v6, v8

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v5

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    invoke-static {v3, p0, v5}, Lcom/qiniu/android/dns/local/DnsMessage;->readQuestions(Ljava/io/DataInputStream;[BI)V

    invoke-static {v3, p0, v0}, Lcom/qiniu/android/dns/local/DnsMessage;->readAnswers(Ljava/io/DataInputStream;[BI)[Lcom/qiniu/android/dns/Record;

    move-result-object v8

    return-object v8
.end method

.method private static readAnswers(Ljava/io/DataInputStream;[BI)[Lcom/qiniu/android/dns/Record;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    new-array v3, p2, [Lcom/qiniu/android/dns/Record;

    move v2, v1

    move v0, p2

    :goto_0
    add-int/lit8 p2, v0, -0x1

    if-lez v0, :cond_0

    add-int/lit8 v1, v2, 0x1

    invoke-static {p0, p1}, Lcom/qiniu/android/dns/local/DnsMessage;->readRecord(Ljava/io/DataInputStream;[B)Lcom/qiniu/android/dns/Record;

    move-result-object v4

    aput-object v4, v3, v2

    move v2, v1

    move v0, p2

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private static readName(Ljava/io/DataInputStream;[B)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v5, v1, 0xc0

    const/16 v6, 0xc0

    if-ne v5, v6, :cond_1

    and-int/lit8 v5, v1, 0x3f

    shl-int/lit8 v5, v5, 0x8

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    add-int v1, v5, v6

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v1, v2}, Lcom/qiniu/android/dns/local/DnsMessage;->readName([BILjava/util/HashSet;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    if-nez v1, :cond_2

    const-string v3, ""

    goto :goto_0

    :cond_2
    new-array v0, v1, [B

    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p1}, Lcom/qiniu/android/dns/local/DnsMessage;->readName(Ljava/io/DataInputStream;[B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static readName([BILjava/util/HashSet;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    aget-byte v3, p0, p1

    and-int/lit16 v0, v3, 0xff

    and-int/lit16 v3, v0, 0xc0

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_2

    and-int/lit8 v3, v0, 0x3f

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    add-int v0, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/qiniu/android/dns/DnsException;

    const-string v4, ""

    const-string v5, "Cyclic offsets detected."

    invoke-direct {v3, v4, v5}, Lcom/qiniu/android/dns/DnsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v0, p2}, Lcom/qiniu/android/dns/local/DnsMessage;->readName([BILjava/util/HashSet;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    if-nez v0, :cond_3

    const-string v1, ""

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    invoke-direct {v1, p0, v3, v0}, Ljava/lang/String;-><init>([BII)V

    add-int/lit8 v3, p1, 0x1

    add-int/2addr v3, v0

    invoke-static {p0, v3, p2}, Lcom/qiniu/android/dns/local/DnsMessage;->readName([BILjava/util/HashSet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static readQuestions(Ljava/io/DataInputStream;[BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move v0, p2

    :goto_0
    add-int/lit8 p2, v0, -0x1

    if-lez v0, :cond_0

    invoke-static {p0, p1}, Lcom/qiniu/android/dns/local/DnsMessage;->readName(Ljava/io/DataInputStream;[B)Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move v0, p2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static readRecord(Ljava/io/DataInputStream;[B)Lcom/qiniu/android/dns/Record;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/qiniu/android/dns/local/DnsMessage;->readName(Ljava/io/DataInputStream;[B)Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    int-to-long v4, v0

    const/16 v0, 0x10

    shl-long/2addr v4, v0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    int-to-long v12, v0

    add-long v10, v4, v12

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    const/4 v1, 0x0

    sparse-switch v2, :sswitch_data_0

    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v8, :cond_0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x4

    new-array v7, v0, [B

    invoke-virtual {p0, v7}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-static {v7}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_1
    if-nez v1, :cond_1

    new-instance v0, Ljava/net/UnknownHostException;

    const-string v3, "no record"

    invoke-direct {v0, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1
    invoke-static {p0, p1}, Lcom/qiniu/android/dns/local/DnsMessage;->readName(Ljava/io/DataInputStream;[B)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/qiniu/android/dns/Record;

    long-to-int v3, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v12, 0x3e8

    div-long/2addr v4, v12

    invoke-direct/range {v0 .. v5}, Lcom/qiniu/android/dns/Record;-><init>(Ljava/lang/String;IIJ)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method private static writeDomain(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const-string v5, "[.\u3002\uff0e\uff61]"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    invoke-static {v4}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v5, v1

    invoke-virtual {p0, v5}, Ljava/io/OutputStream;->write(I)V

    array-length v5, v1

    invoke-virtual {p0, v1, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private static writeQuestion(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p0, p1}, Lcom/qiniu/android/dns/local/DnsMessage;->writeDomain(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method
