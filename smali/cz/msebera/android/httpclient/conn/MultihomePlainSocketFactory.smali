.class public final Lcz/msebera/android/httpclient/conn/MultihomePlainSocketFactory;
.super Ljava/lang/Object;
.source "MultihomePlainSocketFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lcz/msebera/android/httpclient/conn/MultihomePlainSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/conn/MultihomePlainSocketFactory;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/MultihomePlainSocketFactory;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/conn/MultihomePlainSocketFactory;->DEFAULT_FACTORY:Lcz/msebera/android/httpclient/conn/MultihomePlainSocketFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSocketFactory()Lcz/msebera/android/httpclient/conn/MultihomePlainSocketFactory;
    .locals 1

    sget-object v0, Lcz/msebera/android/httpclient/conn/MultihomePlainSocketFactory;->DEFAULT_FACTORY:Lcz/msebera/android/httpclient/conn/MultihomePlainSocketFactory;

    return-object v0
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v11, "Target host"

    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v11, "HTTP parameters"

    move-object/from16 v0, p6

    invoke-static {v0, v11}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v9, p1

    if-nez v9, :cond_0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/MultihomePlainSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v9

    :cond_0
    if-nez p4, :cond_1

    if-lez p5, :cond_2

    :cond_1
    new-instance v6, Ljava/net/InetSocketAddress;

    if-lez p5, :cond_4

    :goto_0
    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v6, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v9, v6}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    :cond_2
    invoke-static/range {p6 .. p6}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->getConnectionTimeout(Lcz/msebera/android/httpclient/params/HttpParams;)I

    move-result v10

    invoke-static/range {p2 .. p2}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v5

    new-instance v2, Ljava/util/ArrayList;

    array-length v11, v5

    invoke-direct {v2, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    const/4 v7, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/InetAddress;

    :try_start_0
    new-instance v11, Ljava/net/InetSocketAddress;

    move/from16 v0, p3

    invoke-direct {v11, v8, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v9, v11, v10}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    if-eqz v7, :cond_5

    throw v7

    :cond_4
    const/16 p5, 0x0

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v11, Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Connect to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " timed out"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    throw v11

    :catch_1
    move-exception v3

    new-instance v9, Ljava/net/Socket;

    invoke-direct {v9}, Ljava/net/Socket;-><init>()V

    move-object v7, v3

    goto :goto_1

    :cond_5
    return-object v9
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 1

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method

.method public final isSecure(Ljava/net/Socket;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v1, 0x0

    const-string v0, "Socket"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Socket is closed"

    invoke-static {v0, v2}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    return v1

    :cond_0
    move v0, v1

    goto :goto_0
.end method
