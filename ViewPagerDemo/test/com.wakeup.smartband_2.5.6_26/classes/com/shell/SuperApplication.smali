.class public Lcom/shell/SuperApplication;
.super Landroid/app/Application;
.source "SuperApplication.java"


# static fields
.field static baseDir:Ljava/lang/String;

.field private static newApp:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/shell/SuperApplication;->baseDir:Ljava/lang/String;

    sput-object v0, Lcom/shell/SuperApplication;->newApp:Landroid/app/Application;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private copyLib(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;)V
    .registers 9

    :try_start_0
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_11
    invoke-virtual {p1, p2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_1e
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2c

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :goto_2b
    return-void

    :cond_2c
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_30} :catch_31

    goto :goto_1e

    :catch_31
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2b
.end method

.method public static getCRC32(Ljava/io/File;)J
    .registers 9

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    :goto_9
    return-wide v0

    :cond_a
    new-instance v5, Ljava/util/zip/CRC32;

    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    :try_start_f
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_35
    .catchall {:try_start_f .. :try_end_14} :catchall_44

    :try_start_14
    new-instance v2, Ljava/util/zip/CheckedInputStream;

    invoke-direct {v2, v4, v5}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_5e
    .catchall {:try_start_14 .. :try_end_19} :catchall_59

    const/16 v3, 0x400

    :try_start_1b
    new-array v3, v3, [B

    :cond_1d
    invoke-virtual {v2, v3}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1d

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_27} :catch_62
    .catchall {:try_start_1b .. :try_end_27} :catchall_5b

    move-result-wide v0

    if-eqz v4, :cond_2d

    :try_start_2a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_57

    :cond_2d
    :goto_2d
    if-eqz v2, :cond_9

    :try_start_2f
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_9

    :catch_33
    move-exception v2

    goto :goto_9

    :catch_35
    move-exception v2

    move-object v2, v3

    :goto_37
    if-eqz v3, :cond_3c

    :try_start_39
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_51

    :cond_3c
    :goto_3c
    if-eqz v2, :cond_9

    :try_start_3e
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_9

    :catch_42
    move-exception v2

    goto :goto_9

    :catchall_44
    move-exception v0

    move-object v4, v3

    :goto_46
    if-eqz v4, :cond_4b

    :try_start_48
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_53

    :cond_4b
    :goto_4b
    if-eqz v3, :cond_50

    :try_start_4d
    invoke-virtual {v3}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_55

    :cond_50
    :goto_50
    throw v0

    :catch_51
    move-exception v3

    goto :goto_3c

    :catch_53
    move-exception v1

    goto :goto_4b

    :catch_55
    move-exception v1

    goto :goto_50

    :catch_57
    move-exception v3

    goto :goto_2d

    :catchall_59
    move-exception v0

    goto :goto_46

    :catchall_5b
    move-exception v0

    move-object v3, v2

    goto :goto_46

    :catch_5e
    move-exception v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_37

    :catch_62
    move-exception v3

    move-object v3, v4

    goto :goto_37
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/shell/SuperApplication;->loadLibs(Landroid/content/Context;)V

    const-string v0, "com.wakeup.smartband"

    invoke-static {p0, v0}, Lcom/shell/NativeApplication;->load(Landroid/app/Application;Ljava/lang/String;)Z

    const-string v0, "com.wakeup.smartband.AppApplication"

    invoke-static {p0, v0}, Lcom/shell/NativeApplication;->run(Landroid/app/Application;Ljava/lang/String;)Z

    return-void
.end method

.method protected copyLib(Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v1, "assets/ijm_lib/armeabi/libexec.so"

    const-string v0, "assets/ijm_lib/armeabi/libexecmain.so"

    const-string/jumbo v2, "x86"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v1, "assets/ijm_lib/x86/libexec.so"

    const-string v0, "assets/ijm_lib/x86/libexecmain.so"

    :cond_11
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/shell/SuperApplication;->baseDir:Ljava/lang/String;

    const-string v4, "libexec.so"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/shell/SuperApplication;->baseDir:Ljava/lang/String;

    const-string v5, "libexecmain.so"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-virtual {p0}, Lcom/shell/SuperApplication;->getPackageCodePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_41

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v6

    invoke-static {v2}, Lcom/shell/SuperApplication;->getCRC32(Ljava/io/File;)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_41

    invoke-direct {p0, v4, v1, v2}, Lcom/shell/SuperApplication;->copyLib(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;)V

    :cond_41
    invoke-virtual {v4, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_56

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v6

    invoke-static {v3}, Lcom/shell/SuperApplication;->getCRC32(Ljava/io/File;)J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-eqz v1, :cond_56

    invoke-direct {p0, v4, v0, v3}, Lcom/shell/SuperApplication;->copyLib(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;)V

    :cond_56
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V

    return-void
.end method

.method protected loadLibs(Landroid/content/Context;)V
    .registers 6

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shell/SuperApplication;->baseDir:Ljava/lang/String;

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "getprop ro.product.cpu.abi"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_38

    const-string/jumbo v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string/jumbo v0, "x86"

    invoke-virtual {p0, v0}, Lcom/shell/SuperApplication;->copyLib(Ljava/lang/String;)V

    :goto_37
    return-void

    :cond_38
    const-string v0, "arm"

    invoke-virtual {p0, v0}, Lcom/shell/SuperApplication;->copyLib(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3d} :catch_3e

    goto :goto_37

    :catch_3e
    move-exception v0

    :try_start_3f
    const-string v0, "arm"

    invoke-virtual {p0, v0}, Lcom/shell/SuperApplication;->copyLib(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_44} :catch_45

    goto :goto_37

    :catch_45
    move-exception v0

    goto :goto_37
.end method

.method public onCreate()V
    .registers 5

    const-string v0, "com.wakeup.smartband.AppApplication"

    invoke-static {p0, v0}, Lcom/shell/NativeApplication;->runAll(Landroid/app/Application;Ljava/lang/String;)Z

    sget-object v0, Lcom/shell/SuperApplication;->newApp:Landroid/app/Application;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/shell/SuperApplication;->newApp:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onCreate()V

    :cond_e
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    return-void
.end method
