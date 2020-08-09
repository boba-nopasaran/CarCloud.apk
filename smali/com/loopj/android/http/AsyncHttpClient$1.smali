.class Lcom/loopj/android/http/AsyncHttpClient$1;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/http/AsyncHttpClient;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopj/android/http/AsyncHttpClient;


# direct methods
.method constructor <init>(Lcom/loopj/android/http/AsyncHttpClient;)V
    .locals 0

    iput-object p1, p0, Lcom/loopj/android/http/AsyncHttpClient$1;->this$0:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 9

    const-string v3, "Accept-Encoding"

    invoke-interface {p1, v3}, Lcz/msebera/android/httpclient/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Accept-Encoding"

    const-string v4, "gzip"

    invoke-interface {p1, v3, v4}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/loopj/android/http/AsyncHttpClient$1;->this$0:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-static {v3}, Lcom/loopj/android/http/AsyncHttpClient;->access$000(Lcom/loopj/android/http/AsyncHttpClient;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    sget-object v3, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v4, "AsyncHttpClient"

    const-string v5, "Headers were overwritten! (%s | %s) overwrites (%s | %s)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/loopj/android/http/AsyncHttpClient$1;->this$0:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-static {v8}, Lcom/loopj/android/http/AsyncHttpClient;->access$000(Lcom/loopj/android/http/AsyncHttpClient;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-interface {v2}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-interface {v2}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/loopj/android/http/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lcz/msebera/android/httpclient/HttpRequest;->removeHeader(Lcz/msebera/android/httpclient/Header;)V

    :cond_1
    iget-object v3, p0, Lcom/loopj/android/http/AsyncHttpClient$1;->this$0:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-static {v3}, Lcom/loopj/android/http/AsyncHttpClient;->access$000(Lcom/loopj/android/http/AsyncHttpClient;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v0, v3}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method
