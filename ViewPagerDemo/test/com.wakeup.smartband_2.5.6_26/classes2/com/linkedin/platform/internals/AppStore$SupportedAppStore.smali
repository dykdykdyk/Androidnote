.class final enum Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;
.super Ljava/lang/Enum;
.source "AppStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linkedin/platform/internals/AppStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SupportedAppStore"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;

.field public static final enum amazonAppstore:Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;

.field public static final enum googlePlay:Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;

.field public static final enum samsungApps:Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;


# instance fields
.field private final appStoreUri:Ljava/lang/String;

.field private final deviceManufacturer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 50
    new-instance v0, Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;

    const-string/jumbo v1, "amazonAppstore"

    const-string/jumbo v2, "amazon"

    const-string/jumbo v3, "amzn://apps/android?p=com.linkedin.android"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;->amazonAppstore:Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;

    .line 51
    new-instance v0, Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;

    const-string/jumbo v1, "googlePlay"

    const-string/jumbo v2, "google"

    const-string/jumbo v3, "market://details?id=com.linkedin.android"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;->googlePlay:Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;

    .line 52
    new-instance v0, Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;

    const-string/jumbo v1, "samsungApps"

    const-string/jumbo v2, "samsung"

    const-string/jumbo v3, "samsungapps://ProductDetail/com.linkedin.android"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;->samsungApps:Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;

    sget-object v1, Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;->amazonAppstore:Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;

    aput-object v1, v0, v4

    sget-object v1, Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;->googlePlay:Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;

    aput-object v1, v0, v5

    sget-object v1, Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;->samsungApps:Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;

    aput-object v1, v0, v6

    sput-object v0, Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;->$VALUES:[Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p3, "deviceManufacturer"    # Ljava/lang/String;
    .param p4, "appStoreUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput-object p3, p0, Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;->deviceManufacturer:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;->appStoreUri:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public static fromDeviceManufacturer()Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;
    .registers 6

    .prologue
    .line 72
    invoke-static {}, Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;->values()[Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    .local v0, "appStore":Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;
    :goto_6
    if-ge v1, v3, :cond_1a

    aget-object v0, v2, v1

    .line 73
    invoke-virtual {v0}, Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 78
    .end local v0    # "appStore":Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;
    :goto_16
    return-object v0

    .line 72
    .restart local v0    # "appStore":Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 78
    :cond_1a
    sget-object v0, Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;->googlePlay:Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;

    goto :goto_16
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    const-class v0, Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;

    return-object v0
.end method

.method public static values()[Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;->$VALUES:[Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;

    invoke-virtual {v0}, [Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;

    return-object v0
.end method


# virtual methods
.method public getAppStoreUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;->appStoreUri:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceManufacturer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/linkedin/platform/internals/AppStore$SupportedAppStore;->deviceManufacturer:Ljava/lang/String;

    return-object v0
.end method
