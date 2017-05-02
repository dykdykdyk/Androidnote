.class public Lcom/linkedin/platform/utils/Scope;
.super Ljava/lang/Object;
.source "Scope.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linkedin/platform/utils/Scope$LIPermission;
    }
.end annotation


# static fields
.field public static final RW_COMPANY_ADMIN:Lcom/linkedin/platform/utils/Scope$LIPermission;

.field public static final R_BASICPROFILE:Lcom/linkedin/platform/utils/Scope$LIPermission;

.field public static final R_CONTACTINFO:Lcom/linkedin/platform/utils/Scope$LIPermission;

.field public static final R_EMAILADDRESS:Lcom/linkedin/platform/utils/Scope$LIPermission;

.field public static final R_FULLPROFILE:Lcom/linkedin/platform/utils/Scope$LIPermission;

.field public static final W_SHARE:Lcom/linkedin/platform/utils/Scope$LIPermission;


# instance fields
.field private permissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/linkedin/platform/utils/Scope$LIPermission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 15
    new-instance v0, Lcom/linkedin/platform/utils/Scope$LIPermission;

    const-string/jumbo v1, "r_basicprofile"

    const-string/jumbo v2, "Name, photo, headline and current position"

    invoke-direct {v0, v1, v2}, Lcom/linkedin/platform/utils/Scope$LIPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/linkedin/platform/utils/Scope;->R_BASICPROFILE:Lcom/linkedin/platform/utils/Scope$LIPermission;

    .line 20
    new-instance v0, Lcom/linkedin/platform/utils/Scope$LIPermission;

    const-string/jumbo v1, "r_fullprofile"

    const-string/jumbo v2, "Full profile including experience, education, skills and recommendations"

    invoke-direct {v0, v1, v2}, Lcom/linkedin/platform/utils/Scope$LIPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/linkedin/platform/utils/Scope;->R_FULLPROFILE:Lcom/linkedin/platform/utils/Scope$LIPermission;

    .line 25
    new-instance v0, Lcom/linkedin/platform/utils/Scope$LIPermission;

    const-string/jumbo v1, "r_emailaddress"

    const-string/jumbo v2, "Your email address"

    invoke-direct {v0, v1, v2}, Lcom/linkedin/platform/utils/Scope$LIPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/linkedin/platform/utils/Scope;->R_EMAILADDRESS:Lcom/linkedin/platform/utils/Scope$LIPermission;

    .line 30
    new-instance v0, Lcom/linkedin/platform/utils/Scope$LIPermission;

    const-string/jumbo v1, "r_contactinfo"

    const-string/jumbo v2, "Your contact info"

    invoke-direct {v0, v1, v2}, Lcom/linkedin/platform/utils/Scope$LIPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/linkedin/platform/utils/Scope;->R_CONTACTINFO:Lcom/linkedin/platform/utils/Scope$LIPermission;

    .line 35
    new-instance v0, Lcom/linkedin/platform/utils/Scope$LIPermission;

    const-string/jumbo v1, "rw_company_admin"

    const-string/jumbo v2, "Manage your company page and post updates"

    invoke-direct {v0, v1, v2}, Lcom/linkedin/platform/utils/Scope$LIPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/linkedin/platform/utils/Scope;->RW_COMPANY_ADMIN:Lcom/linkedin/platform/utils/Scope$LIPermission;

    .line 40
    new-instance v0, Lcom/linkedin/platform/utils/Scope$LIPermission;

    const-string/jumbo v1, "w_share"

    const-string/jumbo v2, "Post updates, make comments and like posts as you"

    invoke-direct {v0, v1, v2}, Lcom/linkedin/platform/utils/Scope$LIPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/linkedin/platform/utils/Scope;->W_SHARE:Lcom/linkedin/platform/utils/Scope$LIPermission;

    return-void
.end method

