#!/bin/sh

rm -r build && mkdir -p build
npm run gen-parser
npm run gen-script
cp package.json README.md build
