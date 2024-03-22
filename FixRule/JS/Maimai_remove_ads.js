// 引用地址
// https://raw.githubusercontent.com/hyxus/hyxus/rules/FixRule/JS/Maimai_remove_ads.js
// 2023-10-27 17:25

const url = $request.url;
if (!$response.body) $done({});
let obj = JSON.parse($response.body);

if (url.includes("/maimai/adshow")) {
    
    // 开屏广告
    if (obj?.cache_data) {
        delete obj.cache_data;
    }
    
    if (obj?.ad_list) {
        delete obj.ad_list;
    }
}

$done({ body: JSON.stringify(obj) });
