.class public Lbolts/AppLinkNavigation;
.super Ljava/lang/Object;
.source "AppLinkNavigation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbolts/AppLinkNavigation$NavigationResult;
    }
.end annotation


# static fields
.field private static final KEY_NAME_REFERER_APP_LINK:Ljava/lang/String; = "referer_app_link"

.field private static final KEY_NAME_REFERER_APP_LINK_APP_NAME:Ljava/lang/String; = "app_name"

.field private static final KEY_NAME_REFERER_APP_LINK_PACKAGE:Ljava/lang/String; = "package"

.field private static final KEY_NAME_USER_AGENT:Ljava/lang/String; = "user_agent"

.field private static final KEY_NAME_VERSION:Ljava/lang/String; = "version"

.field private static final VERSION:Ljava/lang/String; = "1.0"

.field private static defaultResolver:Lbolts/AppLinkResolver;


# instance fields
.field private final appLink:Lbolts/AppLink;

.field private final appLinkData:Landroid/os/Bundle;

.field private final extras:Landroid/os/Bundle;


# direct methods
