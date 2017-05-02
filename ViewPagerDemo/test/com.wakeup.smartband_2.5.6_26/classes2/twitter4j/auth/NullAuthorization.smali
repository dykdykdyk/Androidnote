.class public Ltwitter4j/auth/NullAuthorization;
.super Ljava/lang/Object;
.source "NullAuthorization.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/auth/Authorization;


# static fields
.field private static final SINGLETON:Ltwitter4j/auth/NullAuthorization;

.field private static final serialVersionUID:J = -0x6aec7b2c6e05cd56L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    new-instance v0, Ltwitter4j/auth/NullAuthorization;

    invoke-direct {v0}, Ltwitter4j/auth/NullAuthorization;-><init>()V

    sput-object v0, Ltwitter4j/auth/NullAuthorization;->SINGLETON:Ltwitter4j/auth/NullAuthorization;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

