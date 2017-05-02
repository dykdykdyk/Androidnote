.class final Lokhttp3/internal/framed/Hpack;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/framed/Hpack$Writer;,
        Lokhttp3/internal/framed/Hpack$Reader;
    }
.end annotation


# static fields
.field private static final NAME_TO_FIRST_INDEX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lokio/ByteString;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREFIX_4_BITS:I = 0xf

.field private static final PREFIX_5_BITS:I = 0x1f

.field private static final PREFIX_6_BITS:I = 0x3f

.field private static final PREFIX_7_BITS:I = 0x7f

.field private static final STATIC_HEADER_TABLE:[Lokhttp3/internal/framed/Header;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 46
    const/16 v0, 0x3d

    new-array v0, v0, [Lokhttp3/internal/framed/Header;

    const/4 v1, 0x0

    new-instance v2, Lokhttp3/internal/framed/Header;

    sget-object v3, Lokhttp3/internal/framed/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lokhttp3/internal/framed/Header;

    sget-object v3, Lokhttp3/internal/framed/Header;->TARGET_METHOD:Lokio/ByteString;

    const-string/jumbo v4, "GET"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lokhttp3/internal/framed/Header;

    sget-object v3, Lokhttp3/internal/framed/Header;->TARGET_METHOD:Lokio/ByteString;

    const-string/jumbo v4, "POST"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lokhttp3/internal/framed/Header;

    sget-object v3, Lokhttp3/internal/framed/Header;->TARGET_PATH:Lokio/ByteString;

    const-string/jumbo v4, "/"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lokhttp3/internal/framed/Header;

    sget-object v3, Lokhttp3/internal/framed/Header;->TARGET_PATH:Lokio/ByteString;

    const-string/jumbo v4, "/index.html"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lokhttp3/internal/framed/Header;

    sget-object v3, Lokhttp3/internal/framed/Header;->TARGET_SCHEME:Lokio/ByteString;

    const-string/jumbo v4, "http"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lokhttp3/internal/framed/Header;

    sget-object v3, Lokhttp3/internal/framed/Header;->TARGET_SCHEME:Lokio/ByteString;

    const-string/jumbo v4, "https"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lokhttp3/internal/framed/Header;

    sget-object v3, Lokhttp3/internal/framed/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string/jumbo v4, "200"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lokhttp3/internal/framed/Header;

    sget-object v3, Lokhttp3/internal/framed/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string/jumbo v4, "204"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lokhttp3/internal/framed/Header;

    sget-object v3, Lokhttp3/internal/framed/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string/jumbo v4, "206"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lokhttp3/internal/framed/Header;

    sget-object v3, Lokhttp3/internal/framed/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string/jumbo v4, "304"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lokhttp3/internal/framed/Header;

    sget-object v3, Lokhttp3/internal/framed/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string/jumbo v4, "400"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lokhttp3/internal/framed/Header;

    sget-object v3, Lokhttp3/internal/framed/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string/jumbo v4, "404"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lokhttp3/internal/framed/Header;

    sget-object v3, Lokhttp3/internal/framed/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string/jumbo v4, "500"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "accept-charset"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "accept-encoding"

    const-string/jumbo v4, "gzip, deflate"

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "accept-language"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "accept-ranges"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "accept"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "access-control-allow-origin"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "age"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "allow"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "authorization"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "cache-control"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "content-disposition"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "content-encoding"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "content-language"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "content-length"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "content-location"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "content-range"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "content-type"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "cookie"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "date"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "etag"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "expect"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "expires"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "from"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "host"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "if-match"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "if-modified-since"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "if-none-match"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "if-range"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "if-unmodified-since"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "last-modified"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "link"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "location"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "max-forwards"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "proxy-authenticate"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "proxy-authorization"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "range"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "referer"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "refresh"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "retry-after"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "server"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "set-cookie"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "strict-transport-security"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "transfer-encoding"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "user-agent"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "vary"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "via"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-instance v2, Lokhttp3/internal/framed/Header;

    const-string/jumbo v3, "www-authenticate"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lokhttp3/internal/framed/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/framed/Header;

    .line 357
    invoke-static {}, Lokhttp3/internal/framed/Hpack;->nameToFirstIndex()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/framed/Hpack;->NAME_TO_FIRST_INDEX:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

