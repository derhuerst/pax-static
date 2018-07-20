#!/bin/sh
set +e

package='pax-static-'$1

cp bin/pax packages/$package/pax

cd packages/$package
npm version --no-git-tag-version --force $(npx semver -- -i minor $(npm info $package version))
echo "//registry.npmjs.org/:_authToken=$NPM_KEY" >~/.npmrc
npm publish
