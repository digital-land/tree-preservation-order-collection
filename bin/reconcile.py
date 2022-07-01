#!/usr/bin/env python3

import requests

url = "https://www.digital-land.info/entity.json?dataset=tree&organisation_entity=192&limit=500"
while url:
    r = requests.get(url)
    data = r.json()
    url = data["links"].get("next", None)

    for e in data["entities"]:
        print(e["entity"], e["reference"])
