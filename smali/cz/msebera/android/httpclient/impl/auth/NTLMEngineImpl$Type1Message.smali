.class Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;
.super Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;
.source "NTLMEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Type1Message"
.end annotation


# instance fields
.field private final domainBytes:[B

.field private final hostBytes:[B


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->hostBytes:[B

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->domainBytes:[B

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;-><init>()V

    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1500()Ljava/nio/charset/Charset;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    const-string v3, "Unicode not supported"

    invoke-direct {v2, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-static {p2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_2

    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1500()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->hostBytes:[B

    if-eqz v0, :cond_1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1500()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    :cond_1
    iput-object v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->domainBytes:[B

    return-void

    :cond_2
    move-object v2, v3

    goto :goto_0
.end method


# virtual methods
.method getResponse()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x28

    const/4 v2, 0x0

    const/16 v0, 0x28

    const/4 v1, 0x1

    invoke-virtual {p0, v3, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->prepareResponse(II)V

    const v1, -0x5df77dff

    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->addULong(I)V

    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->addUShort(I)V

    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->addUShort(I)V

    invoke-virtual {p0, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->addULong(I)V

    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->addUShort(I)V

    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->addUShort(I)V

    invoke-virtual {p0, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->addULong(I)V

    const/16 v1, 0x105

    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->addUShort(I)V

    const/16 v1, 0xa28

    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->addULong(I)V

    const/16 v1, 0xf00

    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->addUShort(I)V

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->hostBytes:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->hostBytes:[B

    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->addBytes([B)V

    :cond_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->domainBytes:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->domainBytes:[B

    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->addBytes([B)V

    :cond_1
    invoke-super {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->getResponse()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
