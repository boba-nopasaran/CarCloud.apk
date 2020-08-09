.class public final Lcz/msebera/android/httpclient/conn/util/PublicSuffixListParser;
.super Ljava/lang/Object;
.source "PublicSuffixListParser.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# static fields
.field private static final MAX_LINE_LEN:I = 0x100


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readLine(Ljava/io/Reader;Ljava/lang/StringBuilder;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, -0x1

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    if-eq v0, v6, :cond_1

    int-to-char v1, v0

    const/16 v4, 0xa

    if-ne v1, v4, :cond_3

    :cond_1
    if-eq v0, v6, :cond_2

    const/4 v3, 0x1

    :cond_2
    :goto_0
    return v3

    :cond_3
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x1

    :cond_4
    if-nez v2, :cond_5

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/16 v5, 0x100

    if-le v4, v5, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public parse(Ljava/io/Reader;)Lcz/msebera/android/httpclient/conn/util/PublicSuffixList;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x100

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x1

    :cond_0
    :goto_0
    if-eqz v3, :cond_4

    invoke-direct {p0, v4, v6}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixListParser;->readLine(Ljava/io/Reader;Ljava/lang/StringBuilder;)Z

    move-result v3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "//"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "."

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-string v7, "!"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance v7, Lcz/msebera/android/httpclient/conn/util/PublicSuffixList;

    invoke-direct {v7, v5, v0}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixList;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v7
.end method
