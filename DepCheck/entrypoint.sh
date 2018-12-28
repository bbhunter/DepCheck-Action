#!/bin/sh
projectname="DepCheck Action"

/dependency-check/bin/dependency-check.sh --update
/dependency-check/bin/dependency-check.sh --project $projectname --enableExperimental  --format CSV --format VULN --scan /


ls -l

cat *.csv > temp.csv
awk '!x[$0]++' temp.csv > temp2.csv
cut -d',' -f1-4,6- temp2.csv > githubvulns.csv
cat githubvulns.csv

description=$(cat githubvulns.csv)

curl -i -H 'Authorization: token '$GITHUB_TOKEN''  -H "Content-Type: application/json" -X POST --data '{"title":"'"Report Vuln"'", "body":"'"$description"'"}' https://api.github.com/repos/jgamblin/DepCheck-Action/issues
