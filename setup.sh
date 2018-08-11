#!/bin/bash

echo -n "Project name: "
read project

scriptDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

sed -i -E 's@("program": ")(.*)(",)@\1/mnt/c/dev/github/vscode-cpp-template/build'"$project"'.out\3@' .vscode/launch.json
sed -i -E 's@("cwd": ")(.*)(",)@\1'"$scriptDir"'\3@' .vscode/launch.json
sed -i -E 's@(TARGET_EXEC \?= )(.*)@\1'"$project"'@' Makefile
