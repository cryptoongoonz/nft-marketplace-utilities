import requests
import time

# change the address here to be your desired NFT
url = "https://api.opensea.io/asset/0x0322f6f11a94cfb1b5b6e95e059d8deb2bf17d6a/"
update_flag = "?force_update=true"

ids = [ i for i in range(1, 6968, 1)]

for i in ids:
  req_url = url + str(i) + update_flag
  r = requests.get(req_url)
  print(i, r.status_code)
  time.sleep(0.3)
