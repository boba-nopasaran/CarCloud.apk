.class Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;
.super Ljava/lang/Object;
.source "WarningValue.java"


# static fields
.field private static final ASCTIME_DATE:Ljava/lang/String; = "(Mon|Tue|Wed|Thu|Fri|Sat|Sun) ((Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) ( |\\d)\\d) (\\d{2}:\\d{2}:\\d{2}) \\d{4}"

.field private static final DATE1:Ljava/lang/String; = "\\d{2} (Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) \\d{4}"

.field private static final DATE2:Ljava/lang/String; = "\\d{2}-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)-\\d{2}"

.field private static final DATE3:Ljava/lang/String; = "(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) ( |\\d)\\d"

.field private static final DOMAINLABEL:Ljava/lang/String; = "\\p{Alnum}([\\p{Alnum}-]*\\p{Alnum})?"

.field private static final HOST:Ljava/lang/String; = "((\\p{Alnum}([\\p{Alnum}-]*\\p{Alnum})?\\.)*\\p{Alpha}([\\p{Alnum}-]*\\p{Alnum})?\\.?)|(\\d+\\.\\d+\\.\\d+\\.\\d+)"

.field private static final HOSTNAME:Ljava/lang/String; = "(\\p{Alnum}([\\p{Alnum}-]*\\p{Alnum})?\\.)*\\p{Alpha}([\\p{Alnum}-]*\\p{Alnum})?\\.?"

.field private static final HOSTPORT:Ljava/lang/String; = "(((\\p{Alnum}([\\p{Alnum}-]*\\p{Alnum})?\\.)*\\p{Alpha}([\\p{Alnum}-]*\\p{Alnum})?\\.?)|(\\d+\\.\\d+\\.\\d+\\.\\d+))(\\:\\d*)?"

.field private static final HOSTPORT_PATTERN:Ljava/util/regex/Pattern;

.field private static final HTTP_DATE:Ljava/lang/String; = "((Mon|Tue|Wed|Thu|Fri|Sat|Sun), (\\d{2} (Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) \\d{4}) (\\d{2}:\\d{2}:\\d{2}) GMT)|((Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday), (\\d{2}-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)-\\d{2}) (\\d{2}:\\d{2}:\\d{2}) GMT)|((Mon|Tue|Wed|Thu|Fri|Sat|Sun) ((Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) ( |\\d)\\d) (\\d{2}:\\d{2}:\\d{2}) \\d{4})"

.field private static final IPV4ADDRESS:Ljava/lang/String; = "\\d+\\.\\d+\\.\\d+\\.\\d+"

.field private static final MONTH:Ljava/lang/String; = "Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec"

.field private static final PORT:Ljava/lang/String; = "\\d*"

.field private static final RFC1123_DATE:Ljava/lang/String; = "(Mon|Tue|Wed|Thu|Fri|Sat|Sun), (\\d{2} (Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) \\d{4}) (\\d{2}:\\d{2}:\\d{2}) GMT"

.field private static final RFC850_DATE:Ljava/lang/String; = "(Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday), (\\d{2}-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)-\\d{2}) (\\d{2}:\\d{2}:\\d{2}) GMT"

.field private static final TIME:Ljava/lang/String; = "\\d{2}:\\d{2}:\\d{2}"

.field private static final TOPLABEL:Ljava/lang/String; = "\\p{Alpha}([\\p{Alnum}-]*\\p{Alnum})?"

.field private static final WARN_DATE:Ljava/lang/String; = "\"(((Mon|Tue|Wed|Thu|Fri|Sat|Sun), (\\d{2} (Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) \\d{4}) (\\d{2}:\\d{2}:\\d{2}) GMT)|((Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday), (\\d{2}-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)-\\d{2}) (\\d{2}:\\d{2}:\\d{2}) GMT)|((Mon|Tue|Wed|Thu|Fri|Sat|Sun) ((Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) ( |\\d)\\d) (\\d{2}:\\d{2}:\\d{2}) \\d{4}))\""

.field private static final WARN_DATE_PATTERN:Ljava/util/regex/Pattern;

.field private static final WEEKDAY:Ljava/lang/String; = "Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday"

.field private static final WKDAY:Ljava/lang/String; = "Mon|Tue|Wed|Thu|Fri|Sat|Sun"


# instance fields
.field private init_offs:I

.field private offs:I

.field private final src:Ljava/lang/String;

.field private warnAgent:Ljava/lang/String;

.field private warnCode:I

.field private warnDate:Ljava/util/Date;

