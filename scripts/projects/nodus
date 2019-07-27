#!/bin/sh

REPO_BASE="https://bitbucket.org/bradserbu/"

sudo mkdir /NODUS

git clone $REPO_BASE/nodus-web-api /NODUS/nodus-web-api
git clone $REPO_BASE/nodus-web-ui /NODUS/nodus-web-ui
git clone $REPO_BASE/nodus-cluster /NODUS/nodus-cluster-providers
git clone $REPO_BASE/nodus-cli /NODUS/nodus-cli

cd /NODUS/nodus-web-api
npm i

cd /NODUS/nodus-web-ui
npm i

cd /NODUS/nodus-cluster-providers
npm i

cd /NODUS/nodus-cli
npm i

