#!/usr/bin/env bash
# This script imports data from another project where the data was collected

calkit import dataset petebachant/strava-analysis/data/activities \
    --filter-paths data/activities/13603843467.json \
    --filter-paths data/activities/13567304693.json \
    --no-commit --overwrite

calkit import dataset petebachant/strava-analysis/data/timeseries \
    --filter-paths "data/timeseries/activity_id=13603843467/*" \
    --filter-paths "data/timeseries/activity_id=13567304693/*" \
    --no-commit --overwrite
