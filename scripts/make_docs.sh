#!/bin/sh
dest=generated/static/docs
"$(yarn bin)/typedoc" --entryPointStrategy expand --skipErrorChecking --exclude "src/**/?(test_utils|*.test).ts"  --out $dest src
#"$(yarn bin)/typedoc" --entryPointStrategy expand --skipErrorChecking --theme src/static/typedoc/ --exclude "src/**/?(test_utils|*.test).ts"  --out $dest src
cp -r $dest build/static/
