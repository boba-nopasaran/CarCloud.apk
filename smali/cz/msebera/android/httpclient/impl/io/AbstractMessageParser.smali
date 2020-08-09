.class public abstract Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;
.super Ljava/lang/Object;
.source "AbstractMessageParser.java"

# interfaces
.implements Lcz/msebera/android/httpclient/io/HttpMessageParser;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcz/msebera/android/httpclient/HttpMessage;",
        ">",
        "Ljava/lang/Object;",
        "Lcz/msebera/android/httpclient/io/HttpMessageParser",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final HEADERS:I = 0x1

.field private static final HEAD_LINE:I


# instance fields
.field private final headerLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/util/CharArrayBuffer;",
            ">;"
        }
    .end annotation
.end field

.field protected final lineParser:Lcz/msebera/android/httpclient/message/LineParser;

.field private message:Lcz/msebera/android/httpclient/HttpMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final messageConstraints:Lcz/msebera/android/httpclient/config/MessageConstraints;

.field private final sessionBuffer:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

.field private state:I


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/config/MessageConstraints;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Session input buffer"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->sessionBuffer:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->lineParser:Lcz/msebera/android/httpclient/message/LineParser;

    if-eqz p3, :cond_1

    :goto_1
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->messageConstraints:Lcz/msebera/android/httpclient/config/MessageConstraints;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->headerLines:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->state:I

    return-void

    :cond_0
    sget-object p2, Lcz/msebera/android/httpclient/message/BasicLineParser;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicLineParser;

    goto :goto_0

    :cond_1
    sget-object p3, Lcz/msebera/android/httpclient/config/MessageConstraints;->DEFAULT:Lcz/msebera/android/httpclient/config/MessageConstraints;

    goto :goto_1
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Session input buffer"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP parameters"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->sessionBuffer:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    invoke-static {p3}, Lcz/msebera/android/httpclient/params/HttpParamConfig;->getMessageConstraints(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/config/MessageConstraints;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->messageConstraints:Lcz/msebera/android/httpclient/config/MessageConstraints;

    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->lineParser:Lcz/msebera/android/httpclient/message/LineParser;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->headerLines:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->state:I

    return-void

    :cond_0
    sget-object p2, Lcz/msebera/android/httpclient/message/BasicLineParser;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicLineParser;

    goto :goto_0
.end method

.method public static parseHeaders(Lcz/msebera/android/httpclient/io/SessionInputBuffer;IILcz/msebera/android/httpclient/message/LineParser;)[Lcz/msebera/android/httpclient/Header;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_0

    :goto_0
    invoke-static {p0, p1, p2, p3, v0}, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->parseHeaders(Lcz/msebera/android/httpclient/io/SessionInputBuffer;IILcz/msebera/android/httpclient/message/LineParser;Ljava/util/List;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    return-object v1

    :cond_0
    sget-object p3, Lcz/msebera/android/httpclient/message/BasicLineParser;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicLineParser;

    goto :goto_0
.end method

.method public static parseHeaders(Lcz/msebera/android/httpclient/io/SessionInputBuffer;IILcz/msebera/android/httpclient/message/LineParser;Ljava/util/List;)[Lcz/msebera/android/httpclient/Header;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/io/SessionInputBuffer;",
            "II",
            "Lcz/msebera/android/httpclient/message/LineParser;",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/util/CharArrayBuffer;",
            ">;)[",
            "Lcz/msebera/android/httpclient/Header;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v8, "Session input buffer"

    invoke-static {p0, v8}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v8, "Line parser"

    invoke-static {p3, v8}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v8, "Header line list"

    invoke-static {p4, v8}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v7, 0x0

    :cond_0
    if-nez v2, :cond_2

    new-instance v2, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 v8, 0x40

    invoke-direct {v2, v8}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    :goto_0
    invoke-interface {p0, v2}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->readLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_1

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ge v8, v9, :cond_3

    :cond_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v8

    new-array v4, v8, [Lcz/msebera/android/httpclient/Header;

    const/4 v5, 0x0

    :goto_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_9

    invoke-interface {p4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    :try_start_0
    invoke-interface {p3, v0}, Lcz/msebera/android/httpclient/message/LineParser;->parseHeader(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)Lcz/msebera/android/httpclient/Header;

    move-result-object v8

    aput-object v8, v4, v5
    :try_end_0
    .catch Lcz/msebera/android/httpclient/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->clear()V

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    if-eq v8, v9, :cond_4

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_8

    :cond_4
    if-eqz v7, :cond_8

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v8

    if-ge v5, v8, :cond_5

    invoke-virtual {v2, v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v1

    const/16 v8, 0x20

    if-eq v1, v8, :cond_6

    const/16 v8, 0x9

    if-eq v1, v8, :cond_6

    :cond_5
    if-lez p2, :cond_7

    invoke-virtual {v7}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v9

    add-int/2addr v8, v9

    sub-int/2addr v8, v5

    if-le v8, p2, :cond_7

    new-instance v8, Lcz/msebera/android/httpclient/MessageConstraintException;

    const-string v9, "Maximum line length limit exceeded"

    invoke-direct {v8, v9}, Lcz/msebera/android/httpclient/MessageConstraintException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-virtual {v7, v2, v5, v8}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Lcz/msebera/android/httpclient/util/CharArrayBuffer;II)V

    :goto_3
    if-lez p1, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v8

    if-lt v8, p1, :cond_0

    new-instance v8, Lcz/msebera/android/httpclient/MessageConstraintException;

    const-string v9, "Maximum header count exceeded"

    invoke-direct {v8, v9}, Lcz/msebera/android/httpclient/MessageConstraintException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_8
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v7, v2

    const/4 v2, 0x0

    goto :goto_3

    :catch_0
    move-exception v3

    new-instance v8, Lcz/msebera/android/httpclient/ProtocolException;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_9
    return-object v4
.end method


# virtual methods
.method public parse()Lcz/msebera/android/httpclient/HttpMessage;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    iget v3, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->state:I

    packed-switch v3, :pswitch_data_0

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Inconsistent parser state"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_0
    :try_start_0
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->sessionBuffer:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    invoke-virtual {p0, v4}, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->parseHead(Lcz/msebera/android/httpclient/io/SessionInputBuffer;)Lcz/msebera/android/httpclient/HttpMessage;

    move-result-object v4

    iput-object v4, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->message:Lcz/msebera/android/httpclient/HttpMessage;
    :try_end_0
    .catch Lcz/msebera/android/httpclient/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    iput v4, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->state:I

    :pswitch_1
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->sessionBuffer:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->messageConstraints:Lcz/msebera/android/httpclient/config/MessageConstraints;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/config/MessageConstraints;->getMaxHeaderCount()I

    move-result v5

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->messageConstraints:Lcz/msebera/android/httpclient/config/MessageConstraints;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/config/MessageConstraints;->getMaxLineLength()I

    move-result v6

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->lineParser:Lcz/msebera/android/httpclient/message/LineParser;

    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->headerLines:Ljava/util/List;

    invoke-static {v4, v5, v6, v7, v8}, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->parseHeaders(Lcz/msebera/android/httpclient/io/SessionInputBuffer;IILcz/msebera/android/httpclient/message/LineParser;Ljava/util/List;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->message:Lcz/msebera/android/httpclient/HttpMessage;

    invoke-interface {v4, v0}, Lcz/msebera/android/httpclient/HttpMessage;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->message:Lcz/msebera/android/httpclient/HttpMessage;

    const/4 v4, 0x0

    iput-object v4, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->message:Lcz/msebera/android/httpclient/HttpMessage;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->headerLines:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    const/4 v4, 0x0

    iput v4, p0, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->state:I

    return-object v2

    :catch_0
    move-exception v1

    new-instance v4, Lcz/msebera/android/httpclient/ProtocolException;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract parseHead(Lcz/msebera/android/httpclient/io/SessionInputBuffer;)Lcz/msebera/android/httpclient/HttpMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/io/SessionInputBuffer;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;,
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation
.end method
