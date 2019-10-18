#!/bin/bash

echo -n "Project name: "
read project

sed -i -E 's@("program": ")(.*)(",)@\1'"$project"'\/build\/'"$project"'\3@' .vscode/launch.json
sed -i -E 's@(TARGET_EXEC \?= )(.*)@\1'"$project"'@' Makefile
