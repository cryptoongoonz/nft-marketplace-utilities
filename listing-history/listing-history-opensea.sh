apiKey=$1
for i in {1..6969}; do
  printf "${i},"
  curl -s "https://api.opensea.io/wyvern/v1/orders?asset_contract_address=0x0322f6f11a94cfb1b5b6e95e059d8deb2bf17d6a&bundled=false&include_bundled=false&token_id=${i}&side=1&limit=20&offset=0&order_by=created_date&order_direction=desc" --header 'Accept: application/json' --header "X-API-KEY: ${apiKey}"  | jq -r '.orders[0] | "\(.maker.address),\(.created_date),\(.cancelled)"'
  sleep 1;
done
