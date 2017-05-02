.class public Lcom/renn/rennsdk/RennClient;
.super Ljava/lang/Object;
.source "RennClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/renn/rennsdk/RennClient$LoginListener;
    }
.end annotation


# static fields
.field public static final ACCESSSCOPE:Ljava/lang/String; = "rr_renn_accessScope"

.field public static final ACCESSTOKEN:Ljava/lang/String; = "rr_renn_accessToken"

.field public static final EXPIRESIN:Ljava/lang/String; = "rr_renn_expiresIn"

.field public static final MACALGORITHM:Ljava/lang/String; = "rr_renn_macAlgorithm"

.field public static final MACKEY:Ljava/lang/String; = "rr_renn_macKey"

.field public static final REFRESHTOKEN:Ljava/lang/String; = "rr_renn_refreshToken"

.field public static final REQUESTTIME:Ljava/lang/String; = "rr_renn_requestTime"

.field public static final TOKENTYPE:Ljava/lang/String; = "rr_renn_tokenType"

.field public static final UID:Ljava/lang/String; = "rr_renn_uid"

.field private static mInstance:Lcom/renn/rennsdk/RennClient;


# instance fields
.field private accessToken:Lcom/renn/rennsdk/AccessToken;

.field private apiKey:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private mRenRenOAuth:Lcom/renn/rennsdk/oauth/RenRenOAuth;

.field private mUid:Ljava/lang/String;

.field private scope:Ljava/lang/String;

.field private secretKey:Ljava/lang/String;

.field private tokenType:Ljava/lang/String;

.field private valueStorage:Lcom/renn/rennsdk/oauth/ValueStorage;


# direct methods
