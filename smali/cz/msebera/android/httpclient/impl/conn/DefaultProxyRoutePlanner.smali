.class public Lcz/msebera/android/httpclient/impl/conn/DefaultProxyRoutePlanner;
.super Lcz/msebera/android/httpclient/impl/conn/DefaultRoutePlanner;
.source "DefaultProxyRoutePlanner.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# instance fields
.field private final proxy:Lcz/msebera/android/httpclient/HttpHost;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/HttpHost;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/conn/DefaultProxyRoutePlanner;-><init>(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/conn/SchemePortResolver;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/conn/SchemePortResolver;)V
    .locals 1

    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/conn/DefaultRoutePlanner;-><init>(Lcz/msebera/android/httpclient/conn/SchemePortResolver;)V

    const-string v0, "Proxy host"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpHost;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultProxyRoutePlanner;->proxy:Lcz/msebera/android/httpclient/HttpHost;

    return-void
.end method


# virtual methods
.method protected determineProxy(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpHost;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultProxyRoutePlanner;->proxy:Lcz/msebera/android/httpclient/HttpHost;

    return-object v0
.end method
