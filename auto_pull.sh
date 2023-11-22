#!/bin/bash
touch Pull_Hash.txt

Repo="/home/test/18.11/AUTOMATION"

cd $Repo

git fetch origin 

git pull origin main

commit_hash=$(git log)

echo $commit_hash >> Pull_Hash.txt

echo "Updated. Your commit hash $commit_hash"

