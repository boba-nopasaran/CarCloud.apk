.class Lcom/loopj/android/http/RetryHandler;
.super Ljava/lang/Object;
.source "RetryHandler.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;


# static fields
.field private static final exceptionBlacklist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final exceptionWhitelist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final maxRetries:I

.field private final retrySleepTimeMS:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/loopj/android/http/RetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/loopj/android/http/RetryHandler;->exceptionBlacklist:Ljava/util/HashSet;

    sget-object v0, Lcom/loopj/android/http/RetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    const-class v1, Lcz/msebera/android/httpclient/NoHttpResponseException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/loopj/android/http/RetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    const-class v1, Ljava/net/UnknownHostException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/loopj/android/http/RetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    const-class v1, Ljava/net/SocketException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/loopj/android/http/RetryHandler;->exceptionBlacklist:Ljava/util/HashSet;

    const-class v1, Ljava/io/InterruptedIOException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/loopj/android/http/RetryHandler;->exceptionBlacklist:Ljava/util/HashSet;

    const-class v1, Ljavax/net/ssl/SSLException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/loopj/android/http/RetryHandler;->maxRetries:I

    iput p2, p0, Lcom/loopj/android/http/RetryHandler;->retrySleepTimeMS:I

    return-void
.end method

.method static addClassToBlacklist(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    sget-object v0, Lcom/loopj/android/http/RetryHandler;->exceptionBlacklist:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static addClassToWhitelist(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    sget-object v0, Lcom/loopj/android/http/RetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected isInList(Ljava/util/HashSet;Ljava/lang/Throwable;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public retryRequest(Ljava/io/IOException;ILcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v2, 0x1

    const-string v5, "http.request_sent"

    invoke-interface {p3, v5}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    :goto_0
    iget v5, p0, Lcom/loopj/android/http/RetryHandler;->maxRetries:I

    if-le p2, v5, :cond_2

    const/4 v2, 0x0

    :cond_0
    :goto_1
    if-eqz v2, :cond_5

    const-string v5, "http.request"

    invoke-interface {p3, v5}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    if-nez v1, :cond_5

    :goto_2
    return v4

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/loopj/android/http/RetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    invoke-virtual {p0, v5, p1}, Lcom/loopj/android/http/RetryHandler;->isInList(Ljava/util/HashSet;Ljava/lang/Throwable;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    sget-object v5, Lcom/loopj/android/http/RetryHandler;->exceptionBlacklist:Ljava/util/HashSet;

    invoke-virtual {p0, v5, p1}, Lcom/loopj/android/http/RetryHandler;->isInList(Ljava/util/HashSet;Ljava/lang/Throwable;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_6

    iget v4, p0, Lcom/loopj/android/http/RetryHandler;->retrySleepTimeMS:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    :goto_3
    move v4, v2

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method
