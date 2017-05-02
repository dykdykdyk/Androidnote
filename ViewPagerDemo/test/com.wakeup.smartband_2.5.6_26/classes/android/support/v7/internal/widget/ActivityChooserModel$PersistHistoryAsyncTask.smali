.class final Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;
.super Landroid/os/AsyncTask;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PersistHistoryAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserModel;)V
    .registers 2

    .prologue
    .line 1035
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserModel;Landroid/support/v7/internal/widget/ActivityChooserModel$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/support/v7/internal/widget/ActivityChooserModel;
    .param p2, "x1"    # Landroid/support/v7/internal/widget/ActivityChooserModel$1;

    .prologue
    .line 1035
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;-><init>(Landroid/support/v7/internal/widget/ActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1035
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .registers 20
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1040
    const/4 v13, 0x0

    aget-object v4, p1, v13

    check-cast v4, Ljava/util/List;

    .line 1041
    .local v4, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;>;"
    const/4 v13, 0x1

    aget-object v5, p1, v13

    check-cast v5, Ljava/lang/String;

    .line 1043
    .local v5, "hostoryFileName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1046
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_b
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;

    # getter for: Landroid/support/v7/internal/widget/ActivityChooserModel;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$200(Landroid/support/v7/internal/widget/ActivityChooserModel;)Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v5, v14}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_17} :catch_7a

    move-result-object v3

    .line 1052
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v12

    .line 1055
    .local v12, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const/4 v13, 0x0

    :try_start_1d
    invoke-interface {v12, v3, v13}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1056
    const-string/jumbo v13, "UTF-8"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1057
    const/4 v13, 0x0

    const-string/jumbo v14, "historical-records"

    invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1059
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    .line 1060
    .local v11, "recordCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_37
    if-ge v6, v11, :cond_98

    .line 1061
    const/4 v13, 0x0

    invoke-interface {v4, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;

    .line 1062
    .local v10, "record":Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;
    const/4 v13, 0x0

    const-string/jumbo v14, "historical-record"

    invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1063
    const/4 v13, 0x0

    const-string/jumbo v14, "activity"

    iget-object v15, v10, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1065
    const/4 v13, 0x0

    const-string/jumbo v14, "time"

    iget-wide v0, v10, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;->time:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1066
    const/4 v13, 0x0

    const-string/jumbo v14, "weight"

    iget v15, v10, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1067
    const/4 v13, 0x0

    const-string/jumbo v14, "historical-record"

    invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_77
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_77} :catch_b1
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_77} :catch_e5
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_77} :catch_119
    .catchall {:try_start_1d .. :try_end_77} :catchall_14f

    .line 1060
    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    .line 1047
    .end local v6    # "i":I
    .end local v10    # "record":Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;
    .end local v11    # "recordCount":I
    .end local v12    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_7a
    move-exception v2

    .line 1048
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    # getter for: Landroid/support/v7/internal/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$300()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error writing historical recrod file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1049
    const/4 v13, 0x0

    .line 1095
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    :goto_97
    return-object v13

    .line 1073
    .restart local v6    # "i":I
    .restart local v11    # "recordCount":I
    .restart local v12    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_98
    const/4 v13, 0x0

    :try_start_99
    const-string/jumbo v14, "historical-records"

    invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1074
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_a2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_99 .. :try_end_a2} :catch_b1
    .catch Ljava/lang/IllegalStateException; {:try_start_99 .. :try_end_a2} :catch_e5
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_a2} :catch_119
    .catchall {:try_start_99 .. :try_end_a2} :catchall_14f

    .line 1086
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;

    const/4 v14, 0x1

    # setter for: Landroid/support/v7/internal/widget/ActivityChooserModel;->mCanReadHistoricalData:Z
    invoke-static {v13, v14}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$502(Landroid/support/v7/internal/widget/ActivityChooserModel;Z)Z

    .line 1087
    if-eqz v3, :cond_af

    .line 1089
    :try_start_ac
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_15e

    .line 1095
    .end local v6    # "i":I
    .end local v11    # "recordCount":I
    :cond_af
    :goto_af
    const/4 v13, 0x0

    goto :goto_97

    .line 1079
    :catch_b1
    move-exception v7

    .line 1080
    .local v7, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_b2
    # getter for: Landroid/support/v7/internal/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$300()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error writing historical recrod file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;

    # getter for: Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v15}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$400(Landroid/support/v7/internal/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d5
    .catchall {:try_start_b2 .. :try_end_d5} :catchall_14f

    .line 1086
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;

    const/4 v14, 0x1

    # setter for: Landroid/support/v7/internal/widget/ActivityChooserModel;->mCanReadHistoricalData:Z
    invoke-static {v13, v14}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$502(Landroid/support/v7/internal/widget/ActivityChooserModel;Z)Z

    .line 1087
    if-eqz v3, :cond_af

    .line 1089
    :try_start_df
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_e2} :catch_e3

    goto :goto_af

    .line 1090
    :catch_e3
    move-exception v13

    goto :goto_af

    .line 1081
    .end local v7    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_e5
    move-exception v9

    .line 1082
    .local v9, "ise":Ljava/lang/IllegalStateException;
    :try_start_e6
    # getter for: Landroid/support/v7/internal/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$300()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error writing historical recrod file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;

    # getter for: Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v15}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$400(Landroid/support/v7/internal/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_109
    .catchall {:try_start_e6 .. :try_end_109} :catchall_14f

    .line 1086
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;

    const/4 v14, 0x1

    # setter for: Landroid/support/v7/internal/widget/ActivityChooserModel;->mCanReadHistoricalData:Z
    invoke-static {v13, v14}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$502(Landroid/support/v7/internal/widget/ActivityChooserModel;Z)Z

    .line 1087
    if-eqz v3, :cond_af

    .line 1089
    :try_start_113
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_116} :catch_117

    goto :goto_af

    .line 1090
    :catch_117
    move-exception v13

    goto :goto_af

    .line 1083
    .end local v9    # "ise":Ljava/lang/IllegalStateException;
    :catch_119
    move-exception v8

    .line 1084
    .local v8, "ioe":Ljava/io/IOException;
    :try_start_11a
    # getter for: Landroid/support/v7/internal/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$300()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error writing historical recrod file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;

    # getter for: Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v15}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$400(Landroid/support/v7/internal/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13d
    .catchall {:try_start_11a .. :try_end_13d} :catchall_14f

    .line 1086
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;

    const/4 v14, 0x1

    # setter for: Landroid/support/v7/internal/widget/ActivityChooserModel;->mCanReadHistoricalData:Z
    invoke-static {v13, v14}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$502(Landroid/support/v7/internal/widget/ActivityChooserModel;Z)Z

    .line 1087
    if-eqz v3, :cond_af

    .line 1089
    :try_start_147
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_14a
    .catch Ljava/io/IOException; {:try_start_147 .. :try_end_14a} :catch_14c

    goto/16 :goto_af

    .line 1090
    :catch_14c
    move-exception v13

    goto/16 :goto_af

    .line 1086
    .end local v8    # "ioe":Ljava/io/IOException;
    :catchall_14f
    move-exception v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;

    const/4 v15, 0x1

    # setter for: Landroid/support/v7/internal/widget/ActivityChooserModel;->mCanReadHistoricalData:Z
    invoke-static {v14, v15}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$502(Landroid/support/v7/internal/widget/ActivityChooserModel;Z)Z

    .line 1087
    if-eqz v3, :cond_15d

    .line 1089
    :try_start_15a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_15d
    .catch Ljava/io/IOException; {:try_start_15a .. :try_end_15d} :catch_161

    .line 1092
    :cond_15d
    :goto_15d
    throw v13

    .line 1090
    .restart local v6    # "i":I
    .restart local v11    # "recordCount":I
    :catch_15e
    move-exception v13

    goto/16 :goto_af

    .end local v6    # "i":I
    .end local v11    # "recordCount":I
    :catch_161
    move-exception v14

    goto :goto_15d
.end method
