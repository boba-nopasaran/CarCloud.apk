.class Lcz/msebera/android/httpclient/entity/mime/HttpBrowserCompatibleMultipart;
.super Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;
.source "HttpBrowserCompatibleMultipart.java"


# instance fields
.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;)V

    iput-object p3, p0, Lcz/msebera/android/httpclient/entity/mime/HttpBrowserCompatibleMultipart;->parts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected formatMultipartHeader(Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->getHeader()Lcz/msebera/android/httpclient/entity/mime/Header;

    move-result-object v3

    const-string v4, "Content-Disposition"

    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/entity/mime/Header;->getField(Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/MinimalField;

    move-result-object v0

    iget-object v4, p0, Lcz/msebera/android/httpclient/entity/mime/HttpBrowserCompatibleMultipart;->charset:Ljava/nio/charset/Charset;

    invoke-static {v0, v4, p2}, Lcz/msebera/android/httpclient/entity/mime/HttpBrowserCompatibleMultipart;->writeField(Lcz/msebera/android/httpclient/entity/mime/MinimalField;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->getBody()Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    move-result-object v4

    invoke-interface {v4}, Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v4, "Content-Type"

    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/entity/mime/Header;->getField(Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/MinimalField;

    move-result-object v1

    iget-object v4, p0, Lcz/msebera/android/httpclient/entity/mime/HttpBrowserCompatibleMultipart;->charset:Ljava/nio/charset/Charset;

    invoke-static {v1, v4, p2}, Lcz/msebera/android/httpclient/entity/mime/HttpBrowserCompatibleMultipart;->writeField(Lcz/msebera/android/httpclient/entity/mime/MinimalField;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    :cond_0
    return-void
.end method

.method public getBodyParts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/HttpBrowserCompatibleMultipart;->parts:Ljava/util/List;

    return-object v0
.end method
