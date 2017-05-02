.class public Lcom/renn/rennsdk/oauth/RenRenOAuth;
.super Ljava/lang/Object;
.source "RenRenOAuth.java"


# static fields
.field public static final ACTION_USE_ANOTHER_ACCOUNT:Ljava/lang/String; = "ACTION_CHOOSE_ACCOUNT_USE_ANOTHER"

.field public static final ACTION_USE_SSO:Ljava/lang/String; = "ACTION_CHOOSE_ACCOUNT_USE_SSO"

.field public static final CHOOSE_ACCOUNT_REQUEST_CODE:I = 0x7ffe

.field public static final INTENT_DATA_ACCOUNT_NAME:Ljava/lang/String; = "account"

.field private static mInstance:Lcom/renn/rennsdk/oauth/RenRenOAuth;


# instance fields
.field public apiKey:Ljava/lang/String;

.field private mLoginActivity:Landroid/app/Activity;

.field private mLoginListener:Lcom/renn/rennsdk/RennClient$LoginListener;

.field private mLoginLogic:Lcom/renn/rennsdk/oauth/LoginLogic;

.field public scope:Ljava/lang/String;

.field public secretKey:Ljava/lang/String;

.field public tokenType:Ljava/lang/String;


# direct methods
