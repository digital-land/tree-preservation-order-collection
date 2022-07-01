#!/usr/bin/env python3

import csv

entities = {
    "tree-preservation-zone": 19100000,
    "tree-preservation-order": 7001000000,
    "tree": 7002000000,
}

fieldnames = [ "prefix","resource", "entry-number", "organisation","reference","entity" ]

w = csv.DictWriter(open("/tmp/lookup.csv", "w", newline=""), fieldnames=fieldnames)
w.writeheader()

for row in csv.DictReader(open("pipeline/lookup.csv")):

    prefix = row["prefix"]
    row["entity"] = entities[prefix]
    w.writerow(row)

    entities[prefix] += 1
