.class public Lcom/linkedin/platform/errors/LIApiError;
.super Ljava/lang/Exception;
.source "LIApiError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linkedin/platform/errors/LIApiError$ErrorType;
    }
.end annotation


# instance fields
.field private apiErrorResponse:Lcom/linkedin/platform/errors/ApiErrorResponse;

.field private errorType:Lcom/linkedin/platform/errors/LIApiError$ErrorType;

.field private httpStatusCode:I

.field private volleyError:Lcom/android/volley/VolleyError;


# direct methods
