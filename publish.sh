#!/bin/sh
set +e

package='pax-static-'$1
echo "publishing $package to npm"

cp bin/pax packages/$package/pax

cd packages/$package
echo "//registry.npmjs.org/:_authToken=$NPM_KEY" >~/.npmrc
npm publish
