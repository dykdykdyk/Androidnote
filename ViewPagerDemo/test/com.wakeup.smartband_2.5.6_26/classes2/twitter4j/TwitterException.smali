.class public Ltwitter4j/TwitterException;
.super Ljava/lang/Exception;
.source "TwitterException.java"

# interfaces
.implements Ltwitter4j/HttpResponseCode;
.implements Ltwitter4j/TwitterResponse;


# static fields
.field private static final FILTER:[Ljava/lang/String;

.field private static final serialVersionUID:J = 0x535b982b220f22b8L


# instance fields
.field private errorCode:I

.field private errorMessage:Ljava/lang/String;

.field private exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

.field private nested:Z

.field private response:Ltwitter4j/HttpResponse;

.field private statusCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 194
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "twitter4j"

    aput-object v2, v0, v1

    sput-object v0, Ltwitter4j/TwitterException;->FILTER:[Ljava/lang/String;

    return-void
.end method

