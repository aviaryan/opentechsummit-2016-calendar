#!/bin/bash
#this script triggers the travis build for this repo
body='{
"request": {
  "branch":"master"
}}'
# see https://docs.travis-ci.com/user/triggering-builds for the travis_token

curl -s -X POST \
  -H "Content-Type: application/json" \
  -H "Accept: application/json" \
  -H "Travis-API-Version: 3" \
  -H "Authorization: token $travis_token" \
  -d "$body" \
  https://api.travis-ci.org/repo/aviaryan%2Fopentechsummit-2016-calendar/requests
