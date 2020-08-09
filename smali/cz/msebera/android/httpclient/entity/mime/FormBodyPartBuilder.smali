.class public Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;
.super Ljava/lang/Object;
.source "FormBodyPartBuilder.java"


# instance fields
.field private body:Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

.field private final header:Lcz/msebera/android/httpclient/entity/mime/Header;

.field private name:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcz/msebera/android/httpclient/entity/mime/Header;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/entity/mime/Header;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->header:Lcz/msebera/android/httpclient/entity/mime/Header;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)V
    .locals 0

    invoke-direct {p0}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->name:Ljava/lang/String;

    iput-object p2, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->body:Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    return-void
.end method

.method public static create()Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;-><init>()V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;

    invoke-direct {v0, p0, p1}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)V

    return-object v0
.end method


# virtual methods
.method public addField(Ljava/lang/String;Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;
    .locals 2

    const-string v0, "Field name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->header:Lcz/msebera/android/httpclient/entity/mime/Header;

    new-instance v1, Lcz/msebera/android/httpclient/entity/mime/MinimalField;

    invoke-direct {v1, p1, p2}, Lcz/msebera/android/httpclient/entity/mime/MinimalField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/entity/mime/Header;->addField(Lcz/msebera/android/httpclient/entity/mime/MinimalField;)V

    return-object p0
.end method

.method public build()Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;
    .locals 9

    iget-object v6, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->name:Ljava/lang/String;

    const-string v7, "Name"

    invoke-static {v6, v7}, Lcz/msebera/android/httpclient/util/Asserts;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)V

    iget-object v6, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->body:Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    const-string v7, "Content body"

    invoke-static {v6, v7}, Lcz/msebera/android/httpclient/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcz/msebera/android/httpclient/entity/mime/Header;

    invoke-direct {v4}, Lcz/msebera/android/httpclient/entity/mime/Header;-><init>()V

    iget-object v6, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->header:Lcz/msebera/android/httpclient/entity/mime/Header;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/entity/mime/Header;->getFields()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/entity/mime/MinimalField;

    invoke-virtual {v4, v2}, Lcz/msebera/android/httpclient/entity/mime/Header;->addField(Lcz/msebera/android/httpclient/entity/mime/MinimalField;)V

    goto :goto_0

    :cond_0
    const-string v6, "Content-Disposition"

    invoke-virtual {v4, v6}, Lcz/msebera/android/httpclient/entity/mime/Header;->getField(Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/MinimalField;

    move-result-object v6

    if-nez v6, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "form-data; name=\""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->body:Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    invoke-interface {v6}, Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v6, "; filename=\""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->body:Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    invoke-interface {v6}, Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    new-instance v6, Lcz/msebera/android/httpclient/entity/mime/MinimalField;

    const-string v7, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcz/msebera/android/httpclient/entity/mime/MinimalField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcz/msebera/android/httpclient/entity/mime/Header;->addField(Lcz/msebera/android/httpclient/entity/mime/MinimalField;)V

    :cond_2
    const-string v6, "Content-Type"

    invoke-virtual {v4, v6}, Lcz/msebera/android/httpclient/entity/mime/Header;->getField(Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/MinimalField;

    move-result-object v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->body:Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    instance-of v6, v6, Lcz/msebera/android/httpclient/entity/mime/content/AbstractContentBody;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->body:Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    check-cast v6, Lcz/msebera/android/httpclient/entity/mime/content/AbstractContentBody;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/entity/mime/content/AbstractContentBody;->getContentType()Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_6

    new-instance v6, Lcz/msebera/android/httpclient/entity/mime/MinimalField;

    const-string v7, "Content-Type"

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/entity/ContentType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcz/msebera/android/httpclient/entity/mime/MinimalField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcz/msebera/android/httpclient/entity/mime/Header;->addField(Lcz/msebera/android/httpclient/entity/mime/MinimalField;)V

    :cond_3
    :goto_2
    const-string v6, "Content-Transfer-Encoding"

    invoke-virtual {v4, v6}, Lcz/msebera/android/httpclient/entity/mime/Header;->getField(Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/MinimalField;

    move-result-object v6

    if-nez v6, :cond_4

    new-instance v6, Lcz/msebera/android/httpclient/entity/mime/MinimalField;

    const-string v7, "Content-Transfer-Encoding"

    iget-object v8, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->body:Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    invoke-interface {v8}, Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;->getTransferEncoding()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcz/msebera/android/httpclient/entity/mime/MinimalField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcz/msebera/android/httpclient/entity/mime/Header;->addField(Lcz/msebera/android/httpclient/entity/mime/MinimalField;)V

    :cond_4
    new-instance v6, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;

    iget-object v7, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->name:Ljava/lang/String;

    iget-object v8, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->body:Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    invoke-direct {v6, v7, v8, v4}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;Lcz/msebera/android/httpclient/entity/mime/Header;)V

    return-object v6

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->body:Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    invoke-interface {v6}, Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->body:Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    invoke-interface {v6}, Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;->getCharset()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    const-string v6, "; charset="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->body:Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    invoke-interface {v6}, Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;->getCharset()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    new-instance v6, Lcz/msebera/android/httpclient/entity/mime/MinimalField;

    const-string v7, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcz/msebera/android/httpclient/entity/mime/MinimalField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcz/msebera/android/httpclient/entity/mime/Header;->addField(Lcz/msebera/android/httpclient/entity/mime/MinimalField;)V

    goto :goto_2
.end method

.method public removeFields(Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;
    .locals 1

    const-string v0, "Field name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->header:Lcz/msebera/android/httpclient/entity/mime/Header;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/entity/mime/Header;->removeFields(Ljava/lang/String;)I

    return-object p0
.end method

.method public setBody(Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->body:Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    return-object p0
.end method

.method public setField(Ljava/lang/String;Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;
    .locals 2

    const-string v0, "Field name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->header:Lcz/msebera/android/httpclient/entity/mime/Header;

    new-instance v1, Lcz/msebera/android/httpclient/entity/mime/MinimalField;

    invoke-direct {v1, p1, p2}, Lcz/msebera/android/httpclient/entity/mime/MinimalField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/entity/mime/Header;->setField(Lcz/msebera/android/httpclient/entity/mime/MinimalField;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->name:Ljava/lang/String;

    return-object p0
.end method
