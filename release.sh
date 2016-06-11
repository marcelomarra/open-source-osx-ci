#!/bin/sh
export APP_NAME="open-source-osx-ci"
export 'DEVELOPER_NAME="iPhone Developer: Roberto  Paldês (RV9KVT9336)"'
export PROFILE_NAME="open-source-osx-ci"
export HOCKEY_APP_ID=5667f966114347fb99e9330d6097fefb
export HOCKEY_APP_TOKEN=1d47a026f9fb46dc9706ae5b8403d46b
openssl aes-256-cbc -k "$ENCRYPTION_SECRET" -in scripts/profile/$APP_NAME.mobileprovision.enc -d -a -out scripts/profile/$APP_NAME.mobileprovision
openssl aes-256-cbc -k "$ENCRYPTION_SECRET" -in scripts/certs/dist.cer.enc -d -a -out scripts/certs/dist.cer
openssl aes-256-cbc -k "$ENCRYPTION_SECRET" -in scripts/certs/dist.p12.enc -d -a -out scripts/certs/dist.p12
./scripts/add-key.sh
./scripts/xcbuild-safe.sh -project $APP_NAME.xcodeproj -scheme "$APP_NAME" -configuration Release OBJROOT=$PWD/build SYMROOT=$PWD/build ONLY_ACTIVE_ARCH=NO
./scripts/sign-and-upload.sh
./scripts/remove-key.sh