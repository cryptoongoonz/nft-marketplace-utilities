#!/bin/bash

contractAddress=0x0322f6f11a94cfb1b5b6e95e059d8deb2bf17d6a

for tokenId in {1..6969}
do
  curl 'https://api.looksrare.org/graphql' \
    -H 'authority: api.looksrare.org' \
    -H 'sec-ch-ua: " Not A;Brand";v="99", "Chromium";v="96", "Google Chrome";v="96"' \
    -H 'sec-ch-ua-mobile: ?0' \
    -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36' \
    -H 'sec-ch-ua-platform: "macOS"' \
    -H 'content-type: application/json' \
    -H 'accept: */*' \
    -H 'origin: https://looksrare.org' \
    -H 'sec-fetch-site: same-site' \
    -H 'sec-fetch-mode: cors' \
    -H 'sec-fetch-dest: empty' \
    -H 'referer: https://looksrare.org/' \
    -H 'accept-language: en-US,en;q=0.9' \
    --data $'{"query":"\\n    mutation Mutation($tokenId: String\u0021, $collection: Address\u0021) {\\n      refreshToken(tokenId: $tokenId, collection: $collection) {\\n        success\\n        message\\n      }\\n    }\\n  ","variables":{"tokenId":"'"$tokenId"'","collection":"'"$contractAddress"'"}}' \
    --compressed
  echo "refreshed token id ${tokenId} on looksrare"
  sleep 1
done
