.class public Lcom/google/android/gms/common/internal/ResolveAccountRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/internal/ResolveAccountRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final CV:I

.field private final CW:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field private final ec:Landroid/accounts/Account;

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/common/internal/zzad;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzad;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->ec:Landroid/accounts/Account;

    iput p3, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->CV:I

    iput-object p4, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->CW:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .registers 5

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/common/internal/ResolveAccountRequest;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->ec:Landroid/accounts/Account;

    return-object v0
.end method

.method public getSessionId()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->CV:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/zzad;->zza(Lcom/google/android/gms/common/internal/ResolveAccountRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzavc()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->CW:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-object v0
.end method
