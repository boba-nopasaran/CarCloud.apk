.class public final Lcom/qiniu/android/dns/http/DnspodEnterprise;
.super Ljava/lang/Object;
.source "DnspodEnterprise.java"

# interfaces
.implements Lcom/qiniu/android/dns/IResolver;


# instance fields
.field private final id:Ljava/lang/String;

.field private final ip:Ljava/lang/String;

.field private final key:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "119.29.29.29"

    invoke-direct {p0, p1, p2, v0}, Lcom/qiniu/android/dns/http/DnspodEnterprise;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qiniu/android/dns/http/DnspodEnterprise;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/qiniu/android/dns/http/DnspodEnterprise;->ip:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v1, v2, [B

    :try_start_0
    const-string v2, "utf-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "DES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Lcom/qiniu/android/dns/http/DnspodEnterprise;->key:Ljavax/crypto/spec/SecretKeySpec;

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method private decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    const-string v3, "DES/ECB/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/qiniu/android/dns/http/DnspodEnterprise;->key:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v3}, Lcom/qiniu/android/dns/util/Hex;->decodeHex([C)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, ""

    goto :goto_0
.end method

.method private encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    const-string v3, "DES/ECB/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/qiniu/android/dns/http/DnspodEnterprise;->key:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string v3, "utf-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/qiniu/android/dns/util/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qiniu/android/dns/http/DnspodEnterprise;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, ""

    goto :goto_0
.end method


# virtual methods
.method public resolve(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Lcom/qiniu/android/dns/Record;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v21, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qiniu/android/dns/http/DnspodEnterprise;->ip:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/d?ttl=1&dn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/qiniu/android/dns/http/DnspodEnterprise;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qiniu/android/dns/http/DnspodEnterprise;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v19

    const/16 v2, 0xc8

    move/from16 v0, v19

    if-eq v0, v2, :cond_1

    const/16 v17, 0x0

    :cond_0
    :goto_0
    return-object v17

    :cond_1
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v14

    if-lez v14, :cond_2

    const/16 v2, 0x400

    if-le v14, v2, :cond_3

    :cond_2
    const/16 v17, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    new-array v8, v14, [B

    invoke-virtual {v13, v8}, Ljava/io/InputStream;->read([B)I

    move-result v16

    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    if-nez v14, :cond_4

    const/16 v17, 0x0

    goto :goto_0

    :cond_4
    new-instance v18, Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-direct {v0, v8, v2, v1}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/qiniu/android/dns/http/DnspodEnterprise;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v2, ","

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    array-length v2, v15

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    const/16 v17, 0x0

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    :try_start_0
    aget-object v2, v15, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    const/4 v2, 0x0

    aget-object v2, v15, v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v2, v12

    if-nez v2, :cond_6

    const/16 v17, 0x0

    goto :goto_0

    :catch_0
    move-exception v9

    const/16 v17, 0x0

    goto :goto_0

    :cond_6
    array-length v2, v12

    new-array v0, v2, [Lcom/qiniu/android/dns/Record;

    move-object/from16 v17, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v22, 0x3e8

    div-long v6, v2, v22

    const/4 v11, 0x0

    :goto_1
    array-length v2, v12

    if-ge v11, v2, :cond_0

    new-instance v2, Lcom/qiniu/android/dns/Record;

    aget-object v3, v12, v11

    const/4 v4, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/qiniu/android/dns/Record;-><init>(Ljava/lang/String;IIJ)V

    aput-object v2, v17, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1
.end method
