.class public Lcz/msebera/android/httpclient/impl/client/cache/HeapResourceFactory;
.super Ljava/lang/Object;
.source "HeapResourceFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/cache/ResourceFactory;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy(Ljava/lang/String;Lcz/msebera/android/httpclient/client/cache/Resource;)Lcz/msebera/android/httpclient/client/cache/Resource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v2, p2, Lcz/msebera/android/httpclient/impl/client/cache/HeapResource;

    if-eqz v2, :cond_0

    check-cast p2, Lcz/msebera/android/httpclient/impl/client/cache/HeapResource;

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/impl/client/cache/HeapResource;->getByteArray()[B

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/client/cache/HeapResourceFactory;->createResource([B)Lcz/msebera/android/httpclient/client/cache/Resource;

    move-result-object v2

    return-object v2

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {p2}, Lcz/msebera/android/httpclient/client/cache/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v1}, Lcz/msebera/android/httpclient/impl/client/cache/IOUtils;->copyAndClose(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0
.end method

.method createResource([B)Lcz/msebera/android/httpclient/client/cache/Resource;
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/HeapResource;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/HeapResource;-><init>([B)V

    return-object v0
.end method

.method public generate(Ljava/lang/String;Ljava/io/InputStream;Lcz/msebera/android/httpclient/client/cache/InputLimit;)Lcz/msebera/android/httpclient/client/cache/Resource;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x800

    new-array v0, v3, [B

    const-wide/16 v4, 0x0

    :cond_0
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    int-to-long v6, v1

    add-long/2addr v4, v6

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcz/msebera/android/httpclient/client/cache/InputLimit;->getValue()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    invoke-virtual {p3}, Lcz/msebera/android/httpclient/client/cache/InputLimit;->reached()V

    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcz/msebera/android/httpclient/impl/client/cache/HeapResourceFactory;->createResource([B)Lcz/msebera/android/httpclient/client/cache/Resource;

    move-result-object v3

    return-object v3
.end method
