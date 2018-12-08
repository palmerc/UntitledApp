#!/usr/bin/env python3

import sys
import plistlib

app_name = 'Untitled'
bundle_id = 'com.cameronpalmer.Untitled'
binary_name = 'main'

plist = {
    'CFBundleDevelopmentRegion': 'en',
    'CFBundleDisplayName': app_name,
    'CFBundleExecutable': binary_name,
    'CFBundleIdentifier': bundle_id,
    'CFBundleInfoDictionaryVersion': '6.0',
    'CFBundleName': 'Untitled',
    'CFBundlePackageType': 'APPL',
    'CFBundleShortVersionString': '1.0.0',
    'CFBundleSignature': '????',
    'CFBundleVersion': '1',
    'LSRequiresIPhoneOS': True,
    'UISupportedInterfaceOrientations': ['UIInterfaceOrientationPortrait', 'UIInterfaceOrientationPortraitUpsideDown', 'UIInterfaceOrientationLandscapeLeft', 'UIInterfaceOrientationLandscapeRight']
}


def main():
    if len(sys.argv) > 1:
        plist_name = sys.argv[1]
    else:
        plist_name = 'Info.plist'

    with open(plist_name, 'wb') as f:
        plistlib.dump(plist, f)


if __name__ == "__main__":
    main()
