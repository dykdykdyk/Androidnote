.class public Lcom/umeng/socialize/handler/QQPreferences;
.super Ljava/lang/Object;
.source "QQPreferences.java"


# static fields
.field private static final ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field private static final EXPIRES_IN:Ljava/lang/String; = "expires_in"

.field private static final OPENID:Ljava/lang/String; = "uid"

.field private static mtl:Ljava/lang/String;


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mUID:Ljava/lang/String;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/socialize/handler/QQPreferences;->mtl:Ljava/lang/String;

    return-void
.end method

