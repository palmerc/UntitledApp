#!/bin/bash


APP_ID=com.cameronpalmer.Untitled
DEVICE_ID=

xcrun simctl boot ${DEVICE_ID}
open $(xcode-select --print-path)/Applications/Simulator.app/
xcrun simctl install ${DEVICE_ID} ./Untitled.app
xcrun simctl launch --console ${DEVICE_ID} ${APP_ID}
