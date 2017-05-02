.class Landroid/support/v4/media/session/MediaSessionCompatApi14;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi14.java"


# static fields
.field private static final ACTION_FAST_FORWARD:J = 0x40L

.field private static final ACTION_PAUSE:J = 0x2L

.field private static final ACTION_PLAY:J = 0x4L

.field private static final ACTION_PLAY_PAUSE:J = 0x200L

.field private static final ACTION_REWIND:J = 0x8L

.field private static final ACTION_SKIP_TO_NEXT:J = 0x20L

.field private static final ACTION_SKIP_TO_PREVIOUS:J = 0x10L

.field private static final ACTION_STOP:J = 0x1L

.field private static final METADATA_KEY_ALBUM:Ljava/lang/String; = "android.media.metadata.ALBUM"

.field private static final METADATA_KEY_ALBUM_ART:Ljava/lang/String; = "android.media.metadata.ALBUM_ART"

.field private static final METADATA_KEY_ALBUM_ARTIST:Ljava/lang/String; = "android.media.metadata.ALBUM_ARTIST"

.field private static final METADATA_KEY_ART:Ljava/lang/String; = "android.media.metadata.ART"

.field private static final METADATA_KEY_ARTIST:Ljava/lang/String; = "android.media.metadata.ARTIST"

.field private static final METADATA_KEY_AUTHOR:Ljava/lang/String; = "android.media.metadata.AUTHOR"

.field private static final METADATA_KEY_COMPILATION:Ljava/lang/String; = "android.media.metadata.COMPILATION"

.field private static final METADATA_KEY_COMPOSER:Ljava/lang/String; = "android.media.metadata.COMPOSER"

.field private static final METADATA_KEY_DATE:Ljava/lang/String; = "android.media.metadata.DATE"

.field private static final METADATA_KEY_DISC_NUMBER:Ljava/lang/String; = "android.media.metadata.DISC_NUMBER"

.field private static final METADATA_KEY_DURATION:Ljava/lang/String; = "android.media.metadata.DURATION"

.field private static final METADATA_KEY_GENRE:Ljava/lang/String; = "android.media.metadata.GENRE"

.field private static final METADATA_KEY_TITLE:Ljava/lang/String; = "android.media.metadata.TITLE"

.field private static final METADATA_KEY_TRACK_NUMBER:Ljava/lang/String; = "android.media.metadata.TRACK_NUMBER"

.field private static final METADATA_KEY_WRITER:Ljava/lang/String; = "android.media.metadata.WRITER"

.field static final RCC_PLAYSTATE_NONE:I = 0x0

.field static final STATE_BUFFERING:I = 0x6

.field static final STATE_CONNECTING:I = 0x8

.field static final STATE_ERROR:I = 0x7

.field static final STATE_FAST_FORWARDING:I = 0x4

.field static final STATE_NONE:I = 0x0

.field static final STATE_PAUSED:I = 0x2

.field static final STATE_PLAYING:I = 0x3

.field static final STATE_REWINDING:I = 0x5

.field static final STATE_SKIPPING_TO_NEXT:I = 0xa

.field static final STATE_SKIPPING_TO_PREVIOUS:I = 0x9

.field static final STATE_SKIPPING_TO_QUEUE_ITEM:I = 0xb

