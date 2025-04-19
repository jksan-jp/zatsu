#!/bin/bash
set -e
mongoimport \
--host mongodb \
--db students \
--collection profiles \
--type csv \
--file /data/initial.csv \
--headerline \
--upsert \
--jsonArray
