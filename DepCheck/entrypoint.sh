#!/bin/sh
projectname="DepCheck Action"

/dependency-check/bin/dependency-check.sh --update
/dependency-check/bin/dependency-check.sh --project $projectname --format VULN --failOnCVSS 7 --scan /


#curl -i -H 'Authorization: token '$GITHUB_TOKEN''  -H "Content-Type: application/json" -X POST --data '{"title":"'"Report Vuln"'", "body":"'"$description"'"}' https://api.github.com/repos/jgamblin/DepCheck-Action/issues