.field static final STATE_STOPPED:I = 0x1


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildOldMetadata(Landroid/os/Bundle;Landroid/media/RemoteControlClient$MetadataEditor;)V
    .registers 6
    .param p0, "metadata"    # Landroid/os/Bundle;
    .param p1, "editor"    # Landroid/media/RemoteControlClient$MetadataEditor;

    .prologue
    const/16 v2, 0x64

    .line 162
    if-nez p0, :cond_5

    .line 225
    :cond_4
    :goto_4
    return-void

    .line 165
    :cond_5
    const-string/jumbo v1, "android.media.metadata.ART"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_125

    .line 166
    const-string/jumbo v1, "android.media.metadata.ART"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 167
    .local v0, "art":Landroid/graphics/Bitmap;
    invoke-virtual {p1, v2, v0}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 173
    .end local v0    # "art":Landroid/graphics/Bitmap;
    :cond_1a
    :goto_1a
    const-string/jumbo v1, "android.media.metadata.ALBUM"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 174
    const/4 v1, 0x1

    const-string/jumbo v2, "android.media.metadata.ALBUM"

    .line 175
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-virtual {p1, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 177
    :cond_2e
    const-string/jumbo v1, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 178
    const/16 v1, 0xd

    const-string/jumbo v2, "android.media.metadata.ALBUM_ARTIST"

    .line 179
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-virtual {p1, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 181
    :cond_43
    const-string/jumbo v1, "android.media.metadata.ARTIST"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 182
    const/4 v1, 0x2

    const-string/jumbo v2, "android.media.metadata.ARTIST"

    .line 183
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-virtual {p1, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 185
    :cond_57
    const-string/jumbo v1, "android.media.metadata.AUTHOR"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 186
    const/4 v1, 0x3

    const-string/jumbo v2, "android.media.metadata.AUTHOR"

    .line 187
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-virtual {p1, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 189
    :cond_6b
    const-string/jumbo v1, "android.media.metadata.COMPILATION"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 190
    const/16 v1, 0xf

    const-string/jumbo v2, "android.media.metadata.COMPILATION"

    .line 191
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-virtual {p1, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 193
    :cond_80
    const-string/jumbo v1, "android.media.metadata.COMPOSER"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 194
    const/4 v1, 0x4

    const-string/jumbo v2, "android.media.metadata.COMPOSER"

    .line 195
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-virtual {p1, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 197
    :cond_94
    const-string/jumbo v1, "android.media.metadata.DATE"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 198
    const/4 v1, 0x5

    const-string/jumbo v2, "android.media.metadata.DATE"

    .line 199
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-virtual {p1, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 201
    :cond_a8
    const-string/jumbo v1, "android.media.metadata.DISC_NUMBER"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 202
    const/16 v1, 0xe

    const-string/jumbo v2, "android.media.metadata.DISC_NUMBER"

    .line 203
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 202
    invoke-virtual {p1, v1, v2, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 205
    :cond_bd
    const-string/jumbo v1, "android.media.metadata.DURATION"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 206
    const/16 v1, 0x9

    const-string/jumbo v2, "android.media.metadata.DURATION"

    .line 207
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 206
    invoke-virtual {p1, v1, v2, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 209
    :cond_d2
    const-string/jumbo v1, "android.media.metadata.GENRE"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e6

    .line 210
    const/4 v1, 0x6

    const-string/jumbo v2, "android.media.metadata.GENRE"

    .line 211
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-virtual {p1, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 213
    :cond_e6
    const-string/jumbo v1, "android.media.metadata.TITLE"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fa

    .line 214
    const/4 v1, 0x7

    const-string/jumbo v2, "android.media.metadata.TITLE"

    .line 215
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-virtual {p1, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 217
    :cond_fa
    const-string/jumbo v1, "android.media.metadata.TRACK_NUMBER"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10e

    .line 218
    const/4 v1, 0x0

    const-string/jumbo v2, "android.media.metadata.TRACK_NUMBER"

    .line 219
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 218
    invoke-virtual {p1, v1, v2, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 221
    :cond_10e
    const-string/jumbo v1, "android.media.metadata.WRITER"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 222
    const/16 v1, 0xb

    const-string/jumbo v2, "android.media.metadata.WRITER"

    .line 223
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-virtual {p1, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    goto/16 :goto_4

    .line 168
    :cond_125
    const-string/jumbo v1, "android.media.metadata.ALBUM_ART"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 170
    const-string/jumbo v1, "android.media.metadata.ALBUM_ART"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 171
    .restart local v0    # "art":Landroid/graphics/Bitmap;
    invoke-virtual {p1, v2, v0}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    goto/16 :goto_1a
.end method

.method public static createRemoteControlClient(Landroid/app/PendingIntent;)Ljava/lang/Object;
    .registers 2
    .param p0, "mbIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 74
    new-instance v0, Landroid/media/RemoteControlClient;

    invoke-direct {v0, p0}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method static getRccStateFromState(I)I
    .registers 2
    .param p0, "state"    # I

    .prologue
    .line 104
    packed-switch p0, :pswitch_data_1c

    .line 128
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 107
    :pswitch_5
    const/16 v0, 0x8

    goto :goto_4

    .line 109
    :pswitch_8
    const/16 v0, 0x9

    goto :goto_4

    .line 111
    :pswitch_b
    const/4 v0, 0x4

    goto :goto_4

    .line 113
    :pswitch_d
    const/4 v0, 0x0

    goto :goto_4

    .line 115
    :pswitch_f
    const/4 v0, 0x2

    goto :goto_4

    .line 117
    :pswitch_11
    const/4 v0, 0x3

    goto :goto_4

    .line 119
    :pswitch_13
    const/4 v0, 0x5

    goto :goto_4

    .line 121
    :pswitch_15
    const/4 v0, 0x7

    goto :goto_4

    .line 124
    :pswitch_17
    const/4 v0, 0x6

    goto :goto_4

    .line 126
    :pswitch_19
    const/4 v0, 0x1

    goto :goto_4

    .line 104
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_d
        :pswitch_19
        :pswitch_f
        :pswitch_11
        :pswitch_b
        :pswitch_13
        :pswitch_5
        :pswitch_8
        :pswitch_5
        :pswitch_15
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method static getRccTransportControlFlagsFromActions(J)I
    .registers 8
    .param p0, "actions"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "transportControlFlags":I
    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_c

    .line 135
    or-int/lit8 v0, v0, 0x20

    .line 137
    :cond_c
    const-wide/16 v2, 0x2

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_15

    .line 138
    or-int/lit8 v0, v0, 0x10

    .line 140
    :cond_15
    const-wide/16 v2, 0x4

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1e

    .line 141
    or-int/lit8 v0, v0, 0x4

    .line 143
    :cond_1e
    const-wide/16 v2, 0x8

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_27

    .line 144
    or-int/lit8 v0, v0, 0x2

    .line 146
    :cond_27
    const-wide/16 v2, 0x10

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_30

    .line 147
    or-int/lit8 v0, v0, 0x1

    .line 149
    :cond_30
    const-wide/16 v2, 0x20

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_39

    .line 150
    or-int/lit16 v0, v0, 0x80

    .line 152
    :cond_39
    const-wide/16 v2, 0x40

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_42

    .line 153
    or-int/lit8 v0, v0, 0x40

    .line 155
    :cond_42
    const-wide/16 v2, 0x200

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4b

    .line 156
    or-int/lit8 v0, v0, 0x8

    .line 158
    :cond_4b
    return v0
.end method

.method public static registerRemoteControlClient(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rccObj"    # Ljava/lang/Object;

    .prologue
    .line 94
    const-string/jumbo v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 95
    .local v0, "am":Landroid/media/AudioManager;
    check-cast p1, Landroid/media/RemoteControlClient;

    .end local p1    # "rccObj":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 96
    return-void
.end method

.method public static setMetadata(Ljava/lang/Object;Landroid/os/Bundle;)V
    .registers 4
    .param p0, "rccObj"    # Ljava/lang/Object;
    .param p1, "metadata"    # Landroid/os/Bundle;

    .prologue
    .line 87
    check-cast p0, Landroid/media/RemoteControlClient;

    .end local p0    # "rccObj":Ljava/lang/Object;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    .line 89
    .local v0, "editor":Landroid/media/RemoteControlClient$MetadataEditor;
    invoke-static {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->buildOldMetadata(Landroid/os/Bundle;Landroid/media/RemoteControlClient$MetadataEditor;)V

    .line 90
    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    .line 91
    return-void
.end method

.method public static setState(Ljava/lang/Object;I)V
    .registers 3
    .param p0, "rccObj"    # Ljava/lang/Object;
    .param p1, "state"    # I

    .prologue
    .line 78
    check-cast p0, Landroid/media/RemoteControlClient;

    .end local p0    # "rccObj":Ljava/lang/Object;
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->getRccStateFromState(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 79
    return-void
.end method

.method public static setTransportControlFlags(Ljava/lang/Object;J)V
    .registers 4
    .param p0, "rccObj"    # Ljava/lang/Object;
    .param p1, "actions"    # J

    .prologue
    .line 82
    check-cast p0, Landroid/media/RemoteControlClient;

    .line 83
    .end local p0    # "rccObj":Ljava/lang/Object;
    invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->getRccTransportControlFlagsFromActions(J)I

    move-result v0

    .line 82
    invoke-virtual {p0, v0}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    .line 84
    return-void
.end method

.method public static unregisterRemoteControlClient(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rccObj"    # Ljava/lang/Object;

    .prologue
    .line 99
    const-string/jumbo v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 100
    .local v0, "am":Landroid/media/AudioManager;
    check-cast p1, Landroid/media/RemoteControlClient;

    .end local p1    # "rccObj":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 101
    return-void
.end method
