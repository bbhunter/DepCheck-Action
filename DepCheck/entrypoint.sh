#!/bin/sh
projectname="DepCheck Action"

bundle-audit update

/dependency-check/bin/dependency-check.sh --update
/dependency-check/bin/dependency-check.sh --project $projectname --scan /
/dependency-check/bin/dependency-check.sh --project $projectname --failOnCVSS 7 --scan /
