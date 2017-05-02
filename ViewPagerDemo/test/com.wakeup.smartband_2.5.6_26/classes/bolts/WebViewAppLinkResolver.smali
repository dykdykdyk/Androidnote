.class public Lbolts/WebViewAppLinkResolver;
.super Ljava/lang/Object;
.source "WebViewAppLinkResolver.java"

# interfaces
.implements Lbolts/AppLinkResolver;


# static fields
.field private static final KEY_AL_VALUE:Ljava/lang/String; = "value"

.field private static final KEY_ANDROID:Ljava/lang/String; = "android"

.field private static final KEY_APP_NAME:Ljava/lang/String; = "app_name"

.field private static final KEY_CLASS:Ljava/lang/String; = "class"

.field private static final KEY_PACKAGE:Ljava/lang/String; = "package"

.field private static final KEY_SHOULD_FALLBACK:Ljava/lang/String; = "should_fallback"

.field private static final KEY_URL:Ljava/lang/String; = "url"

.field private static final KEY_WEB:Ljava/lang/String; = "web"

.field private static final KEY_WEB_URL:Ljava/lang/String; = "url"

.field private static final META_TAG_PREFIX:Ljava/lang/String; = "al"

.field private static final PREFER_HEADER:Ljava/lang/String; = "Prefer-Html-Meta-Tags"

.field private static final TAG_EXTRACTION_JAVASCRIPT:Ljava/lang/String; = "javascript:boltsWebViewAppLinkResolverResult.setValue((function() {  var metaTags = document.getElementsByTagName(\'meta\');  var results = [];  for (var i = 0; i < metaTags.length; i++) {    var property = metaTags[i].getAttribute(\'property\');    if (property && property.substring(0, \'al:\'.length) === \'al:\') {      var tag = { \"property\": metaTags[i].getAttribute(\'property\') };      if (metaTags[i].hasAttribute(\'content\')) {        tag[\'content\'] = metaTags[i].getAttribute(\'content\');      }      results.push(tag);    }  }  return JSON.stringify(results);})())"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
