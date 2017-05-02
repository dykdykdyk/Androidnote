.class public Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;
.super Landroid/app/Activity;
.source "SelectCountryActivity.java"

# interfaces
.implements Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar$OnIndexChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$CountryAdapter;,
        Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;
    }
.end annotation


# static fields
.field private static final CHINA_CN:Ljava/lang/String; = "\u4e2d\u56fd"

.field private static final CHINA_EN:Ljava/lang/String; = "China"

.field private static final CHINA_TW:Ljava/lang/String; = "\u4e2d\u570b"

.field public static final EXTRA_COUNTRY_CODE:Ljava/lang/String; = "code"

.field public static final EXTRA_COUNTRY_NAME:Ljava/lang/String; = "name"

.field private static final INFO_CN:Ljava/lang/String; = "\u5e38\u7528"

.field private static final INFO_EN:Ljava/lang/String; = "Common"

.field private static final INFO_TW:Ljava/lang/String; = "\u5e38\u7528"

.field private static final SELECT_COUNTRY_EN:Ljava/lang/String; = "Region"

.field private static final SELECT_COUNTRY_ZH_CN:Ljava/lang/String; = "\u9009\u62e9\u56fd\u5bb6"

.field private static final SELECT_COUNTRY_ZH_TW:Ljava/lang/String; = "\u9078\u64c7\u570b\u5bb6"


# instance fields
.field private arrSubCountry:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/register/mobile/Country;",
            ">;"
        }
    .end annotation
.end field

.field countryStr:Ljava/lang/String;

.field private indexCountries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$CountryAdapter;

.field private mCountries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/register/mobile/Country;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameLayout:Landroid/widget/FrameLayout;

.field private mLetterIndexBar:Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;

.field private mListView:Landroid/widget/ListView;

.field private mMainLayout:Landroid/widget/RelativeLayout;

.field private result:Lcom/sina/weibo/sdk/register/mobile/CountryList;


# direct methods
.method public constructor <init>()V
    .registers 2

