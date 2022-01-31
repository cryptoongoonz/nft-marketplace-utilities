#!/bin/bash
contractAddress=0x0322f6f11a94cfb1b5b6e95e059d8deb2bf17d6a

colonEscaped=%3A
for tokenId in {1..6969}
do
  curl "https://api-mainnet.rarible.com/marketplace/api/v4/items/${contractAddress}${colonEscaped}${tokenId}/meta/refresh" \
      -X 'POST' \
      -H 'authority: api-mainnet.rarible.com' \
      -H 'content-length: 0' \
      -H 'sec-ch-ua: " Not A;Brand";v="99", "Chromium";v="96", "Google Chrome";v="96"' \
      -H 'x-fingerprint: 9cbad8566c2c5c9098a7abb962edf824' \
      -H 'sec-ch-ua-mobile: ?0' \
      -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36' \
      -H 'sec-ch-ua-platform: "macOS"' \
      -H 'accept: */*' \
      -H 'origin: https://rarible.com' \
      -H 'sec-fetch-site: same-site' \
      -H 'sec-fetch-mode: cors' \
      -H 'sec-fetch-dest: empty' \
      -H 'referer: https://rarible.com/' \
      -H 'accept-language: en-US,en;q=0.9' \
      --compressed
  echo "refreshed token id ${tokenId} on rarible"
done
