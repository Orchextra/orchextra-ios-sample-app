# Orchextra iOS-sample-App

The aim of this project is to help you with your first integration of Orchextra SDK and also to show you the capabilities of the SDK with a sample project. 

## Features

1. Scanner a QR / Barcode 
2. Image Recognition - You need a [Vuforia][vuforia] Account.
3. List all your geofences in a map
⋅⋅* Click on the geofence point to get more information
4. List all your beacons 
⋅⋅* Click on the beacon to get more information

## Getting started

First of all, you need to create a project in [Orchextra dashboard][dashboard]. Go to "Setting" > "SDK Configuration" to get the **api key** and **api secret**, you need to replace these values into AppDelegate.m 
```objective-c
#define ORCHEXTRA_API_KEY @"YOUR_API_KEY"
#define ORCHEXTRA_API_SECRET @"YOUR_API_SECRET"
```

## Project Overview

<img src="https://github.com/Orchextra/orchextra-ios-demo-app/blob/master/Resources/Geofences.png" width="300">
<img src="https://github.com/Orchextra/orchextra-ios-demo-app/blob/master/Resources/Beacons.png" width="300">

[dashboard]: https://dashboard.orchextra.io/home/
[vuforia]: https://developer.vuforia.com/
