#!/bin/bash

echo -n "Project name: "
read project

scriptDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

sed -i -E 's@("program": ")(.*)(",)@\1'"$scriptDir"'\/build\/'"$project"'\3@' .vscode/launch.json
sed -i -E 's@(TARGET_EXEC \?= )(.*)@\1'"$project"'@' Makefile
