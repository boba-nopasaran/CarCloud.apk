.class public Lcz/msebera/android/httpclient/client/utils/URIUtils;
.super Ljava/lang/Object;
.source "URIUtils.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p2, :cond_1

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p3, :cond_2

    const-string v1, "/"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    if-eqz p4, :cond_5

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    if-eqz p5, :cond_6

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    new-instance v1, Ljava/net/URI;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static extractHost(Ljava/net/URI;)Lcz/msebera/android/httpclient/HttpHost;
    .locals 12

    if-nez p0, :cond_1

    const/4 v8, 0x0

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    const/4 v8, 0x0

    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Ljava/net/URI;->getPort()I

    move-result v5

    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const/16 v10, 0x40

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v11, v0, 0x1

    if-le v10, v11, :cond_3

    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_1
    if-eqz v2, :cond_6

    const/16 v10, 0x3a

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_6

    add-int/lit8 v6, v1, 0x1

    const/4 v4, 0x0

    move v3, v6

    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v3, v10, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-eqz v10, :cond_4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    if-lez v4, :cond_5

    add-int v10, v6, v4

    :try_start_0
    invoke-virtual {v2, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    :cond_5
    :goto_3
    const/4 v10, 0x0

    invoke-virtual {v2, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_6
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Lcz/msebera/android/httpclient/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    :try_start_1
    new-instance v9, Lcz/msebera/android/httpclient/HttpHost;

    invoke-direct {v9, v2, v5, v7}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v8, v9

    goto :goto_0

    :catch_0
    move-exception v10

    goto :goto_0

    :catch_1
    move-exception v10

    goto :goto_3
.end method

.method private static normalizeSyntax(Ljava/net/URI;)Ljava/net/URI;
    .locals 18

    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->isOpaque()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_0
    move-object/from16 v1, p0

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v4

    const-string v5, "Base URI must be absolute"

    invoke-static {v4, v5}, Lcz/msebera/android/httpclient/util/Args;->check(ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    const-string v17, ""

    :goto_1
    const-string v4, "/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    new-instance v16, Ljava/util/Stack;

    invoke-direct/range {v16 .. v16}, Ljava/util/Stack;-><init>()V

    move-object v7, v11

    array-length v12, v7

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v12, :cond_7

    aget-object v10, v7, v9

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "."

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v17

    goto :goto_1

    :cond_5
    const-string v4, ".."

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual/range {v16 .. v16}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_3

    :cond_6
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const/16 v4, 0x2f

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    const/16 v4, 0x2f

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_9

    const/16 v4, 0x2f

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/net/URI;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    :cond_a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v13, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    const/16 v4, 0x3f

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    const/16 v4, 0x23

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto/16 :goto_0

    :catch_0
    move-exception v8

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static resolve(Ljava/net/URI;Lcz/msebera/android/httpclient/HttpHost;Ljava/util/List;)Ljava/net/URI;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lcz/msebera/android/httpclient/HttpHost;",
            "Ljava/util/List",
            "<",
            "Ljava/net/URI;",
            ">;)",
            "Ljava/net/URI;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const-string v3, "Request URI"

    invoke-static {p0, v3}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    new-instance v2, Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    invoke-direct {v2, p0}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;-><init>(Ljava/net/URI;)V

    :goto_0
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->getFragment()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->setFragment(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->isAbsolute()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->setScheme(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->setHost(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->setPort(I)Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    :cond_2
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->build()Ljava/net/URI;

    move-result-object v3

    return-object v3

    :cond_3
    new-instance v2, Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URI;

    invoke-direct {v2, v3}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;-><init>(Ljava/net/URI;)V

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->getFragment()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-nez v0, :cond_4

    if-ltz v1, :cond_4

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v0}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->setFragment(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    goto :goto_0
.end method

.method public static resolve(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;
    .locals 1

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    .locals 7

    const-string v5, "Base URI"

    invoke-static {p0, v5}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v5, "Reference URI"

    invoke-static {p1, v5}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, p1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p0, v1}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->resolveReferenceStartingWithQueryString(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v5

    :goto_0
    return-object v5

    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v5, "#"

    invoke-static {v5}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    :cond_1
    invoke-virtual {p0, v1}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v2

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/16 v6, 0x23

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    :cond_2
    invoke-static {v2}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->normalizeSyntax(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v5

    goto :goto_0
.end method

.method private static resolveReferenceStartingWithQueryString(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    .locals 4

    const/16 v3, 0x3f

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    return-object v1
.end method

.method public static rewriteURI(Ljava/net/URI;)Ljava/net/URI;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v3, 0x0

    const-string v1, "URI"

    invoke-static {p0, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    invoke-direct {v0, p0}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;-><init>(Ljava/net/URI;)V

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->setUserInfo(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    :cond_1
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcz/msebera/android/httpclient/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "/"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->setPath(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    :cond_2
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->getHost()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->setHost(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    :cond_3
    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->setFragment(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->build()Ljava/net/URI;

    move-result-object p0

    goto :goto_0
.end method

.method public static rewriteURI(Ljava/net/URI;Lcz/msebera/android/httpclient/HttpHost;)Ljava/net/URI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lcz/msebera/android/httpclient/HttpHost;Z)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static rewriteURI(Ljava/net/URI;Lcz/msebera/android/httpclient/HttpHost;Z)Ljava/net/URI;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string v1, "URI"

    invoke-static {p0, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    invoke-direct {v0, p0}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;-><init>(Ljava/net/URI;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->setScheme(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->setHost(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->setPort(I)Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    :goto_1
    if-eqz p2, :cond_1

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->setFragment(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    :cond_1
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcz/msebera/android/httpclient/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "/"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->setPath(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    :cond_2
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->build()Ljava/net/URI;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->setScheme(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->setHost(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->setPort(I)Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    goto :goto_1
.end method

.method public static rewriteURIForRoute(Ljava/net/URI;Lcz/msebera/android/httpclient/conn/routing/RouteInfo;)Ljava/net/URI;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-nez p0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->getProxyHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->isTunnelled()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lcz/msebera/android/httpclient/HttpHost;Z)Ljava/net/URI;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0, v1, v3}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lcz/msebera/android/httpclient/HttpHost;Z)Ljava/net/URI;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1

    goto :goto_0
.end method
