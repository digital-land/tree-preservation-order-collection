#!/usr/bin/env python3

import csv
import json
import canonicaljson
from glob import glob
from digital_land.plugins.wfs import get as wfs_get
from digital_land.collect import Collector

# tidy up a collection with a runaway WFS endpoint

endpoints = {}
resources = {}


def save_log(path, log):
    data = canonicaljson.encode_canonical_json(log)
    with open(path, "wb") as f:
        f.write(data)


for row in csv.DictReader(open("collection/endpoint.csv")):
    if row["plugin"] == "wfs":
        endpoints[row["endpoint"]] = []

for row in csv.DictReader(open("collection/resource.csv")):
    for endpoint in row["endpoints"].split(";"):
        if endpoint in endpoints:
            resource = row["resource"]
            endpoints[endpoint].append(row["resource"])
            resources.setdefault(resource, {})
            resources[resource].setdefault("endpoints", [])
            resources[resource]["endpoints"].append(endpoint)


collector = Collector()

for resource, r in resources.items():
    log, content = wfs_get(collector, url=f"file:///collection/resource/{resource}")
    new_resource =  collector.save_content(content)
    if resource != new_resource:
        for endpoint in r["endpoints"]:
            for path in glob(f"collection/log/*/{endpoint}.json"):
                log = json.load(open(path))
                if log.get("resource", "") == resource:
                    print(log)
                    log["resource"] = new_resource
                    save_log(path=path, log=log)
