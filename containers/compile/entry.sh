#!/bin/sh

rm -r /opt/etc/TrinityCore/build
mkdir -p /opt/etc/TrinityCore/build

cd /opt/etc/TrinityCore

git pull

cd build
cmake ../ -DCMAKE_INSTALL_PREFIX=/opt/server -DTOOLS=0 -DWITH_WARNINGS=0

make clean
make -j $(nproc) install

echo "Done"
