.class public Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;
.super Ljava/lang/Object;
.source "DefaultConnectionKeepAliveStrategy.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# static fields
.field public static final INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeepAliveDuration(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)J
    .locals 8

    const-string v4, "HTTP response"

    invoke-static {p1, v4}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v1, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;

    const-string v4, "Keep-Alive"

    invoke-interface {p1, v4}, Lcz/msebera/android/httpclient/HttpResponse;->headerIterator(Ljava/lang/String;)Lcz/msebera/android/httpclient/HeaderIterator;

    move-result-object v4

    invoke-direct {v1, v4}, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;-><init>(Lcz/msebera/android/httpclient/HeaderIterator;)V

    :cond_0
    :goto_0
    invoke-interface {v1}, Lcz/msebera/android/httpclient/HeaderElementIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/HeaderElementIterator;->nextElement()Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "timeout"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    :goto_1
    return-wide v4

    :cond_1
    const-wide/16 v4, -0x1

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0
.end method
