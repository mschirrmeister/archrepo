#!/bin/bash

rm msc.*

echo "repo-add"
repo-add -s -n -R msc.db.tar.zst *.pkg.tar.zst

sleep 1

rm msc.db
rm msc.db.sig

rm msc.files
rm msc.files.sig

cp -p msc.db.tar.zst msc.db
cp -p msc.db.tar.zst.sig msc.db.sig

cp -p msc.files.tar.zst msc.files
cp -p msc.files.tar.zst.sig msc.files.sig

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
