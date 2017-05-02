.class public Lcom/renn/rennsdk/oauth/SSO;
.super Ljava/lang/Object;
.source "SSO.java"


# static fields
.field public static final INTENT_REQUEST_KEY_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final INTENT_REQUEST_KEY_APIKEY:Ljava/lang/String; = "apikey"

.field public static final INTENT_REQUEST_KEY_EXPIRED_IN:Ljava/lang/String; = "expired_in"

.field public static final INTENT_REQUEST_KEY_MAC_ALGORITHM:Ljava/lang/String; = "mac_algorithm"

.field public static final INTENT_REQUEST_KEY_MAC_KEY:Ljava/lang/String; = "mac_key"

.field public static final INTENT_REQUEST_KEY_SCOPES:Ljava/lang/String; = "scope"

.field public static final INTENT_REQUEST_KEY_SWITH_USER:Ljava/lang/String; = "switch_user"

.field public static final INTENT_REQUEST_KEY_TOKEN_TYPE:Ljava/lang/String; = "token_type"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLoginListener:Lcom/renn/rennsdk/RennClient$LoginListener;

.field private mLoginLogic:Lcom/renn/rennsdk/oauth/LoginLogic;

.field private mRenrenAccountManagerInstance:Ljava/lang/Object;

.field private mRequestCode:I


# direct methods
