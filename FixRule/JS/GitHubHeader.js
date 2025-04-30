// Rewrite-Header-Full.js

const modifiedHeaders = {
    "sec-ch-ua" : "\"Google Chrome\";v=\"135\", \"Not-A.Brand\";v=\"8\", \"Chromium\";v=\"135\"",
    "sec-ch-ua-mobile" : "?0",
    "sec-ch-ua-platform" : "\"macOS\"",
    "upgrade-insecure-requests" : "1",
    "user-agent" : "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36",
    "accept" : "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7",
    "sec-fetch-site" : "none",
    "sec-fetch-mode" : "navigate",
    "sec-fetch-user" : "?1",
    "sec-fetch-dest" : "document",
    "accept-encoding" : "gzip, deflate, br, zstd",
    "accept-language" : "en-US,en;q=0.9",
    "dnt" : "1",
    "sec-gpc" : "1",
    "if-none-match" : "W/\"81f8bfb2aa85aadad38013545a7efeeb9a99976aa1f993cd2c0c105c070dad1d\"",
    "priority" : "u=0, i"
};

$done({ headers: modifiedHeaders });
