.class Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;
.super Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;
.source "NTLMEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Type2Message"
.end annotation


# instance fields
.field protected challenge:[B

.field protected flags:I

.field protected target:Ljava/lang/String;

.field protected targetInfo:[B


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    const/4 v5, 0x0

    const/16 v4, 0x14

    const/4 v2, 0x2

    invoke-direct {p0, p1, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x8

    new-array v2, v2, [B

    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->challenge:[B

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->challenge:[B

    const/16 v3, 0x18

    invoke-virtual {p0, v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->readBytes([BI)V

    invoke-virtual {p0, v4}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->readULong(I)I

    move-result v2

    iput v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->flags:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    new-instance v2, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NTLM type 2 message indicates no support for Unicode. Flags are: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->flags:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iput-object v5, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->target:Ljava/lang/String;

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->getMessageLength()I

    move-result v2

    if-lt v2, v4, :cond_1

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->readSecurityBuffer(I)[B

    move-result-object v0

    array-length v2, v0

    if-eqz v2, :cond_1

    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UnicodeLittleUnmarked"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->target:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iput-object v5, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->targetInfo:[B

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->getMessageLength()I

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_2

    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->readSecurityBuffer(I)[B

    move-result-object v0

    array-length v2, v0

    if-eqz v2, :cond_2

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->targetInfo:[B

    :cond_2
    return-void

    :catch_0
    move-exception v1

    new-instance v2, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method getChallenge()[B
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->challenge:[B

    return-object v0
.end method

.method getFlags()I
    .locals 1

    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->flags:I

    return v0
.end method

.method getTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->target:Ljava/lang/String;

    return-object v0
.end method

.method getTargetInfo()[B
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->targetInfo:[B

    return-object v0
.end method
