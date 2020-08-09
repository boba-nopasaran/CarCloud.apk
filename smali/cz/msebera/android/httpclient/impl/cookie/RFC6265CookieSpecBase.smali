.class Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;
.super Ljava/lang/Object;
.source "RFC6265CookieSpecBase.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CookieSpec;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/ThreadSafe;
.end annotation


# static fields
.field private static final COMMA_CHAR:C = ','

.field private static final DQUOTE_CHAR:C = '\"'

.field private static final EQUAL_CHAR:C = '='

.field private static final ESCAPE_CHAR:C = '\\'

.field private static final PARAM_DELIMITER:C = ';'

.field private static final SPECIAL_CHARS:Ljava/util/BitSet;

.field private static final TOKEN_DELIMS:Ljava/util/BitSet;

.field private static final VALUE_DELIMS:Ljava/util/BitSet;


# instance fields
.field private final attribHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final attribHandlers:[Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

.field private final tokenParser:Lcz/msebera/android/httpclient/message/TokenParser;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcz/msebera/android/httpclient/message/TokenParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->TOKEN_DELIMS:Ljava/util/BitSet;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3b

    aput v2, v0, v1

    invoke-static {v0}, Lcz/msebera/android/httpclient/message/TokenParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->VALUE_DELIMS:Ljava/util/BitSet;

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcz/msebera/android/httpclient/message/TokenParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->SPECIAL_CHARS:Ljava/util/BitSet;

    return-void

    nop

    :array_0
    .array-data 4
        0x3d
        0x3b
    .end array-data

    :array_1
    .array-data 4
        0x20
        0x22
        0x2c
        0x3b
        0x5c
    .end array-data
.end method

.method varargs constructor <init>([Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, [Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

    iput-object v4, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->attribHandlers:[Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v4, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->attribHandlerMap:Ljava/util/Map;

    move-object v0, p1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->attribHandlerMap:Ljava/util/Map;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;->getAttributeName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v4, Lcz/msebera/android/httpclient/message/TokenParser;->INSTANCE:Lcz/msebera/android/httpclient/message/TokenParser;

    iput-object v4, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->tokenParser:Lcz/msebera/android/httpclient/message/TokenParser;

    return-void
.end method

.method static getDefaultDomain(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getDefaultPath(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method containsChars(Ljava/lang/CharSequence;Ljava/util/BitSet;)Z
    .locals 3

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method containsSpecialChar(Ljava/lang/CharSequence;)Z
    .locals 1

    sget-object v0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->SPECIAL_CHARS:Ljava/util/BitSet;

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->containsChars(Ljava/lang/CharSequence;Ljava/util/BitSet;)Z

    move-result v0

    return v0
.end method

.method public formatCookies(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/cookie/Cookie;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/Header;",
            ">;"
        }
    .end annotation

    const/16 v11, 0x5c

    const/4 v10, 0x1

    const/16 v9, 0x22

    const-string v8, "List of cookies"

    invoke-static {p1, v8}, Lcz/msebera/android/httpclient/util/Args;->notEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v10, :cond_3

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v8, Lcz/msebera/android/httpclient/cookie/CookiePriorityComparator;->INSTANCE:Lcz/msebera/android/httpclient/cookie/CookiePriorityComparator;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_0
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    mul-int/lit8 v8, v8, 0x14

    invoke-direct {v0, v8}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    const-string v8, "Cookie"

    invoke-virtual {v0, v8}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v8, ": "

    invoke-virtual {v0, v8}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/cookie/Cookie;

    if-lez v5, :cond_0

    const/16 v8, 0x3b

    invoke-virtual {v0, v8}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    const/16 v8, 0x20

    invoke-virtual {v0, v8}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    :cond_0
    invoke-interface {v2}, Lcz/msebera/android/httpclient/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    invoke-interface {v2}, Lcz/msebera/android/httpclient/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    const/16 v8, 0x3d

    invoke-virtual {v0, v8}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    invoke-virtual {p0, v6}, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->containsSpecialChar(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v0, v9}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_4

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v9, :cond_1

    if-ne v1, v11, :cond_2

    :cond_1
    invoke-virtual {v0, v11}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    :cond_2
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    move-object v7, p1

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v9}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v6}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v8, Lcz/msebera/android/httpclient/message/BufferedHeader;

    invoke-direct {v8, v0}, Lcz/msebera/android/httpclient/message/BufferedHeader;-><init>(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v3
.end method

.method public final getVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getVersionHeader()Lcz/msebera/android/httpclient/Header;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z
    .locals 5

    const-string v4, "Cookie"

    invoke-static {p1, v4}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v4, "Cookie origin"

    invoke-static {p2, v4}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->attribHandlers:[Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    invoke-interface {v1, p1, p2}, Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;->match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public final parse(Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/Header;",
            "Lcz/msebera/android/httpclient/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    const-string v15, "Header"

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v15, "Cookie origin"

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "Set-Cookie"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    new-instance v15, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unrecognized cookie header: \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_0
    move-object/from16 v0, p1

    instance-of v15, v0, Lcz/msebera/android/httpclient/FormattedHeader;

    if-eqz v15, :cond_1

    move-object/from16 v15, p1

    check-cast v15, Lcz/msebera/android/httpclient/FormattedHeader;

    invoke-interface {v15}, Lcz/msebera/android/httpclient/FormattedHeader;->getBuffer()Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object v2

    new-instance v4, Lcz/msebera/android/httpclient/message/ParserCursor;

    move-object/from16 v15, p1

    check-cast v15, Lcz/msebera/android/httpclient/FormattedHeader;

    invoke-interface {v15}, Lcz/msebera/android/httpclient/FormattedHeader;->getValuePos()I

    move-result v15

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v4, v15, v0}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->tokenParser:Lcz/msebera/android/httpclient/message/TokenParser;

    sget-object v16, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->TOKEN_DELIMS:Ljava/util/BitSet;

    move-object/from16 v0, v16

    invoke-virtual {v15, v2, v4, v0}, Lcz/msebera/android/httpclient/message/TokenParser;->parseToken(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_3

    new-instance v15, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cookie name is invalid: \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_1
    invoke-interface/range {p1 .. p1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_2

    new-instance v15, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    const-string v16, "Header value is null"

    invoke-direct/range {v15 .. v16}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_2
    new-instance v2, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    invoke-direct {v2, v15}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    invoke-virtual {v2, v12}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    new-instance v4, Lcz/msebera/android/httpclient/message/ParserCursor;

    const/4 v15, 0x0

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v4, v15, v0}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v15

    if-eqz v15, :cond_4

    new-instance v15, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cookie value is invalid: \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_4
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v15

    invoke-virtual {v2, v15}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v14

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v4, v15}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    const/16 v15, 0x3d

    if-eq v14, v15, :cond_5

    new-instance v15, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cookie value is invalid: \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->tokenParser:Lcz/msebera/android/httpclient/message/TokenParser;

    sget-object v16, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->VALUE_DELIMS:Ljava/util/BitSet;

    move-object/from16 v0, v16

    invoke-virtual {v15, v2, v4, v0}, Lcz/msebera/android/httpclient/message/TokenParser;->parseValue(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v15

    if-nez v15, :cond_6

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v4, v15}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    :cond_6
    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;

    invoke-direct {v3, v8, v13}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->getDefaultPath(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->getDefaultDomain(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v15}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->setCreationDate(Ljava/util/Date;)V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_1
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v15

    if-nez v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->tokenParser:Lcz/msebera/android/httpclient/message/TokenParser;

    sget-object v16, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->TOKEN_DELIMS:Ljava/util/BitSet;

    move-object/from16 v0, v16

    invoke-virtual {v15, v2, v4, v0}, Lcz/msebera/android/httpclient/message/TokenParser;->parseToken(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v15

    if-nez v15, :cond_7

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v15

    invoke-virtual {v2, v15}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v9

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v4, v15}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    const/16 v15, 0x3d

    if-ne v9, v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->tokenParser:Lcz/msebera/android/httpclient/message/TokenParser;

    sget-object v16, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->VALUE_DELIMS:Ljava/util/BitSet;

    move-object/from16 v0, v16

    invoke-virtual {v15, v2, v4, v0}, Lcz/msebera/android/httpclient/message/TokenParser;->parseToken(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v15

    if-nez v15, :cond_7

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v4, v15}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    :cond_7
    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15, v11}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_8
    const-string v15, "max-age"

    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    const-string v15, "expires"

    invoke-interface {v1, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->attribHandlerMap:Ljava/util/Map;

    invoke-interface {v15, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

    if-eqz v6, :cond_a

    invoke-interface {v6, v3, v11}, Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;->parse(Lcz/msebera/android/httpclient/cookie/SetCookie;Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    return-object v15
.end method

.method public final validate(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    const-string v4, "Cookie"

    invoke-static {p1, v4}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v4, "Cookie origin"

    invoke-static {p2, v4}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->attribHandlers:[Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    invoke-interface {v1, p1, p2}, Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;->validate(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
