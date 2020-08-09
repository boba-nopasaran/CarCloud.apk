.class public Lcz/msebera/android/httpclient/protocol/ResponseDate;
.super Ljava/lang/Object;
.source "ResponseDate.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpResponseInterceptor;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/ThreadSafe;
.end annotation


# static fields
.field private static final DATE_GENERATOR:Lcz/msebera/android/httpclient/protocol/HttpDateGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/protocol/HttpDateGenerator;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/protocol/HttpDateGenerator;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/protocol/ResponseDate;->DATE_GENERATOR:Lcz/msebera/android/httpclient/protocol/HttpDateGenerator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v2, "HTTP response"

    invoke-static {p1, v2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_0

    const-string v2, "Date"

    invoke-interface {p1, v2}, Lcz/msebera/android/httpclient/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcz/msebera/android/httpclient/protocol/ResponseDate;->DATE_GENERATOR:Lcz/msebera/android/httpclient/protocol/HttpDateGenerator;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/protocol/HttpDateGenerator;->getCurrentDate()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Date"

    invoke-interface {p1, v2, v0}, Lcz/msebera/android/httpclient/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
