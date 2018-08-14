#!/bin/bash
filename=`basename "$0"`
filename_no_extension=$(echo $filename| cut -d'.' -f 1)
profile_name=$(echo $filename_no_extension| cut -d'_' -f 2)
userdir="$(dirname $0)/../PortableApps_UserData/Thunderbird/Data/Profiles/$profile_name"
mkdir -p $userdir
echo $filename_no_extension
echo $profile_name
$(dirname $0)/../PortableApps/Thunderbird/App/thunderbird --profile $userdir
