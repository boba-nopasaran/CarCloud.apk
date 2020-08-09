.class public final Lcz/msebera/android/httpclient/conn/routing/RouteTracker;
.super Ljava/lang/Object;
.source "RouteTracker.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/routing/RouteInfo;
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private connected:Z

.field private layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

.field private final localAddress:Ljava/net/InetAddress;

.field private proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

.field private secure:Z

.field private final targetHost:Lcz/msebera/android/httpclient/HttpHost;

.field private tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Target host"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->targetHost:Lcz/msebera/android/httpclient/HttpHost;

    iput-object p2, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    sget-object v0, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->PLAIN:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    sget-object v0, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;->PLAIN:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V
    .locals 2

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v0

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final connectProxy(Lcz/msebera/android/httpclient/HttpHost;Z)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "Proxy host"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Already connected"

    invoke-static {v0, v3}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    iput-boolean v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    new-array v0, v1, [Lcz/msebera/android/httpclient/HttpHost;

    aput-object p1, v0, v2

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    iput-boolean p2, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->secure:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public final connectTarget(Z)V
    .locals 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "Already connected"

    invoke-static {v0, v2}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    iput-boolean v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    iput-boolean p1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->secure:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    iget-boolean v3, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    iget-boolean v4, v0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->secure:Z

    iget-boolean v4, v0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->secure:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    iget-object v4, v0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    iget-object v4, v0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->targetHost:Lcz/msebera/android/httpclient/HttpHost;

    iget-object v4, v0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->targetHost:Lcz/msebera/android/httpclient/HttpHost;

    invoke-static {v3, v4}, Lcz/msebera/android/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    iget-object v4, v0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    invoke-static {v3, v4}, Lcz/msebera/android/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    iget-object v4, v0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    invoke-static {v3, v4}, Lcz/msebera/android/httpclient/util/LangUtils;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public final getHopCount()I
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    array-length v1, v1

    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method

.method public final getHopTarget(I)Lcz/msebera/android/httpclient/HttpHost;
    .locals 4

    const-string v2, "Hop index"

    invoke-static {p1, v2}, Lcz/msebera/android/httpclient/util/Args;->notNegative(ILjava/lang/String;)I

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->getHopCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    const-string v3, "Hop index exceeds tracked route length"

    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/util/Args;->check(ZLjava/lang/String;)V

    const/4 v1, 0x0

    add-int/lit8 v2, v0, -0x1

    if-ge p1, v2, :cond_1

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    aget-object v1, v2, p1

    :goto_1
    return-object v1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->targetHost:Lcz/msebera/android/httpclient/HttpHost;

    goto :goto_1
.end method

.method public final getLayerType()Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    return-object v0
.end method

.method public final getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final getProxyHost()Lcz/msebera/android/httpclient/HttpHost;
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public final getTargetHost()Lcz/msebera/android/httpclient/HttpHost;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->targetHost:Lcz/msebera/android/httpclient/HttpHost;

    return-object v0
.end method

.method public final getTunnelType()Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    return-object v0
.end method

.method public final hashCode()I
    .locals 6

    const/16 v2, 0x11

    iget-object v5, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->targetHost:Lcz/msebera/android/httpclient/HttpHost;

    invoke-static {v2, v5}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v2

    iget-object v5, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    invoke-static {v2, v5}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v2

    iget-object v5, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    invoke-static {v2, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v5, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    invoke-static {v2, v5}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(IZ)I

    move-result v2

    iget-boolean v5, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->secure:Z

    invoke-static {v2, v5}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(IZ)I

    move-result v2

    iget-object v5, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    invoke-static {v2, v5}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v2

    iget-object v5, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    invoke-static {v2, v5}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v2

    return v2
.end method

.method public final isConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    return v0
.end method

.method public final isLayered()Z
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    sget-object v1, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;->LAYERED:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSecure()Z
    .locals 1

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->secure:Z

    return v0
.end method

.method public final isTunnelled()Z
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    sget-object v1, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final layerProtocol(Z)V
    .locals 2

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    const-string v1, "No layered protocol unless connected"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    sget-object v0, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;->LAYERED:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    iput-boolean p1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->secure:Z

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    sget-object v0, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->PLAIN:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    sget-object v0, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;->PLAIN:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    iput-boolean v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->secure:Z

    return-void
.end method

.method public final toRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .locals 7

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->targetHost:Lcz/msebera/android/httpclient/HttpHost;

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    iget-object v3, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    iget-boolean v4, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->secure:Z

    iget-object v5, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    iget-object v6, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    invoke-direct/range {v0 .. v6}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;[Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;)V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->getHopCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1e

    add-int/lit8 v5, v5, 0x32

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "RouteTracker["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "->"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v5, 0x7b

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    if-eqz v5, :cond_1

    const/16 v5, 0x63

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v5, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    sget-object v6, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    if-ne v5, v6, :cond_2

    const/16 v5, 0x74

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v5, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    sget-object v6, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;->LAYERED:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    if-ne v5, v6, :cond_3

    const/16 v5, 0x6c

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean v5, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->secure:Z

    if-eqz v5, :cond_4

    const/16 v5, 0x73

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    const-string v5, "}->"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    if-eqz v5, :cond_5

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_5

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "->"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->targetHost:Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v5, 0x5d

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public final tunnelProxy(Lcz/msebera/android/httpclient/HttpHost;Z)V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "Proxy host"

    invoke-static {p1, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    const-string v2, "No tunnel unless connected"

    invoke-static {v1, v2}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    const-string v2, "No tunnel without proxy"

    invoke-static {v1, v2}, Lcz/msebera/android/httpclient/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Lcz/msebera/android/httpclient/HttpHost;

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    iput-boolean p2, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->secure:Z

    return-void
.end method

.method public final tunnelTarget(Z)V
    .locals 2

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    const-string v1, "No tunnel unless connected"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    const-string v1, "No tunnel without proxy"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    iput-boolean p1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->secure:Z

    return-void
.end method
