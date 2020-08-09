.class public Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;
.super Ljava/lang/Object;
.source "BasicHeaderValueParser.java"

# interfaces
.implements Lcz/msebera/android/httpclient/message/HeaderValueParser;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# static fields
.field public static final DEFAULT:Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ELEM_DELIMITER:C = ','

.field public static final INSTANCE:Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;

.field private static final PARAM_DELIMITER:C = ';'

.field private static final TOKEN_DELIMS:Ljava/util/BitSet;

.field private static final VALUE_DELIMS:Ljava/util/BitSet;


# instance fields
.field private final tokenParser:Lcz/msebera/android/httpclient/message/TokenParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->DEFAULT:Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;

    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcz/msebera/android/httpclient/message/TokenParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->TOKEN_DELIMS:Ljava/util/BitSet;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcz/msebera/android/httpclient/message/TokenParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->VALUE_DELIMS:Ljava/util/BitSet;

    return-void

    nop

    :array_0
    .array-data 4
        0x3d
        0x3b
        0x2c
    .end array-data

    :array_1
    .array-data 4
        0x3b
        0x2c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcz/msebera/android/httpclient/message/TokenParser;->INSTANCE:Lcz/msebera/android/httpclient/message/TokenParser;

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->tokenParser:Lcz/msebera/android/httpclient/message/TokenParser;

    return-void
.end method

