#!/bin/sh
projectname="DepCheck Action"

bundle-audit update

/dependency-check/bin/dependency-check.sh --failOnCVSS 7 --project $projectname --scan /
