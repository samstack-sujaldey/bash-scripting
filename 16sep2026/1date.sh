#!/bin/bash

echo "##### ISO-8601 #####"
date -I

echo

echo "##### RFC-3339 #####"
date --rfc-3339=date

echo

echo "##### Epoch #####"
date +%s

echo

echo "##### Human-Readable #####"
date

echo

echo "##### Ordinal #####"
date +%Y_%j
