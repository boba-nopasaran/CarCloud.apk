.class public Lcz/msebera/android/httpclient/message/BasicHttpEntityEnclosingRequest;
.super Lcz/msebera/android/httpclient/message/BasicHttpRequest;
.source "BasicHttpEntityEnclosingRequest.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private entity:Lcz/msebera/android/httpclient/HttpEntity;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/RequestLine;)V
    .locals 0

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/message/BasicHttpRequest;-><init>(Lcz/msebera/android/httpclient/RequestLine;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/ProtocolVersion;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/ProtocolVersion;)V

    return-void
.end method


# virtual methods
.method public expectContinue()Z
    .locals 3

    const-string v1, "Expect"

    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/message/BasicHttpEntityEnclosingRequest;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "100-continue"

    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEntity()Lcz/msebera/android/httpclient/HttpEntity;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpEntityEnclosingRequest;->entity:Lcz/msebera/android/httpclient/HttpEntity;

    return-object v0
.end method

.method public setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/message/BasicHttpEntityEnclosingRequest;->entity:Lcz/msebera/android/httpclient/HttpEntity;

    return-void
.end method
