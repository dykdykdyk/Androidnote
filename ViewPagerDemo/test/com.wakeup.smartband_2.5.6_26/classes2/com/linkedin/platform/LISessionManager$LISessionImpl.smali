.class Lcom/linkedin/platform/LISessionManager$LISessionImpl;
.super Ljava/lang/Object;
.source "LISessionManager.java"

# interfaces
.implements Lcom/linkedin/platform/LISession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linkedin/platform/LISessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LISessionImpl"
.end annotation


# static fields
.field private static final LI_SDK_SHARED_PREF_STORE:Ljava/lang/String; = "li_shared_pref_store"

.field private static final SHARED_PREFERENCES_ACCESS_TOKEN:Ljava/lang/String; = "li_sdk_access_token"


# instance fields
.field private accessToken:Lcom/linkedin/platform/AccessToken;


# direct methods
.method public constructor <init>()V
    .registers 2

