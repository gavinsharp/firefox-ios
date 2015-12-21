#!/usr/bin/env sh

FILES="Client/Configuration/BaseConfig.xcconfig
Client/Fennec.entitlements
Client/Fennec.entitlements
Client/Fennec.entitlements
Client/FennecAurora.entitlements
Client/FennecAurora.entitlements
Client/FennecNightly.entitlements
Client/FennecNightly.entitlements
Client/FennecNightly.entitlements
Client/Firefox.entitlements
Client/Firefox.entitlements
Client/Firefox.entitlements
Client.xcodeproj/project.pbxproj
Extensions/SendTo/Fennec.entitlements
Extensions/SendTo/Fennec.entitlements
Extensions/SendTo/FennecNightly.entitlements
Extensions/SendTo/FennecNightly.entitlements
Extensions/SendTo/Firefox.entitlements
Extensions/SendTo/Firefox.entitlements
Extensions/ShareTo/Fennec.entitlements
Extensions/ShareTo/Fennec.entitlements
Extensions/ShareTo/FennecNightly.entitlements
Extensions/ShareTo/FennecNightly.entitlements
Extensions/ShareTo/Firefox.entitlements
Extensions/ShareTo/Firefox.entitlements
Extensions/ViewLater/Fennec.entitlements
Extensions/ViewLater/Fennec.entitlements
Extensions/ViewLater/FennecAurora.entitlements
Extensions/ViewLater/FennecAurora.entitlements
Extensions/ViewLater/FennecNightly.entitlements
Extensions/ViewLater/FennecNightly.entitlements
Extensions/ViewLater/Firefox.entitlements
Extensions/ViewLater/Firefox.entitlements"

for file in $FILES
do
  if [ ! -f $file ]
  then
    continue
  fi

  echo Replacing bundle ID in $file
  sed -i '' -e 's/org.mozilla.ios/tld.$USER.ios/g' $file
done