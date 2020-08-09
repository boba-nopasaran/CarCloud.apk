.class public abstract Lcz/msebera/android/httpclient/entity/mime/content/AbstractContentBody;
.super Ljava/lang/Object;
.source "AbstractContentBody.java"

# interfaces
.implements Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;


# instance fields
.field private final contentType:Lcz/msebera/android/httpclient/entity/ContentType;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/entity/ContentType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Content type"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/content/AbstractContentBody;->contentType:Lcz/msebera/android/httpclient/entity/ContentType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcz/msebera/android/httpclient/entity/ContentType;->parse(Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/entity/mime/content/AbstractContentBody;-><init>(Lcz/msebera/android/httpclient/entity/ContentType;)V

    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcz/msebera/android/httpclient/entity/mime/content/AbstractContentBody;->contentType:Lcz/msebera/android/httpclient/entity/ContentType;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/entity/ContentType;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContentType()Lcz/msebera/android/httpclient/entity/ContentType;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/content/AbstractContentBody;->contentType:Lcz/msebera/android/httpclient/entity/ContentType;

    return-object v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Lcz/msebera/android/httpclient/entity/mime/content/AbstractContentBody;->contentType:Lcz/msebera/android/httpclient/entity/ContentType;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/entity/ContentType;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/content/AbstractContentBody;->contentType:Lcz/msebera/android/httpclient/entity/ContentType;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/entity/ContentType;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Lcz/msebera/android/httpclient/entity/mime/content/AbstractContentBody;->contentType:Lcz/msebera/android/httpclient/entity/ContentType;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/entity/ContentType;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method