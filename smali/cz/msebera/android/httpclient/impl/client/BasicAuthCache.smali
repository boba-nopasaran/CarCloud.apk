.class public Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;
.super Ljava/lang/Object;
.source "BasicAuthCache.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/AuthCache;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/ThreadSafe;
.end annotation


# instance fields
.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcz/msebera/android/httpclient/HttpHost;",
            "[B>;"
        }
    .end annotation
.end field

.field private final schemePortResolver:Lcz/msebera/android/httpclient/conn/SchemePortResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;-><init>(Lcz/msebera/android/httpclient/conn/SchemePortResolver;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/SchemePortResolver;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;->map:Ljava/util/Map;

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;->schemePortResolver:Lcz/msebera/android/httpclient/conn/SchemePortResolver;

    return-void

    :cond_0
    sget-object p1, Lcz/msebera/android/httpclient/impl/conn/DefaultSchemePortResolver;->INSTANCE:Lcz/msebera/android/httpclient/impl/conn/DefaultSchemePortResolver;

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public get(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/auth/AuthScheme;
    .locals 8

    const/4 v5, 0x0

    const-string v6, "HTTP host"

    invoke-static {p1, v6}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;->map:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;->getKey(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_2

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/auth/AuthScheme;

    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v3

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isWarnEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v7, "Unexpected I/O error while de-serializing auth scheme"

    invoke-virtual {v6, v7, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v5

    goto :goto_0

    :catch_1
    move-exception v3

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isWarnEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v7, "Unexpected error while de-serializing auth scheme"

    invoke-virtual {v6, v7, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v5

    goto :goto_0

    :cond_2
    move-object v0, v5

    goto :goto_0
.end method

.method protected getKey(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/HttpHost;
    .locals 5

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v2

    if-gtz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;->schemePortResolver:Lcz/msebera/android/httpclient/conn/SchemePortResolver;

    invoke-interface {v2, p1}, Lcz/msebera/android/httpclient/conn/SchemePortResolver;->resolve(Lcz/msebera/android/httpclient/HttpHost;)I
    :try_end_0
    .catch Lcz/msebera/android/httpclient/conn/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    new-instance v2, Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object p1, v2

    :cond_0
    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public put(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;)V
    .locals 6

    const-string v3, "HTTP host"

    invoke-static {p1, v3}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v3, p2, Ljava/io/Serializable;

    if-eqz v3, :cond_2

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;->map:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;->getKey(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v4, "Unexpected I/O error while serializing auth scheme"

    invoke-virtual {v3, v4, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Auth scheme "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not serializable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public remove(Lcz/msebera/android/httpclient/HttpHost;)V
    .locals 2

    const-string v0, "HTTP host"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;->map:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;->getKey(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
