#!/bin/sh
projectname="DepCheck Action"

/dependency-check/bin/dependency-check.sh --update
/dependency-check/bin/dependency-check.sh --project $projectname --enableExperimental  --format JSON --format VULN --scan /


ls -l

description=$(cat *.json)

curl -i -H 'Authorization: token '$GITHUB_TOKEN''  -H "Content-Type: application/json" -X POST --data '{"title":"'"Report Vuln"'", "body":"'"$description"'"}' https://api.github.com/repos/jgamblin/DepCheck-Action/issues
