#!/bin/bash

rm archrepo*

echo "repo-add"
repo-add -s -n -R archrepo.db.tar.zst *.pkg.tar.zst

sleep 1

rm archrepo.db
rm archrepo.db.sig

rm archrepo.files
rm archrepo.files.sig

cp -p archrepo.db.tar.zst archrepo.db
cp -p archrepo.db.tar.zst.sig archrepo.db.sig

cp -p archrepo.files.tar.zst archrepo.files
cp -p archrepo.files.tar.zst.sig archrepo.files.sig

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
