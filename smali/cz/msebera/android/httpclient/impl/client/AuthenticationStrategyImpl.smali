.class abstract Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;
.super Ljava/lang/Object;
.source "AuthenticationStrategyImpl.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/AuthenticationStrategy;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# static fields
.field private static final DEFAULT_SCHEME_PRIORITY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final challengeCode:I

.field private final headerName:Ljava/lang/String;

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Negotiate"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Kerberos"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "NTLM"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Digest"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Basic"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->DEFAULT_SCHEME_PRIORITY:Ljava/util/List;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->challengeCode:I

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->headerName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public authFailed(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 5

    const-string v2, "Host"

    invoke-static {p1, v2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "HTTP context"

    invoke-static {p3, v2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->adapt(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    move-result-object v1

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getAuthCache()Lcz/msebera/android/httpclient/client/AuthCache;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clearing cached auth scheme for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_0
    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/client/AuthCache;->remove(Lcz/msebera/android/httpclient/HttpHost;)V

    :cond_1
    return-void
.end method

.method public authSucceeded(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 5

    const-string v2, "Host"

    invoke-static {p1, v2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "Auth scheme"

    invoke-static {p2, v2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "HTTP context"

    invoke-static {p3, v2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->adapt(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->isCachable(Lcz/msebera/android/httpclient/auth/AuthScheme;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getAuthCache()Lcz/msebera/android/httpclient/client/AuthCache;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;-><init>()V

    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAuthCache(Lcz/msebera/android/httpclient/client/AuthCache;)V

    :cond_0
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caching \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, Lcz/msebera/android/httpclient/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' auth scheme for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_1
    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/client/AuthCache;->put(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;)V

    :cond_2
    return-void
.end method

.method public getChallenges(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/HttpHost;",
            "Lcz/msebera/android/httpclient/HttpResponse;",
            "Lcz/msebera/android/httpclient/protocol/HttpContext;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/auth/MalformedChallengeException;
        }
    .end annotation

    const-string v11, "HTTP response"

    invoke-static {p2, v11}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v11, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->headerName:Ljava/lang/String;

    invoke-interface {p2, v11}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v5

    new-instance v8, Ljava/util/HashMap;

    array-length v11, v5

    invoke-direct {v8, v11}, Ljava/util/HashMap;-><init>(I)V

    move-object v0, v5

    array-length v7, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_4

    aget-object v4, v0, v6

    instance-of v11, v4, Lcz/msebera/android/httpclient/FormattedHeader;

    if-eqz v11, :cond_0

    move-object v11, v4

    check-cast v11, Lcz/msebera/android/httpclient/FormattedHeader;

    invoke-interface {v11}, Lcz/msebera/android/httpclient/FormattedHeader;->getBuffer()Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object v2

    move-object v11, v4

    check-cast v11, Lcz/msebera/android/httpclient/FormattedHeader;

    invoke-interface {v11}, Lcz/msebera/android/httpclient/FormattedHeader;->getValuePos()I

    move-result v9

    :goto_1
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v11

    if-ge v9, v11, :cond_2

    invoke-virtual {v2, v9}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lcz/msebera/android/httpclient/protocol/HTTP;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_2

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    invoke-interface {v4}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1

    new-instance v11, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;

    const-string v12, "Header value is null"

    invoke-direct {v11, v12}, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_1
    new-instance v2, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    invoke-direct {v2, v11}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    invoke-virtual {v2, v10}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_1

    :cond_2
    move v1, v9

    :goto_2
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v11

    if-ge v9, v11, :cond_3

    invoke-virtual {v2, v9}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lcz/msebera/android/httpclient/protocol/HTTP;->isWhitespace(C)Z

    move-result v11

    if-nez v11, :cond_3

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    move v3, v9

    invoke-virtual {v2, v1, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    return-object v8
.end method

.method abstract getPreferredAuthSchemes(Lcz/msebera/android/httpclient/client/config/RequestConfig;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/client/config/RequestConfig;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public isAuthenticationRequested(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .locals 2

    const-string v1, "HTTP response"

    invoke-static {p2, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v0

    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->challengeCode:I

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isCachable(Lcz/msebera/android/httpclient/auth/AuthScheme;)Z
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcz/msebera/android/httpclient/auth/AuthScheme;->isComplete()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-interface {p1}, Lcz/msebera/android/httpclient/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Basic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Digest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public select(Ljava/util/Map;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/util/Queue;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/Header;",
            ">;",
            "Lcz/msebera/android/httpclient/HttpHost;",
            "Lcz/msebera/android/httpclient/HttpResponse;",
            "Lcz/msebera/android/httpclient/protocol/HttpContext;",
            ")",
            "Ljava/util/Queue",
            "<",
            "Lcz/msebera/android/httpclient/auth/AuthOption;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/auth/MalformedChallengeException;
        }
    .end annotation

    const-string v17, "Map of auth challenges"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v17, "Host"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v17, "HTTP response"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v17, "HTTP context"

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static/range {p4 .. p4}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->adapt(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    move-result-object v9

    new-instance v15, Ljava/util/LinkedList;

    invoke-direct {v15}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v9}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getAuthSchemeRegistry()Lcz/msebera/android/httpclient/config/Lookup;

    move-result-object v16

    if-nez v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v17, v0

    const-string v18, "Auth scheme registry not set in the context"

    invoke-virtual/range {v17 .. v18}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-object v15

    :cond_1
    invoke-virtual {v9}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getCredentialsProvider()Lcz/msebera/android/httpclient/client/CredentialsProvider;

    move-result-object v12

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v17, v0

    const-string v18, "Credentials provider not set in the context"

    invoke-virtual/range {v17 .. v18}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v9}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getRequestConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->getPreferredAuthSchemes(Lcz/msebera/android/httpclient/client/config/RequestConfig;)Ljava/util/Collection;

    move-result-object v4

    if-nez v4, :cond_3

    sget-object v4, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->DEFAULT_SCHEME_PRIORITY:Ljava/util/List;

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Authentication schemes in the order of preference: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_4
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_5
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    sget-object v17, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcz/msebera/android/httpclient/Header;

    if-eqz v8, :cond_7

    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Lcz/msebera/android/httpclient/config/Lookup;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;

    if-nez v6, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isWarnEnabled()Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Authentication scheme "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " not supported"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->warn(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    move-object/from16 v0, p4

    invoke-interface {v6, v0}, Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;->create(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v5

    invoke-interface {v5, v8}, Lcz/msebera/android/httpclient/auth/AuthScheme;->processChallenge(Lcz/msebera/android/httpclient/Header;)V

    new-instance v7, Lcz/msebera/android/httpclient/auth/AuthScope;

    invoke-virtual/range {p2 .. p2}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v18

    invoke-interface {v5}, Lcz/msebera/android/httpclient/auth/AuthScheme;->getRealm()Ljava/lang/String;

    move-result-object v19

    invoke-interface {v5}, Lcz/msebera/android/httpclient/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v7, v0, v1, v2, v3}, Lcz/msebera/android/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v7}, Lcz/msebera/android/httpclient/client/CredentialsProvider;->getCredentials(Lcz/msebera/android/httpclient/auth/AuthScope;)Lcz/msebera/android/httpclient/auth/Credentials;

    move-result-object v11

    if-eqz v11, :cond_5

    new-instance v17, Lcz/msebera/android/httpclient/auth/AuthOption;

    move-object/from16 v0, v17

    invoke-direct {v0, v5, v11}, Lcz/msebera/android/httpclient/auth/AuthOption;-><init>(Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/auth/Credentials;)V

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyImpl;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Challenge for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " authentication scheme not available"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method
