.class public Lcom/amap/loc/c;
.super Ljava/lang/Object;
.source "CoreUtil.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:I

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:I

.field public static i:Z

.field public static j:I

.field static k:Ljava/lang/String;

.field static l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static n:Z

.field public static o:Z

.field static p:Z

.field static q:Z

.field private static r:Ljava/lang/String;

.field private static s:Ljava/lang/String;

.field private static t:[Ljava/lang/String;

.field private static u:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v0, "http://apilocate.amap.com/mobile/binary"

    sput-object v0, Lcom/amap/loc/c;->r:Ljava/lang/String;

    const-string/jumbo v0, "http://apilocatesrc.amap.com/mobile/binary"

    sput-object v0, Lcom/amap/loc/c;->s:Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "com.amap.api.location"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.loc"

    aput-object v1, v0, v4

    sput-object v0, Lcom/amap/loc/c;->t:[Ljava/lang/String;

    const-string/jumbo v0, "001;002;11B;11C;11E;11F;11G;11H;11I;11K;122;123;13A;135;13J"

    sput-object v0, Lcom/amap/loc/c;->u:Ljava/lang/String;

    sput-object v2, Lcom/amap/loc/c;->a:Ljava/lang/String;

    sput-object v2, Lcom/amap/loc/c;->b:Ljava/lang/String;

    sput-object v2, Lcom/amap/loc/c;->c:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/amap/loc/c;->d:Ljava/lang/String;

    const/16 v0, 0x7530

    sput v0, Lcom/amap/loc/c;->e:I

    sput-object v2, Lcom/amap/loc/c;->f:Ljava/lang/String;

    sput-object v2, Lcom/amap/loc/c;->g:Ljava/lang/String;

    const/16 v0, 0x14

    sput v0, Lcom/amap/loc/c;->h:I

    sput-boolean v4, Lcom/amap/loc/c;->i:Z

    sput v4, Lcom/amap/loc/c;->j:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/amap/loc/c;->m:Landroid/util/SparseArray;

    sget-object v0, Lcom/amap/loc/c;->m:Landroid/util/SparseArray;

    const-string/jumbo v1, "UNKWN"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/amap/loc/c;->m:Landroid/util/SparseArray;

    const-string/jumbo v1, "GPRS"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/amap/loc/c;->m:Landroid/util/SparseArray;

    const-string/jumbo v1, "EDGE"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/amap/loc/c;->m:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string/jumbo v2, "UMTS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/amap/loc/c;->m:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string/jumbo v2, "CDMA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/amap/loc/c;->m:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string/jumbo v2, "EVDO_0"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/amap/loc/c;->m:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string/jumbo v2, "EVDO_A"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/amap/loc/c;->m:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string/jumbo v2, "1xRTT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/amap/loc/c;->m:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string/jumbo v2, "HSDPA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/amap/loc/c;->m:Landroid/util/SparseArray;

    const/16 v1, 0x9

    const-string/jumbo v2, "HSUPA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/amap/loc/c;->m:Landroid/util/SparseArray;

    const/16 v1, 0xa

    const-string/jumbo v2, "HSPA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/amap/loc/c;->m:Landroid/util/SparseArray;

    const/16 v1, 0xb

    const-string/jumbo v2, "IDEN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/amap/loc/c;->m:Landroid/util/SparseArray;

    const/16 v1, 0xc

    const-string/jumbo v2, "EVDO_B"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/amap/loc/c;->m:Landroid/util/SparseArray;

    const/16 v1, 0xd

    const-string/jumbo v2, "LTE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/amap/loc/c;->m:Landroid/util/SparseArray;

    const/16 v1, 0xe

    const-string/jumbo v2, "EHRPD"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/amap/loc/c;->m:Landroid/util/SparseArray;

    const/16 v1, 0xf

    const-string/jumbo v2, "HSPAP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sput-boolean v3, Lcom/amap/loc/c;->n:Z

    sput-boolean v3, Lcom/amap/loc/c;->o:Z

    sput-boolean v3, Lcom/amap/loc/c;->p:Z

    sput-boolean v3, Lcom/amap/loc/c;->q:Z

    return-void
.end method

