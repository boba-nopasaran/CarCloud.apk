.class public Lcz/msebera/android/httpclient/impl/client/cache/FileResourceFactory;
.super Ljava/lang/Object;
.source "FileResourceFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/cache/ResourceFactory;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# instance fields
.field private final cacheDir:Ljava/io/File;

.field private final idgen:Lcz/msebera/android/httpclient/impl/client/cache/BasicIdGenerator;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/FileResourceFactory;->cacheDir:Ljava/io/File;

    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/BasicIdGenerator;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/cache/BasicIdGenerator;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/FileResourceFactory;->idgen:Lcz/msebera/android/httpclient/impl/client/cache/BasicIdGenerator;

    return-void
.end method

.method private generateUniqueCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 7

    const/16 v6, 0x2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/FileResourceFactory;->idgen:Lcz/msebera/android/httpclient/impl/client/cache/BasicIdGenerator;

    invoke-virtual {v4, v0}, Lcz/msebera/android/httpclient/impl/client/cache/BasicIdGenerator;->generate(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x64

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_0

    if-ne v1, v6, :cond_1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v4, 0x2d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/cache/FileResourceFactory;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v4
.end method


# virtual methods
.method public copy(Ljava/lang/String;Lcz/msebera/android/httpclient/client/cache/Resource;)Lcz/msebera/android/httpclient/client/cache/Resource;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/FileResourceFactory;->generateUniqueCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    instance-of v3, p2, Lcz/msebera/android/httpclient/impl/client/cache/FileResource;

    if-eqz v3, :cond_0

    check-cast p2, Lcz/msebera/android/httpclient/impl/client/cache/FileResource;

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/impl/client/cache/FileResource;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v0}, Lcz/msebera/android/httpclient/impl/client/cache/IOUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    :goto_0
    new-instance v3, Lcz/msebera/android/httpclient/impl/client/cache/FileResource;

    invoke-direct {v3, v0}, Lcz/msebera/android/httpclient/impl/client/cache/FileResource;-><init>(Ljava/io/File;)V

    return-object v3

    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-interface {p2}, Lcz/msebera/android/httpclient/client/cache/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3, v1}, Lcz/msebera/android/httpclient/impl/client/cache/IOUtils;->copyAndClose(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method public generate(Ljava/lang/String;Ljava/io/InputStream;Lcz/msebera/android/httpclient/client/cache/InputLimit;)Lcz/msebera/android/httpclient/client/cache/Resource;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/FileResourceFactory;->generateUniqueCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v6, 0x800

    :try_start_0
    new-array v0, v6, [B

    const-wide/16 v4, 0x0

    :cond_0
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v2}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v6, v2

    add-long/2addr v4, v6

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcz/msebera/android/httpclient/client/cache/InputLimit;->getValue()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    invoke-virtual {p3}, Lcz/msebera/android/httpclient/client/cache/InputLimit;->reached()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    new-instance v6, Lcz/msebera/android/httpclient/impl/client/cache/FileResource;

    invoke-direct {v6, v1}, Lcz/msebera/android/httpclient/impl/client/cache/FileResource;-><init>(Ljava/io/File;)V

    return-object v6

    :catchall_0
    move-exception v6

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw v6
.end method
