#!/bin/bash
contractAddress=0x0322f6f11a94cfb1b5b6e95e059d8deb2bf17d6a

colonEscaped=%3A
for tokenId in {1..6969}
do
  curl "https://rarible.com/marketplace/api/v4/items/${contractAddress}${colonEscaped}${tokenId}/meta/refresh" \
  -X 'POST' \
  -H 'authority: rarible.com' \
  -H 'accept: */*' \
  -H 'accept-language: en-US,en;q=0.9' \
  -H 'content-length: 0' \
  -H 'cookie: _gcl_au=1.1.1067914706.1655140948; _scid=d19f3bb9-946a-4469-8d40-a62c1553db62; _fbp=fb.1.1655140948228.688868376; _rdt_uuid=1655140949221.f879c097-fa58-40b2-995c-020146b5db6e; _uetsid=3d72a3f0fef411eca2685d312d48f7d7; _uetvid=66d29cc0eb3d11ecad499d3f0e1feeca; _ga=GA1.1.1186309935.1655140948; __kla_id=eyIkcmVmZXJyZXIiOnsidHMiOjE2NTUxNDA5NDgsInZhbHVlIjoiIiwiZmlyc3RfcGFnZSI6Imh0dHBzOi8vcmFyaWJsZS5jb20vIn0sIiRsYXN0X3JlZmVycmVyIjp7InRzIjoxNjU3MzA4NTUwLCJ2YWx1ZSI6IiIsImZpcnN0X3BhZ2UiOiJodHRwczovL3JhcmlibGUuY29tLyJ9fQ==; _hjSessionUser_2596294=eyJpZCI6ImZhY2I5Y2UwLTI5ZjktNWUyNi1iN2ZjLTQ4YmJlZGNkZDliYyIsImNyZWF0ZWQiOjE2NTUxNDA5NDg0NDAsImV4aXN0aW5nIjp0cnVlfQ==; _hjIncludedInSessionSample=0; _hjSession_2596294=eyJpZCI6ImRhN2IyZTllLTg4MmMtNGQ2My1iNjQwLTVkMDliZmU3NGI3ZCIsImNyZWF0ZWQiOjE2NTczMDg1NTAwODEsImluU2FtcGxlIjpmYWxzZX0=; _hjAbsoluteSessionInProgress=0; _sctr=1|1657252800000; RSESSIONID=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhZGRyZXNzIjoiMHgxOWQzODYwMGU5OTEyZmZiYmRjMDAwN2M3ZWQ4MjdiMzdiZmVmM2ZmIiwiY3NyZlRva2VuIjoiZWIxZDEzZjUtMzQyNS00ZDM2LTlhZjAtNGNiMzY3YjU2NzljIiwiaXNzIjoiYXV0aDAiLCJleHAiOjE2NTc5MTMzNzB9.Sv71cwOAl6eZU4Dd5-C_lHrPDC13vKMZ8uhXSi_m0Mo; XSRF-TOKEN=eb1d13f5-3425-4d36-9af0-4cb367b5679c; amp_150c42=YhJkZz7NMY7GLb0uBq7__b.NzI5N2ExMWVlMGE4YjM2ODk4NDlmNmIwMzVhYjY0ZmQ=..1g7fkj4il.1g7fkkho2.d.6.j; _ga_QPJ7KC6DS2=GS1.1.1657308549.2.1.1657308732.60' \
  -H 'origin: https://rarible.com' \
  -H 'referer: https://rarible.com/cryptoongoonz/items' \
  -H 'sec-ch-ua: " Not A;Brand";v="99", "Chromium";v="102", "Google Chrome";v="102"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "macOS"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-origin' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36' \
  -H 'x-fingerprint: 7297a11ee0a8b3689849f6b035ab64fd' \
  -H 'x-visitor-address: 0x19d38600e9912ffbbdc0007c7ed827b37bfef3ff' \
  --compressed
  echo "refreshed token id ${tokenId} on rarible"
  sleep 2
done
