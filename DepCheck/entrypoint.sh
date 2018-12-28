#!/bin/sh
projectname="DepCheck Action"

bundle-audit update

/dependency-check/bin/dependency-check.sh --update
/dependency-check/bin/dependency-check.sh --project $projectname --format VULN --scan /
/dependency-check/bin/dependency-check.sh --project $projectname --format VULN --failOnCVSS 7 --scan /
