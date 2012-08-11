#!/bin/sh

curl -X POST http://mantisbt-1.2.11/api/rest/mc_issue_add -d "summary=test issue" -d "description=Description of test issue" -d "project=1" -d "category=cat1" -d "username=userapi" -d "password=pass"
