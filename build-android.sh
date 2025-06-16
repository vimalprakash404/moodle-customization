#!/bin/sh

echo "Installing dependencies..."
npm install

echo "Installing Ionic CLI..."
npm uninstall -g ionic || true
npm install -g @ionic/cli

echo "Preparing Android platform..."
ionic cordova platform rm android || true
ionic cordova platform add android

echo "Building Android APK and AAB..."
ionic cordova build android --release -- --packageType=bundle
ionic cordova build android --release