.field private warnText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(((\\p{Alnum}([\\p{Alnum}-]*\\p{Alnum})?\\.)*\\p{Alpha}([\\p{Alnum}-]*\\p{Alnum})?\\.?)|(\\d+\\.\\d+\\.\\d+\\.\\d+))(\\:\\d*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->HOSTPORT_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "\"(((Mon|Tue|Wed|Thu|Fri|Sat|Sun), (\\d{2} (Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) \\d{4}) (\\d{2}:\\d{2}:\\d{2}) GMT)|((Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday), (\\d{2}-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)-\\d{2}) (\\d{2}:\\d{2}:\\d{2}) GMT)|((Mon|Tue|Wed|Thu|Fri|Sat|Sun) ((Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) ( |\\d)\\d) (\\d{2}:\\d{2}:\\d{2}) \\d{4}))\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->WARN_DATE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->init_offs:I

    iput p2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->consumeWarnValue()V

    return-void
.end method

.method public static getWarningValues(Lcz/msebera/android/httpclient/Header;)[Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;
    .locals 8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_0

    :try_start_0
    new-instance v5, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;

    invoke-direct {v5, v4, v2}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, v5, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v7, 0x2c

    invoke-virtual {v4, v7, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v7, -0x1

    if-ne v1, v7, :cond_1

    :cond_0
    const/4 v7, 0x0

    new-array v6, v7, [Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;

    return-object v7

    :cond_1
    add-int/lit8 v2, v1, 0x1

    goto :goto_0
.end method

.method private isChar(C)Z
    .locals 2

    move v0, p1

    if-ltz v0, :cond_0

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isControl(C)Z
    .locals 2

    move v0, p1

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    if-ltz v0, :cond_1

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSeparator(C)Z
    .locals 1

    const/16 v0, 0x28

    if-eq p1, v0, :cond_0

    const/16 v0, 0x29

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x40

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x22

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTokenChar(C)Z
    .locals 1

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->isChar(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->isControl(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->isSeparator(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseError()V
    .locals 4

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->init_offs:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad warn code \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected consumeCharacter(C)V
    .locals 2

    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq p1, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->parseError()V

    :cond_1
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    return-void
.end method

.method protected consumeHostPort()V
    .locals 4

    sget-object v1, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->HOSTPORT_PATTERN:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->parseError()V

    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->parseError()V

    :cond_1
    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    return-void
.end method

.method protected consumeLinearWhitespace()V
    .locals 2

    :goto_0
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    return-void

    :sswitch_0
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    :cond_1
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    :sswitch_1
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xd -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method protected consumeQuotedString()V
    .locals 5

    const/16 v4, 0x22

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_0

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->parseError()V

    :cond_0
    iget v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    if-nez v1, :cond_4

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    const/16 v2, 0x5c

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->isChar(C)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    goto :goto_0

    :cond_1
    if-ne v0, v4, :cond_2

    const/4 v1, 0x1

    iget v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    goto :goto_0

    :cond_2
    if-eq v0, v4, :cond_3

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->isControl(C)Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->parseError()V

    goto :goto_0

    :cond_4
    if-nez v1, :cond_5

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->parseError()V

    :cond_5
    return-void
.end method

.method protected consumeToken()V
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->isTokenChar(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->parseError()V

    :cond_0
    :goto_0
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->isTokenChar(C)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    goto :goto_0
.end method

.method protected consumeWarnAgent()V
    .locals 5

    const/16 v4, 0x20

    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    :try_start_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->consumeHostPort()V

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->warnAgent:Ljava/lang/String;

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->consumeCharacter(C)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->consumeToken()V

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->warnAgent:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->consumeCharacter(C)V

    goto :goto_0
.end method

.method protected consumeWarnCode()V
    .locals 3

    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->parseError()V

    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->warnCode:I

    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    return-void
.end method

.method protected consumeWarnDate()V
    .locals 5

    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    sget-object v2, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->WARN_DATE_PATTERN:Ljava/util/regex/Pattern;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->parseError()V

    :cond_0
    iget v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->warnDate:Ljava/util/Date;

    return-void
.end method

.method protected consumeWarnText()V
    .locals 3

    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->consumeQuotedString()V

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->warnText:Ljava/lang/String;

    return-void
.end method

.method protected consumeWarnValue()V
    .locals 3

    const/16 v2, 0x20

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->consumeLinearWhitespace()V

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->consumeWarnCode()V

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->consumeWarnAgent()V

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->consumeWarnText()V

    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->consumeCharacter(C)V

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->consumeWarnDate()V

    :cond_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->consumeLinearWhitespace()V

    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->consumeCharacter(C)V

    :cond_1
    return-void
.end method

.method public getWarnAgent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->warnAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getWarnCode()I
    .locals 1

    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->warnCode:I

    return v0
.end method

.method public getWarnDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->warnDate:Ljava/util/Date;

    return-object v0
.end method

.method public getWarnText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->warnText:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->warnDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    const-string v0, "%d %s %s \"%s\""

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->warnCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->warnAgent:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->warnText:Ljava/lang/String;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->warnDate:Ljava/util/Date;

    invoke-static {v2}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%d %s %s"

    new-array v1, v6, [Ljava/lang/Object;

    iget v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->warnCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->warnAgent:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->warnText:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
