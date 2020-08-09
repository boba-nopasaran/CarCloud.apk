.class public Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;
.super Lcz/msebera/android/httpclient/impl/cookie/AbstractCookieAttributeHandler;
.source "LaxExpiresHandler.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# static fields
.field private static final DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

.field private static final DELIMS:Ljava/util/BitSet;

.field private static final MONTHS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MONTH_PATTERN:Ljava/util/regex/Pattern;

.field private static final TIME_PATTERN:Ljava/util/regex/Pattern;

.field static final UTC:Ljava/util/TimeZone;

.field private static final YEAR_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x9

    const/4 v5, 0x2

    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    sput-object v3, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;->UTC:Ljava/util/TimeZone;

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    const/16 v0, 0x20

    :goto_0
    const/16 v3, 0x2f

    if-gt v0, v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x3b

    :goto_1
    const/16 v3, 0x40

    if-gt v0, v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x5b

    :goto_2
    const/16 v3, 0x60

    if-gt v0, v3, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/16 v0, 0x7b

    :goto_3
    const/16 v3, 0x7e

    if-gt v0, v3, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    sput-object v1, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;->DELIMS:Ljava/util/BitSet;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    const-string v3, "jan"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "feb"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "mar"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "apr"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "may"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "jun"

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "jul"

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "aug"

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "sep"

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "oct"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "nov"

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "dec"

    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v2, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;->MONTHS:Ljava/util/Map;

    const-string v3, "^([0-9]{1,2}):([0-9]{1,2}):([0-9]{1,2})([^0-9].*)?$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;->TIME_PATTERN:Ljava/util/regex/Pattern;

    const-string v3, "^([0-9]{1,2})([^0-9].*)?$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

    const-string v3, "^(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec)(.*)?$"

    invoke-static {v3, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    const-string v3, "^([0-9]{2,4})([^0-9].*)?$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/AbstractCookieAttributeHandler;-><init>()V

    return-void
.end method

.method private copyContent(Ljava/lang/CharSequence;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/lang/StringBuilder;)V
    .locals 6

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v4

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v2

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getUpperBound()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    sget-object v5, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;->DELIMS:Ljava/util/BitSet;

    invoke-virtual {v5, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-virtual {p2, v4}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    return-void

    :cond_1
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private skipDelims(Ljava/lang/CharSequence;Lcz/msebera/android/httpclient/message/ParserCursor;)V
    .locals 6

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v4

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v2

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getUpperBound()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    sget-object v5, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;->DELIMS:Ljava/util/BitSet;

    invoke-virtual {v5, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v4}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    return-void
.end method


# virtual methods
.method public getAttributeName()Ljava/lang/String;
    .locals 1

    const-string v0, "max-age"

    return-object v0
.end method

.method public parse(Lcz/msebera/android/httpclient/cookie/SetCookie;Ljava/lang/String;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    const-string v17, "Cookie"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v4, Lcz/msebera/android/httpclient/message/ParserCursor;

    const/16 v17, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v4, v0, v1}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v17

    if-nez v17, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;->skipDelims(Ljava/lang/CharSequence;Lcz/msebera/android/httpclient/message/ParserCursor;)V

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4, v3}, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;->copyContent(Ljava/lang/CharSequence;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/lang/StringBuilder;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    if-nez v17, :cond_3

    :cond_1
    if-eqz v8, :cond_2

    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    if-nez v9, :cond_7

    :cond_2
    new-instance v17, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Invalid \'expires\' attribute: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_3
    if-nez v8, :cond_4

    :try_start_1
    sget-object v17, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;->TIME_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v17

    if-eqz v17, :cond_4

    const/4 v8, 0x1

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    goto :goto_0

    :cond_4
    if-nez v6, :cond_5

    sget-object v17, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v17

    if-eqz v17, :cond_5

    const/4 v6, 0x1

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    :cond_5
    if-nez v7, :cond_6

    sget-object v17, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v17

    if-eqz v17, :cond_6

    const/4 v7, 0x1

    sget-object v17, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;->MONTHS:Ljava/util/Map;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    sget-object v19, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v14

    goto/16 :goto_0

    :cond_6
    if-nez v9, :cond_0

    sget-object v17, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v17

    if-eqz v17, :cond_0

    const/4 v9, 0x1

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v16

    goto/16 :goto_0

    :catch_0
    move-exception v11

    new-instance v17, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Invalid \'expires\' attribute: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_7
    const/16 v17, 0x46

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_8

    const/16 v17, 0x63

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_8

    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x76c

    move/from16 v16, v0

    :cond_8
    if-ltz v16, :cond_9

    const/16 v17, 0x45

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_9

    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v16, v0

    :cond_9
    const/16 v17, 0x1

    move/from16 v0, v17

    if-lt v5, v0, :cond_a

    const/16 v17, 0x1f

    move/from16 v0, v17

    if-gt v5, v0, :cond_a

    const/16 v17, 0x641

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_a

    const/16 v17, 0x17

    move/from16 v0, v17

    if-gt v10, v0, :cond_a

    const/16 v17, 0x3b

    move/from16 v0, v17

    if-gt v13, v0, :cond_a

    const/16 v17, 0x3b

    move/from16 v0, v17

    if-le v15, v0, :cond_b

    :cond_a
    new-instance v17, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Invalid \'expires\' attribute: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_b
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    sget-object v17, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;->UTC:Ljava/util/TimeZone;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v17, 0xd

    move/from16 v0, v17

    invoke-virtual {v2, v0, v15}, Ljava/util/Calendar;->set(II)V

    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-virtual {v2, v0, v13}, Ljava/util/Calendar;->set(II)V

    const/16 v17, 0xb

    move/from16 v0, v17

    invoke-virtual {v2, v0, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v2, v0, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v2, v0, v14}, Ljava/util/Calendar;->set(II)V

    const/16 v17, 0x1

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/cookie/SetCookie;->setExpiryDate(Ljava/util/Date;)V

    return-void
.end method
