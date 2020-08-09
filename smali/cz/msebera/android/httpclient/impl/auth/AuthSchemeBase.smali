.class public abstract Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;
.super Ljava/lang/Object;
.source "AuthSchemeBase.java"

# interfaces
.implements Lcz/msebera/android/httpclient/auth/ContextAwareAuthScheme;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private challengeState:Lcz/msebera/android/httpclient/auth/ChallengeState;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/auth/ChallengeState;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;->challengeState:Lcz/msebera/android/httpclient/auth/ChallengeState;

    return-void
.end method


# virtual methods
.method public authenticate(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/Header;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/auth/AuthenticationException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;->authenticate(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public getChallengeState()Lcz/msebera/android/httpclient/auth/ChallengeState;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;->challengeState:Lcz/msebera/android/httpclient/auth/ChallengeState;

    return-object v0
.end method

.method public isProxy()Z
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;->challengeState:Lcz/msebera/android/httpclient/auth/ChallengeState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;->challengeState:Lcz/msebera/android/httpclient/auth/ChallengeState;

    sget-object v1, Lcz/msebera/android/httpclient/auth/ChallengeState;->PROXY:Lcz/msebera/android/httpclient/auth/ChallengeState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract parseChallenge(Lcz/msebera/android/httpclient/util/CharArrayBuffer;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/auth/MalformedChallengeException;
        }
    .end annotation
.end method

.method public processChallenge(Lcz/msebera/android/httpclient/Header;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/auth/MalformedChallengeException;
        }
    .end annotation

    const-string v6, "Header"

    invoke-static {p1, v6}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "WWW-Authenticate"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcz/msebera/android/httpclient/auth/ChallengeState;->TARGET:Lcz/msebera/android/httpclient/auth/ChallengeState;

    iput-object v6, p0, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;->challengeState:Lcz/msebera/android/httpclient/auth/ChallengeState;

    :goto_0
    instance-of v6, p1, Lcz/msebera/android/httpclient/FormattedHeader;

    if-eqz v6, :cond_2

    move-object v6, p1

    check-cast v6, Lcz/msebera/android/httpclient/FormattedHeader;

    invoke-interface {v6}, Lcz/msebera/android/httpclient/FormattedHeader;->getBuffer()Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object v2

    check-cast p1, Lcz/msebera/android/httpclient/FormattedHeader;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/FormattedHeader;->getValuePos()I

    move-result v4

    :goto_1
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v6

    if-ge v4, v6, :cond_4

    invoke-virtual {v2, v4}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcz/msebera/android/httpclient/protocol/HTTP;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    const-string v6, "Proxy-Authenticate"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcz/msebera/android/httpclient/auth/ChallengeState;->PROXY:Lcz/msebera/android/httpclient/auth/ChallengeState;

    iput-object v6, p0, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;->challengeState:Lcz/msebera/android/httpclient/auth/ChallengeState;

    goto :goto_0

    :cond_1
    new-instance v6, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected header name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    new-instance v6, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;

    const-string v7, "Header value is null"

    invoke-direct {v6, v7}, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    new-instance v2, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v2, v6}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    invoke-virtual {v2, v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    move v1, v4

    :goto_2
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v6

    if-ge v4, v6, :cond_5

    invoke-virtual {v2, v4}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcz/msebera/android/httpclient/protocol/HTTP;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    move v3, v4

    invoke-virtual {v2, v1, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;->getSchemeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    new-instance v6, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid scheme identifier: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_6
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v6

    invoke-virtual {p0, v2, v4, v6}, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;->parseChallenge(Lcz/msebera/android/httpclient/util/CharArrayBuffer;II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