.method public static parseElements(Ljava/lang/String;Lcz/msebera/android/httpclient/message/HeaderValueParser;)[Lcz/msebera/android/httpclient/HeaderElement;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    const-string v2, "Value"

    invoke-static {p0, v2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    invoke-virtual {v0, p0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    new-instance v1, Lcz/msebera/android/httpclient/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    if-eqz p1, :cond_0

    :goto_0
    invoke-interface {p1, v0, v1}, Lcz/msebera/android/httpclient/message/HeaderValueParser;->parseElements(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v2

    return-object v2

    :cond_0
    sget-object p1, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;

    goto :goto_0
.end method

.method public static parseHeaderElement(Ljava/lang/String;Lcz/msebera/android/httpclient/message/HeaderValueParser;)Lcz/msebera/android/httpclient/HeaderElement;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    const-string v2, "Value"

    invoke-static {p0, v2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    invoke-virtual {v0, p0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    new-instance v1, Lcz/msebera/android/httpclient/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    if-eqz p1, :cond_0

    :goto_0
    invoke-interface {p1, v0, v1}, Lcz/msebera/android/httpclient/message/HeaderValueParser;->parseHeaderElement(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v2

    return-object v2

    :cond_0
    sget-object p1, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;

    goto :goto_0
.end method

.method public static parseNameValuePair(Ljava/lang/String;Lcz/msebera/android/httpclient/message/HeaderValueParser;)Lcz/msebera/android/httpclient/NameValuePair;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    const-string v2, "Value"

    invoke-static {p0, v2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    invoke-virtual {v0, p0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    new-instance v1, Lcz/msebera/android/httpclient/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    if-eqz p1, :cond_0

    :goto_0
    invoke-interface {p1, v0, v1}, Lcz/msebera/android/httpclient/message/HeaderValueParser;->parseNameValuePair(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v2

    return-object v2

    :cond_0
    sget-object p1, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;

    goto :goto_0
.end method

.method public static parseParameters(Ljava/lang/String;Lcz/msebera/android/httpclient/message/HeaderValueParser;)[Lcz/msebera/android/httpclient/NameValuePair;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    const-string v2, "Value"

    invoke-static {p0, v2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    invoke-virtual {v0, p0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    new-instance v1, Lcz/msebera/android/httpclient/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    if-eqz p1, :cond_0

    :goto_0
    invoke-interface {p1, v0, v1}, Lcz/msebera/android/httpclient/message/HeaderValueParser;->parseParameters(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)[Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v2

    return-object v2

    :cond_0
    sget-object p1, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;

    goto :goto_0
.end method


# virtual methods
.method protected createHeaderElement(Ljava/lang/String;Ljava/lang/String;[Lcz/msebera/android/httpclient/NameValuePair;)Lcz/msebera/android/httpclient/HeaderElement;
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;

    invoke-direct {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/message/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcz/msebera/android/httpclient/NameValuePair;)V

    return-object v0
.end method

.method protected createNameValuePair(Ljava/lang/String;Ljava/lang/String;)Lcz/msebera/android/httpclient/NameValuePair;
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    invoke-direct {v0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public parseElements(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)[Lcz/msebera/android/httpclient/HeaderElement;
    .locals 3

    const-string v2, "Char array buffer"

    invoke-static {p1, v2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "Parser cursor"

    invoke-static {p2, v2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->parseHeaderElement(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcz/msebera/android/httpclient/HeaderElement;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcz/msebera/android/httpclient/HeaderElement;

    return-object v2
.end method

.method public parseHeaderElement(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/HeaderElement;
    .locals 5

    const-string v3, "Char array buffer"

    invoke-static {p1, v3}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "Parser cursor"

    invoke-static {p2, v3}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->parseNameValuePair(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    const/16 v3, 0x2c

    if-eq v0, v3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->parseParameters(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)[Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v2

    :cond_0
    invoke-interface {v1}, Lcz/msebera/android/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcz/msebera/android/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v2}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->createHeaderElement(Ljava/lang/String;Ljava/lang/String;[Lcz/msebera/android/httpclient/NameValuePair;)Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v3

    return-object v3
.end method

.method public parseNameValuePair(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/NameValuePair;
    .locals 6

    const/4 v5, 0x0

    const-string v3, "Char array buffer"

    invoke-static {p1, v3}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "Parser cursor"

    invoke-static {p2, v3}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v3, p0, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->tokenParser:Lcz/msebera/android/httpclient/message/TokenParser;

    sget-object v4, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->TOKEN_DELIMS:Ljava/util/BitSet;

    invoke-virtual {v3, p1, p2, v4}, Lcz/msebera/android/httpclient/message/TokenParser;->parseToken(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    invoke-direct {v3, v1, v5}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v3

    invoke-virtual {p1, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v3}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    const/16 v3, 0x3d

    if-eq v0, v3, :cond_1

    invoke-virtual {p0, v1, v5}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->createNameValuePair(Ljava/lang/String;Ljava/lang/String;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->tokenParser:Lcz/msebera/android/httpclient/message/TokenParser;

    sget-object v4, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->VALUE_DELIMS:Ljava/util/BitSet;

    invoke-virtual {v3, p1, p2, v4}, Lcz/msebera/android/httpclient/message/TokenParser;->parseValue(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v3}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    :cond_2
    invoke-virtual {p0, v1, v2}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->createNameValuePair(Ljava/lang/String;Ljava/lang/String;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v3

    goto :goto_0
.end method

.method public parseNameValuePair(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;[C)Lcz/msebera/android/httpclient/NameValuePair;
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v10, 0x0

    const/16 v9, 0x3d

    const-string v8, "Char array buffer"

    invoke-static {p1, v8}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v8, "Parser cursor"

    invoke-static {p2, v8}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    if-eqz p3, :cond_0

    move-object v0, p3

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-char v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v9}, Ljava/util/BitSet;->set(I)V

    iget-object v8, p0, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->tokenParser:Lcz/msebera/android/httpclient/message/TokenParser;

    invoke-virtual {v8, p1, p2, v2}, Lcz/msebera/android/httpclient/message/TokenParser;->parseToken(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v8, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    invoke-direct {v8, v6, v10}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v8

    :cond_1
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v8

    invoke-virtual {p1, v8}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v1

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p2, v8}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    if-eq v1, v9, :cond_2

    invoke-virtual {p0, v6, v10}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->createNameValuePair(Ljava/lang/String;Ljava/lang/String;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v8

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v9}, Ljava/util/BitSet;->clear(I)V

    iget-object v8, p0, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->tokenParser:Lcz/msebera/android/httpclient/message/TokenParser;

    invoke-virtual {v8, p1, p2, v2}, Lcz/msebera/android/httpclient/message/TokenParser;->parseValue(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p2, v8}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    :cond_3
    invoke-virtual {p0, v6, v7}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->createNameValuePair(Ljava/lang/String;Ljava/lang/String;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v8

    goto :goto_1
.end method

.method public parseParameters(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)[Lcz/msebera/android/httpclient/NameValuePair;
    .locals 4

    const-string v3, "Char array buffer"

    invoke-static {p1, v3}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "Parser cursor"

    invoke-static {p2, v3}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v3, p0, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->tokenParser:Lcz/msebera/android/httpclient/message/TokenParser;

    invoke-virtual {v3, p1, p2}, Lcz/msebera/android/httpclient/message/TokenParser;->skipWhiteSpace(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->parseNameValuePair(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    const/16 v3, 0x2c

    if-ne v0, v3, :cond_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcz/msebera/android/httpclient/NameValuePair;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcz/msebera/android/httpclient/NameValuePair;

    return-object v3
.end method
