#!/bin/sh
projectname="DepCheck Action"

bundle-audit update

/dependency-check/bin/dependency-check.sh --update --project $projectname --scan /
