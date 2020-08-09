.class public Lcom/car/cloud/HTTPMultiPart;
.super Ljava/lang/Object;
.source "HTTPMultiPart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/cloud/HTTPMultiPart$1;,
        Lcom/car/cloud/HTTPMultiPart$ProgressCallback;,
        Lcom/car/cloud/HTTPMultiPart$Part;
    }
.end annotation


# static fields
.field private static final LINE_FEED:Ljava/lang/String; = "\r\n"

.field private static final TAG:Ljava/lang/String; = "HTTPMultiPart"


# instance fields
.field private final boundary:Ljava/lang/String;

.field private final parts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/cloud/HTTPMultiPart$Part;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/HTTPMultiPart;->parts:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----ddixaczo3A9BallsUx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/car/cloud/HTTPMultiPart;->boundary:Ljava/lang/String;

    return-void
.end method

.method private buildOutputData(Ljava/io/OutputStream;)Z
    .locals 13

    const/4 v10, 0x1

    const/4 v9, 0x0

    new-instance v8, Ljava/io/PrintWriter;

    invoke-direct {v8, p1, v10}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iget-object v11, p0, Lcom/car/cloud/HTTPMultiPart;->parts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/car/cloud/HTTPMultiPart$Part;

    iget-object v11, v7, Lcom/car/cloud/HTTPMultiPart$Part;->file:Ljava/io/File;

    if-nez v11, :cond_0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "--"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/car/cloud/HTTPMultiPart;->boundary:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v11

    const-string v12, "\r\n"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Content-Disposition: form-data; name=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Lcom/car/cloud/HTTPMultiPart$Part;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v11

    const-string v12, "\r\n"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v11, "\r\n"

    invoke-virtual {v8, v11}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v11, v7, Lcom/car/cloud/HTTPMultiPart$Part;->value:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v11

    const-string v12, "\r\n"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v8}, Ljava/io/PrintWriter;->flush()V

    goto :goto_0

    :cond_0
    iget-object v11, v7, Lcom/car/cloud/HTTPMultiPart$Part;->file:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "--"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/car/cloud/HTTPMultiPart;->boundary:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v11

    const-string v12, "\r\n"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Content-Disposition: form-data; name=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Lcom/car/cloud/HTTPMultiPart$Part;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\"; filename=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v11

    const-string v12, "\r\n"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Content-Type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v11

    const-string v12, "\r\n"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v11, "\r\n"

    invoke-virtual {v8, v11}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v8}, Ljava/io/PrintWriter;->flush()V

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    iget-object v11, v7, Lcom/car/cloud/HTTPMultiPart$Part;->file:Ljava/io/File;

    invoke-direct {v6, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v11, 0x1000

    :try_start_1
    new-array v0, v11, [B

    :goto_1
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_2

    const/4 v11, 0x0

    invoke-virtual {p1, v0, v11, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v5, v6

    :goto_2
    :try_start_2
    const-string v10, "HTTPMultiPart"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "read file error"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_1

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_3
    return v9

    :cond_2
    :try_start_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v6, :cond_3

    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    :goto_4
    const-string v11, "\r\n"

    invoke-virtual {v8, v11}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v8}, Ljava/io/PrintWriter;->flush()V

    goto/16 :goto_0

    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v5, :cond_4

    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    :goto_6
    throw v9

    :cond_5
    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/PrintWriter;->flush()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/car/cloud/HTTPMultiPart;->boundary:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "--"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v9

    const-string v11, "\r\n"

    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V

    move v9, v10

    goto :goto_3

    :catch_1
    move-exception v11

    goto :goto_4

    :catch_2
    move-exception v10

    goto :goto_3

    :catch_3
    move-exception v10

    goto :goto_6

    :catchall_1
    move-exception v9

    move-object v5, v6

    goto :goto_5

    :catch_4
    move-exception v2

    goto :goto_2
.end method


# virtual methods
.method public addFilePart(Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    new-instance v0, Lcom/car/cloud/HTTPMultiPart$Part;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/car/cloud/HTTPMultiPart$Part;-><init>(Lcom/car/cloud/HTTPMultiPart$1;)V

    iput-object p1, v0, Lcom/car/cloud/HTTPMultiPart$Part;->name:Ljava/lang/String;

    iput-object p2, v0, Lcom/car/cloud/HTTPMultiPart$Part;->file:Ljava/io/File;

    iget-object v1, p0, Lcom/car/cloud/HTTPMultiPart;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFormField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/car/cloud/HTTPMultiPart$Part;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/car/cloud/HTTPMultiPart$Part;-><init>(Lcom/car/cloud/HTTPMultiPart$1;)V

    iput-object p1, v0, Lcom/car/cloud/HTTPMultiPart$Part;->name:Ljava/lang/String;

    iput-object p2, v0, Lcom/car/cloud/HTTPMultiPart$Part;->value:Ljava/lang/String;

    iget-object v1, p0, Lcom/car/cloud/HTTPMultiPart;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public post(Ljava/lang/String;Lcom/car/cloud/HTTPMultiPart$ProgressCallback;)Ljava/lang/String;
    .locals 24

    :try_start_0
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    const/high16 v19, 0x400000

    move/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/car/cloud/HTTPMultiPart;->buildOutputData(Ljava/io/OutputStream;)Z

    move-result v19

    if-nez v19, :cond_0

    const/16 v19, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/car/cloud/HTTPMultiPart$ProgressCallback;->postProgress(I)V

    const/16 v19, 0x0

    :goto_0
    return-object v19

    :cond_0
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    new-instance v18, Ljava/net/URL;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v19, "POST"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v19, "Content-Type"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "multipart/form-data; boundary="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/HTTPMultiPart;->boundary:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    const/4 v9, -0x1

    const/4 v7, 0x0

    :goto_1
    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_3

    const/16 v11, 0x1000

    add-int v19, v7, v11

    array-length v0, v4

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1

    array-length v0, v4

    move/from16 v19, v0

    sub-int v11, v19, v7

    :cond_1
    invoke-virtual {v12, v4, v7, v11}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v7, v11

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    int-to-double v0, v7

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v2, v20, v22

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    mul-double v20, v20, v2

    move-wide/from16 v0, v20

    double-to-int v14, v0

    if-eq v14, v9, :cond_2

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lcom/car/cloud/HTTPMultiPart$ProgressCallback;->postProgress(I)V

    move v9, v14

    :cond_2
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    const-string v19, "HTTPMultiPart"

    const-string v20, "post Error"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const/16 v19, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/car/cloud/HTTPMultiPart$ProgressCallback;->postProgress(I)V

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_3
    :try_start_1
    new-instance v16, Ljava/lang/StringBuffer;

    const/16 v19, 0x400

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    const/4 v8, 0x0

    const/16 v19, 0xc8

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    :goto_3
    new-instance v15, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/InputStreamReader;

    move-object/from16 v0, v19

    invoke-direct {v0, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v10, 0x0

    :goto_4
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_4
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    goto :goto_3

    :cond_5
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    const/16 v19, 0xc8

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_0

    :cond_6
    const-string v19, "HTTPMultiPart"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Server returned non-OK status: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
