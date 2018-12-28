#!/bin/sh
projectname="DepCheck Action"

/dependency-check/bin/dependency-check.sh --update
/dependency-check/bin/dependency-check.sh --project $projectname --enableExperimental  --format JSON --scan /


#curl -i -H 'Authorization: token '$Github_Auth_Token''  -H "Content-Type: application/json" -X POST --data '{"title":"'"$name"'", "body":"'"$description"'"}' $Github_Repo_URL
