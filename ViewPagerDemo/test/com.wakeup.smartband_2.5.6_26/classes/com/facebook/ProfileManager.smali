.class final Lcom/facebook/ProfileManager;
.super Ljava/lang/Object;
.source "ProfileManager.java"


# static fields
.field static final ACTION_CURRENT_PROFILE_CHANGED:Ljava/lang/String; = "com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED"

.field static final EXTRA_NEW_PROFILE:Ljava/lang/String; = "com.facebook.sdk.EXTRA_NEW_PROFILE"

.field static final EXTRA_OLD_PROFILE:Ljava/lang/String; = "com.facebook.sdk.EXTRA_OLD_PROFILE"

.field private static volatile instance:Lcom/facebook/ProfileManager;


# instance fields
.field private currentProfile:Lcom/facebook/Profile;

.field private final localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private final profileCache:Lcom/facebook/ProfileCache;


# direct methods
