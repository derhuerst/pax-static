#!/bin/sh
set +e

package='pax-static-'$1

cp bin/pax packages/$package/pax

cd packages/$package
npm i semver --no-save
npm version --no-git-tag-version --force $(../../node_modules/.bin/semver -i minor $(npm info $package version))
echo "//registry.npmjs.org/:_authToken=$NPM_KEY" >~/.npmrc
npm publish
