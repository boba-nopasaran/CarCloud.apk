.class public abstract Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;
.super Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;
.source "RFC2617Scheme.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x277d161e1fc570cfL


# instance fields
.field private transient credentialsCharset:Ljava/nio/charset/Charset;

.field private final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcz/msebera/android/httpclient/Consts;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/auth/ChallengeState;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;-><init>(Lcz/msebera/android/httpclient/auth/ChallengeState;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    sget-object v0, Lcz/msebera/android/httpclient/Consts;->ASCII:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->credentialsCharset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->credentialsCharset:Ljava/nio/charset/Charset;

    return-void

    :cond_0
    sget-object p1, Lcz/msebera/android/httpclient/Consts;->ASCII:Ljava/nio/charset/Charset;

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcz/msebera/android/httpclient/util/CharsetUtils;->get(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->credentialsCharset:Ljava/nio/charset/Charset;

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->credentialsCharset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    sget-object v0, Lcz/msebera/android/httpclient/Consts;->ASCII:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->credentialsCharset:Ljava/nio/charset/Charset;

    :cond_0
    return-void
.end method

.method private readObjectNoData()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->credentialsCharset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method getCredentialsCharset(Lcz/msebera/android/httpclient/HttpRequest;)Ljava/lang/String;
    .locals 3

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v1

    const-string v2, "http.auth.credential-charset"

    invoke-interface {v1, v2}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->getCredentialsCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCredentialsCharset()Ljava/nio/charset/Charset;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->credentialsCharset:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->credentialsCharset:Ljava/nio/charset/Charset;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcz/msebera/android/httpclient/Consts;->ASCII:Ljava/nio/charset/Charset;

    goto :goto_0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method protected getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    const-string v0, "realm"

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected parseChallenge(Lcz/msebera/android/httpclient/util/CharArrayBuffer;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/auth/MalformedChallengeException;
        }
    .end annotation

    sget-object v6, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;

    new-instance v1, Lcz/msebera/android/httpclient/message/ParserCursor;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v7

    invoke-direct {v1, p2, v7}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    invoke-interface {v6, p1, v1}, Lcz/msebera/android/httpclient/message/HeaderValueParser;->parseElements(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v3

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    move-object v0, v3

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    invoke-interface {v2}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
