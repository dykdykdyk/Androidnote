.class public Lcom/renn/rennsdk/oauth/RenrenAccountManager;
.super Ljava/lang/Object;
.source "RenrenAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/renn/rennsdk/oauth/RenrenAccountManager$AccountManagerCallBackForAddAccount;,
        Lcom/renn/rennsdk/oauth/RenrenAccountManager$AccountManagerCallBackForGetAuthToken;,
        Lcom/renn/rennsdk/oauth/RenrenAccountManager$AccountManagerCallBackForVerifyAccount;,
        Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginCallback;,
        Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginError;
    }
.end annotation


# static fields
.field private static final ACCOUNT_MANAGER_HD_MIN_VERSION:I = 0x2dc6c0

.field private static final ACCOUNT_MANAGER_HD_PACKAGE_NAME:Ljava/lang/String; = "com.renren.mobile.apad"

.field private static final ACCOUNT_MANAGER_MIN_VERSION:I = 0x4dab98

.field private static final ACCOUNT_MANAGER_PACKAGE_NAME:Ljava/lang/String; = "com.renren.mobile.android"

.field private static final ACCOUNT_TYPE:Ljava/lang/String; = "com.renren.renren_account_manager"

.field private static final ACCOUNT_TYPE_HD:Ljava/lang/String; = "com.renren.renren_account_manager_for_hd"

.field private static final ACCOUNT_VERIFY_HEAD:Ljava/lang/String; = "[ACCOUNT_VERIFY_HEAD]"

.field private static final JSON_KEY_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field private static final JSON_KEY_CLIENT_ID:Ljava/lang/String; = "client_id"

.field private static final JSON_KEY_CLIENT_INFO:Ljava/lang/String; = "client_info"

.field private static final JSON_KEY_EXPIRES:Ljava/lang/String; = "expires"

.field private static final JSON_KEY_MAC_ALGORITHM:Ljava/lang/String; = "mac_algorithm"

.field private static final JSON_KEY_MAC_KEY:Ljava/lang/String; = "mac_key"

.field private static final JSON_KEY_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final JSON_KEY_SCOPE:Ljava/lang/String; = "scope"

.field private static final JSON_KEY_TOKENTYPE:Ljava/lang/String; = "token_type"

.field private static final KEY_FOR_FIX_4_0_BUG:Ljava/lang/String; = "key_for_fix_4_0_bug"

.field private static final KEY_FOR_FIX_4_0_BUG_ACCOUNT:Ljava/lang/String; = "key_for_fix_4_0_bug_account"

.field private static final KEY_FOR_FIX_4_0_BUG_TOKEN:Ljava/lang/String; = "key_for_fix_4_0_bug_token"

.field private static final SCREEN_SIZE_GAP:D = 5.0


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAccountType:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mCallBackForAddAccount:Lcom/renn/rennsdk/oauth/RenrenAccountManager$AccountManagerCallBackForAddAccount;

.field private mCallBackForGetAuthToken:Lcom/renn/rennsdk/oauth/RenrenAccountManager$AccountManagerCallBackForGetAuthToken;

.field private mCallBackForVerifyAccount:Lcom/renn/rennsdk/oauth/RenrenAccountManager$AccountManagerCallBackForVerifyAccount;

.field private mClientId:Ljava/lang/String;

.field private mClientInfo:Ljava/lang/String;

.field private mExpires:J

.field private mHandler:Landroid/os/Handler;

.field private mIsFromHD:Z

.field private mLoginCallback:Lcom/renn/rennsdk/oauth/RenrenAccountManager$LoginCallback;

.field private mMacAlgorithm:Ljava/lang/String;

.field private mMacKey:Ljava/lang/String;

.field private mRequestScope:Ljava/lang/String;

.field private mScope:Ljava/lang/String;

.field private mTokenType:Ljava/lang/String;


# direct methods
