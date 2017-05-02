.class public final Lcom/google/android/gms/maps/internal/zza;
.super Ljava/lang/Object;


# direct methods
.method public static zza(B)Ljava/lang/Boolean;
    .registers 2

    packed-switch p0, :pswitch_data_c

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :pswitch_5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4

    :pswitch_8
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static zze(Ljava/lang/Boolean;)B
    .registers 2

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9

    :cond_c
    const/4 v0, -0x1

    goto :goto_9
.end method
