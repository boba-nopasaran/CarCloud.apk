.class public Lcz/msebera/android/httpclient/protocol/RequestDate;
.super Ljava/lang/Object;
.source "RequestDate.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpRequestInterceptor;


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

    sput-object v0, Lcz/msebera/android/httpclient/protocol/RequestDate;->DATE_GENERATOR:Lcz/msebera/android/httpclient/protocol/HttpDateGenerator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v1, "HTTP request"

    invoke-static {p1, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v1, p1, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-eqz v1, :cond_0

    const-string v1, "Date"

    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcz/msebera/android/httpclient/protocol/RequestDate;->DATE_GENERATOR:Lcz/msebera/android/httpclient/protocol/HttpDateGenerator;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/protocol/HttpDateGenerator;->getCurrentDate()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Date"

    invoke-interface {p1, v1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method