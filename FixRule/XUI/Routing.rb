{
    "log": {
        "access": "./access.log",
        "error": "none",
        "loglevel": "info",
        "dnsLog": false
    },
    "api": {
        "tag": "api",
        "services": [
        "HandlerService",
        "LoggerService",
        "StatsService"
        ]
    },
    "inbounds": [
    {
        "tag": "api",
        "listen": "127.0.0.1",
        "port": 62789,
        "protocol": "dokodemo-door",
        "settings": {
            "address": "127.0.0.1"
        }
    }
    ],
    "outbounds": [
    {
        "tag": "direct",
        "protocol": "freedom",
        "settings": {
            "domainStrategy": "UseIP"
        }
    },
    {
        "tag": "IPv6_out",
        "protocol": "freedom",
        "settings": {
            "domainStrategy": "UseIPv6"
        }
    },
    {
        "tag": "IPv4_out",
        "protocol": "freedom",
        "settings": {
            "domainStrategy": "UseIPv4"
        }
    },
    {
        "tag": "SS",
        "protocol": "Shadowsocks",
        "settings": {
            "servers": [
            {
                "email": "love@xray.com",
                "address": "1.2.3.4",
                "port": 34567,
                "method": "aes-256-gcm",
                "password": "password",
                "uot": true,
                "UoTVersion": 2,
                "level": 0
            }
            ]
        }
    },
    {
        "tag": "WARP",
        "protocol": "socks",
        "settings": {
            "servers": [
            {
                "address": "127.0.0.1",
                "port": 40000
            }
            ]
        }
    },
    {
        "tag": "WARP-socks5-v4",
        "protocol": "freedom",
        "settings": {
            "domainStrategy": "UseIPv4"
        },
        "proxySettings": {
            "tag": "WARP"
        }
    },
    {
        "tag": "WARP-socks5-v6",
        "protocol": "freedom",
        "settings": {
            "domainStrategy": "UseIPv6"
        },
        "proxySettings": {
            "tag": "WARP"
        }
    },
    {
        "tag": "blocked",
        "protocol": "blackhole",
        "settings": {}
    }
    ],
    "policy": {
        "levels": {
            "0": {
                "statsUserDownlink": true,
                "statsUserUplink": true
            }
        },
        "system": {
            "statsInboundDownlink": true,
            "statsInboundUplink": true,
            "statsOutboundDownlink": true,
            "statsOutboundUplink": true
        }
    },
    "routing": {
        "domainStrategy": "AsIs",
        "rules": [
        {
            "type": "field",
            "domain": [
            "geosite:dazn",
            "geosite:primevideo"
            ],
            "outboundTag": "IPv4_out"
        },
        {
            "type": "field",
            "domain": [
            "ai.com",
            "openai.com",
            "cdn.openai.com",
            "chat.openai.com",
            "pay.openai.com",
            "oaistatic.com",
            "oaiusercontent.com",
            "auth0.openai.com",
            "platform.openai.com",
            "ip.sb",
            "geosite:openai"
            ],
            "outboundTag": "SS"
        },
        {
            "type": "field",
            "domain": [
            "geosite:netflix",
            "geosite:disney",
            "geosite:ebay"
            ],
            "outboundTag": "WARP-socks5-v6"
        },
        {
            "type": "field",
            "inboundTag": [
            "api"
            ],
            "outboundTag": "api"
        },
        {
            "type": "field",
            "outboundTag": "blocked",
            "ip": [
            "geoip:private"
            ]
        },
        {
            "type": "field",
            "outboundTag": "blocked",
            "protocol": [
            "bittorrent"
            ]
        }
        ]
    },
    "stats": {}
}
