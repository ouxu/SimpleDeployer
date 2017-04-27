#!/bin/zsh

cd /usr/share/nginx/html/node/oj
git pull
yarn
npm run build
gulp
rm -rf /usr/share/nginx/html/oj/*
cp -R /usr/share/nginx/html/node/oj/dist/build/* /usr/share/nginx/html/oj/
