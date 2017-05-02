.class public Lorg/litepal/exceptions/DataSupportException;
.super Ljava/lang/RuntimeException;
.source "DataSupportException.java"


# static fields
.field public static final ID_TYPE_INVALID_EXCEPTION:Ljava/lang/String; = "id type is not supported. Only int or long is acceptable for id"

.field public static final INSTANTIATION_EXCEPTION:Ljava/lang/String; = " needs a default constructor."

.field public static final MODEL_IS_NOT_AN_INSTANCE_OF_DATA_SUPPORT:Ljava/lang/String; = " should be inherited from DataSupport"

.field public static final SAVE_FAILED:Ljava/lang/String; = "Save current model failed."

.field public static final UPDATE_CONDITIONS_EXCEPTION:Ljava/lang/String; = "The parameters in conditions are incorrect."

.field public static final WRONG_FIELD_TYPE_FOR_ASSOCIATIONS:Ljava/lang/String; = "The field to declare many2one or many2many associations should be List or Set."

.field private static final serialVersionUID:J = 0x1L


# direct methods
