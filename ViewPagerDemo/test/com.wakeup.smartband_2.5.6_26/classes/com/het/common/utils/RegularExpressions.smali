.class public final Lcom/het/common/utils/RegularExpressions;
.super Ljava/lang/Object;
.source "RegularExpressions.java"


# static fields
.field public static final EMAIL_FORMAT:Ljava/lang/String; = "^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$"

.field public static final PASSWORD_LEGAL_CHARACTERS:Ljava/lang/String; = "[a-zA-Z0-9]{6,20}"

.field public static final PHONE_FORMAT:Ljava/lang/String; = "^1[3|4|5|7|8][0-9]\\d{8}$"

.field public static final VERIFY_CODE_FORMAT:Ljava/lang/String; = "^\\d{4}$"


# direct methods
.method private constructor <init>()V
    .registers 1

