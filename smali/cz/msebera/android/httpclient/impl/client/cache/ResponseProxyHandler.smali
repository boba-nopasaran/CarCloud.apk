.class Lcz/msebera/android/httpclient/impl/client/cache/ResponseProxyHandler;
.super Ljava/lang/Object;
.source "ResponseProxyHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation


# static fields
.field private static final CLOSE_METHOD:Ljava/lang/reflect/Method;


# instance fields
.field private final original:Lcz/msebera/android/httpclient/HttpResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    :try_start_0
    const-class v1, Ljava/io/Closeable;

    const-string v2, "close"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProxyHandler;->CLOSE_METHOD:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(Lcz/msebera/android/httpclient/HttpResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProxyHandler;->original:Lcz/msebera/android/httpclient/HttpResponse;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProxyHandler;->original:Lcz/msebera/android/httpclient/HttpResponse;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/client/cache/IOUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    sget-object v2, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProxyHandler;->CLOSE_METHOD:Ljava/lang/reflect/Method;

    invoke-virtual {p2, v2}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProxyHandler;->close()V

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProxyHandler;->original:Lcz/msebera/android/httpclient/HttpResponse;

    invoke-virtual {p2, v2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    throw v0

    :cond_1
    throw v1
.end method
