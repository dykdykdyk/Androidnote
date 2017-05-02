.class public Lcom/wakeup/smartband/db/DbAdapter;
.super Ljava/lang/Object;
.source "DbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/db/DbAdapter$DatabaseHelper;
    }
.end annotation


# static fields
.field static final DATABASE_NAME:Ljava/lang/String;

.field private static final DATABASE_PATH:Ljava/lang/String;

.field private static final DATABASE_VERSION:I = 0x1

.field public static final KEY_DATE:Ljava/lang/String; = "date"

.field public static final KEY_DISTANCE:Ljava/lang/String; = "distance"

.field public static final KEY_DURATION:Ljava/lang/String; = "duration"

.field public static final KEY_END:Ljava/lang/String; = "endpoint"

.field public static final KEY_LINE:Ljava/lang/String; = "pathline"

.field public static final KEY_ROWID:Ljava/lang/String; = "id"

.field public static final KEY_SPEED:Ljava/lang/String; = "averagespeed"

.field public static final KEY_STRAT:Ljava/lang/String; = "stratpoint"

.field private static final RECORD_CREATE:Ljava/lang/String; = "create table if not exists record(id integer primary key,stratpoint STRING,endpoint STRING,pathline STRING,distance STRING,duration STRING,averagespeed STRING,date STRING);"

.field private static final RECORD_TABLE:Ljava/lang/String; = "record"


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lcom/wakeup/smartband/db/DbAdapter$DatabaseHelper;

.field private mCtx:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/recordPath"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wakeup/smartband/db/DbAdapter;->DATABASE_PATH:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wakeup/smartband/db/DbAdapter;->DATABASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/record.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wakeup/smartband/db/DbAdapter;->DATABASE_NAME:Ljava/lang/String;

    return-void
.end method

