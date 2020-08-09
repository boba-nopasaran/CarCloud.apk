.class public abstract Lcom/loopj/android/http/BaseJsonHttpResponseHandler;
.super Lcom/loopj/android/http/TextHttpResponseHandler;
.source "BaseJsonHttpResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<JSON_TYPE:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/loopj/android/http/TextHttpResponseHandler;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BaseJsonHttpRH"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lcom/loopj/android/http/BaseJsonHttpResponseHandler;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/loopj/android/http/TextHttpResponseHandler;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onFailure(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    const/4 v5, 0x0

    if-eqz p3, :cond_1

    new-instance v0, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$2;

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$2;-><init>(Lcom/loopj/android/http/BaseJsonHttpResponseHandler;Ljava/lang/String;I[Lcz/msebera/android/httpclient/Header;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/loopj/android/http/BaseJsonHttpResponseHandler;->getUseSynchronousMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/loopj/android/http/BaseJsonHttpResponseHandler;->getUsePoolThread()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v6, v5

    invoke-virtual/range {v1 .. v6}, Lcom/loopj/android/http/BaseJsonHttpResponseHandler;->onFailure(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public abstract onFailure(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcz/msebera/android/httpclient/Header;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "TJSON_TYPE;)V"
        }
    .end annotation
.end method

.method public final onSuccess(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0xcc

    if-eq p1, v1, :cond_1

    new-instance v0, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1;-><init>(Lcom/loopj/android/http/BaseJsonHttpResponseHandler;Ljava/lang/String;I[Lcz/msebera/android/httpclient/Header;)V

    invoke-virtual {p0}, Lcom/loopj/android/http/BaseJsonHttpResponseHandler;->getUseSynchronousMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/loopj/android/http/BaseJsonHttpResponseHandler;->getUsePoolThread()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, v2, v2}, Lcom/loopj/android/http/BaseJsonHttpResponseHandler;->onSuccess(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public abstract onSuccess(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcz/msebera/android/httpclient/Header;",
            "Ljava/lang/String;",
            "TJSON_TYPE;)V"
        }
    .end annotation
.end method

.method protected abstract parseResponse(Ljava/lang/String;Z)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)TJSON_TYPE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
