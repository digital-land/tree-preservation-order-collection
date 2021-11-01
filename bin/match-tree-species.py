#!/usr/bin/env python3

import os
import csv
import requests
from pathlib import Path
from urllib.parse import urlparse, parse_qs

debug = False

name_title = {
}


def api(params):
    response = requests.get("https://en.wikipedia.org/w/api.php", params)
    if debug:
        print("get:", response.request.url)
        print("json:", response.json())
    return response.json()


def wikidata(titles=""):
    j = api(
        {
            "action": "query",
            "titles": titles,
            "prop": "pageprops",
            "ppprop": "wikibase_item",
            "redirects": "max",
            "format": "json",
        }
    )
    for page, p in j["query"]["pages"].items():
        if "missing" in p:
            return ""
        return p["pageprops"]["wikibase_item"]


w = csv.DictWriter(
    open("x.csv", "w"),
    fieldnames=[
        "entity",
        "tree-species",
        "wikidata",
        "name",
        "latin-name",
        "wikipedia",
    ],
    extrasaction="ignore",
)
w.writeheader()


for row in csv.DictReader(open("data/tree-species.csv")):
    for name in [row["wikipedia"], row["name"], row["latin-name"]]:
        if not name:
            continue

        if not row["tree-species"]:
            row["tree-species"] = row["entity"]

        if not row["wikidata"]:
            print("looking up", name)

            name = name.replace(" ", "_")
            row["wikidata"] = wikidata(name)
            if row["wikidata"] and not row["wikipedia"]:
                row["wikipedia"] = name.replace(" ", "_")


    w.writerow(row)
