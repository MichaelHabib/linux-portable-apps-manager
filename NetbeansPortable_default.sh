#!/bin/bash
filename=`basename "$0"`
filename_no_extension=$(echo $filename| cut -d'.' -f 1)
profile_name=$(echo $filename_no_extension| cut -d'_' -f 2)
profile_dir="$(dirname $0)/../PortableApps_UserData/NetBeansPortable/Data/Profiles/$profile_name"
app_dir="$(dirname $0)/../PortableApps/NetBeansPortable/App"
cache_dir="$(dirname $0)/../PortableApps_Cache/NetBeansPortable/Data/Profiles/$profile_name"
mkdir -p $profile_dir
mkdir -p $app_dir
mkdir -p $cache_dir
echo "filename_no_extension = ${filename_no_extension}"
echo "profile_name = $profile_name"
echo "profile_dir = $profile_dir"
echo "app_dir = $app_dir"
echo "cache_dir = $cache_dir"

echo ${app_dir}/bin/netbeans --userdir ${profile_dir} --cachedir ${cache_dir}
${app_dir}/bin/netbeans --userdir ${profile_dir} --cachedir ${cache_dir}
