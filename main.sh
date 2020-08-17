#!/bin/bash

token=$BILIBILI_TOKEN
resp=$(curl -s -H "Content-Type: application/x-www-form-urlencoded" https://manga.bilibili.com/twirp/activity.v1.Activity/ClockIn -d "access_key=${token}&platform=ios")

echo $resp
