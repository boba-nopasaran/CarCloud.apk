.class public final Lcom/qiniu/android/utils/Crc32;
.super Ljava/lang/Object;
.source "Crc32.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytes([B)J
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/qiniu/android/utils/Crc32;->bytes([BII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static bytes([BII)J
    .locals 4

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public static file(Ljava/io/File;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/high16 v5, 0x10000

    new-array v0, v5, [B

    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v4}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :goto_1
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    return-wide v6

    :cond_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    throw v5
.end method