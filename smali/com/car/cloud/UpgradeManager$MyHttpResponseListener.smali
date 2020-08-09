.class Lcom/car/cloud/UpgradeManager$MyHttpResponseListener;
.super Ljava/lang/Object;
.source "UpgradeManager.java"

# interfaces
.implements Lcom/car/cloud/HttpRequestManager$OnHttpResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/cloud/UpgradeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHttpResponseListener"
.end annotation


# instance fields
.field private mForceShowUI:Z

.field final synthetic this$0:Lcom/car/cloud/UpgradeManager;


# direct methods
.method constructor <init>(Lcom/car/cloud/UpgradeManager;Z)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/UpgradeManager$MyHttpResponseListener;->this$0:Lcom/car/cloud/UpgradeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/car/cloud/UpgradeManager$MyHttpResponseListener;->mForceShowUI:Z

    return-void
.end method


# virtual methods
.method public onHttpResponse(Ljava/lang/String;)V
    .locals 19

    const-string v16, "CarCloud_UpgradeManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "result = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string v16, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/car/cloud/UpgradeManager$MyHttpResponseListener;->mForceShowUI:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/UpgradeManager$MyHttpResponseListener;->this$0:Lcom/car/cloud/UpgradeManager;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/car/cloud/UpgradeManager;->access$300(Lcom/car/cloud/UpgradeManager;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v16, "allowlist"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    const-string v16, "allowlist"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v7, v0, :cond_3

    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Lcom/car/cloud/UpgradeManager;->access$400()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-ne v7, v0, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/car/cloud/UpgradeManager$MyHttpResponseListener;->mForceShowUI:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/UpgradeManager$MyHttpResponseListener;->this$0:Lcom/car/cloud/UpgradeManager;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/car/cloud/UpgradeManager;->access$300(Lcom/car/cloud/UpgradeManager;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lorg/json/JSONException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v16, "CarCloud_UpgradeManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "JSONException:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/car/cloud/UpgradeManager$MyHttpResponseListener;->mForceShowUI:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/UpgradeManager$MyHttpResponseListener;->this$0:Lcom/car/cloud/UpgradeManager;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/car/cloud/UpgradeManager;->access$300(Lcom/car/cloud/UpgradeManager;)V

    goto :goto_0

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    :try_start_1
    const-string v16, "version"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "history"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v16, "url"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v16, "CarCloud_UpgradeManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "version = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v16, "CarCloud_UpgradeManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "history = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v16, "CarCloud_UpgradeManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "url = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/UpgradeManager$MyHttpResponseListener;->this$0:Lcom/car/cloud/UpgradeManager;

    move-object/from16 v16, v0

    invoke-static {}, Lcom/car/cloud/UpgradeManager;->access$500()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v15}, Lcom/car/cloud/UpgradeManager;->access$600(Lcom/car/cloud/UpgradeManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/UpgradeManager$MyHttpResponseListener;->this$0:Lcom/car/cloud/UpgradeManager;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/car/cloud/UpgradeManager;->access$100(Lcom/car/cloud/UpgradeManager;)Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v16, "ignore_version"

    const-string v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/car/cloud/UpgradeManager$MyHttpResponseListener;->mForceShowUI:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/UpgradeManager$MyHttpResponseListener;->this$0:Lcom/car/cloud/UpgradeManager;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/car/cloud/UpgradeManager;->access$300(Lcom/car/cloud/UpgradeManager;)V

    goto/16 :goto_0

    :cond_6
    const-string v16, "version"

    const-string v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v16, "url"

    const-string v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v16, "history_tip"

    const-string v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_8

    :cond_7
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/car/cloud/UpgradeManager$MyHttpResponseListener;->mForceShowUI:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/UpgradeManager$MyHttpResponseListener;->this$0:Lcom/car/cloud/UpgradeManager;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/car/cloud/UpgradeManager;->access$300(Lcom/car/cloud/UpgradeManager;)V

    goto/16 :goto_0

    :cond_9
    const-string v16, "CarCloud_UpgradeManager"

    const-string v17, "find new version"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/UpgradeManager$MyHttpResponseListener;->this$0:Lcom/car/cloud/UpgradeManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lcom/car/cloud/UpgradeManager;->access$700(Lcom/car/cloud/UpgradeManager;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v16, "version"

    move-object/from16 v0, v16

    invoke-interface {v4, v0, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v16, "url"

    move-object/from16 v0, v16

    invoke-interface {v4, v0, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v16, "history_tip"

    move-object/from16 v0, v16

    invoke-interface {v4, v0, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/cloud/UpgradeManager$MyHttpResponseListener;->this$0:Lcom/car/cloud/UpgradeManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v15, v14, v6}, Lcom/car/cloud/UpgradeManager;->access$800(Lcom/car/cloud/UpgradeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
