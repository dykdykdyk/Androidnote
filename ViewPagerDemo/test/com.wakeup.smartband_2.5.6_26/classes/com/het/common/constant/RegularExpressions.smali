.class public final Lcom/het/common/constant/RegularExpressions;
.super Ljava/lang/Object;
.source "RegularExpressions.java"


# static fields
.field public static final EMAIL_FORMAT:Ljava/lang/String; = "^[0-9a-zA-Z][_.0-9a-zA-Z-]{0,43}@([0-9a-zA-Z][0-9a-zA-Z-]{0,30}[0-9a-zA-Z].){1,4}[a-zA-Z]{2,4}$"

.field public static final PASSWORD_LEGAL_CHARACTERS:Ljava/lang/String; = "^[0-9a-zA-Z\\`\\~\\!\\@\\#\\$\\%\\^\\&\\*\\(\\)\\-\\_\\=\\+\\[\\]\\{\\}\\\\|\\;\\:\'\"\\,\\.\\<\\>\\/\\?]$"

.field public static final PHONE_FORMAT:Ljava/lang/String; = "^((17[0-9])|(13[0-9])|(15[0-3,5-9])|(18[0-9])|(145)|(147))\\d{8}$"

.field public static final VERIFY_CODE_FORMAT:Ljava/lang/String; = "^\\d{4}$"


# direct methods
.method private constructor <init>()V
    .registers 1

