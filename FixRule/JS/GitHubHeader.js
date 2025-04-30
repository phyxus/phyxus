// Rewrite-Header-Full.js
let modifiedHeaders = $request.headers

modifiedHeaders["user-agent"] = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36";
modifiedHeaders["accept-language"] = "en-US,en;q=0.9"

$done({ headers: modifiedHeaders });
