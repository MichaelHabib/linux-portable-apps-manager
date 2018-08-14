#!/bin/sh
#../PortableApps/NetbeansPortable/netbeans/bin/netbeans --userdir ../PortableApps/NetbeansPortable/Profiles/DevProfile --cachedir ../PortableApps/NetbeansPortable/Profiles/DevProfile-cachedir

$(dirname $0)/../PortableApps/NetBeansPortable/App/bin/netbeans --userdir $(dirname $0)/../PortableApps_UserData/NetBeansPortable/Data/Profiles/DevProfile --cachedir $(dirname $0)/../PortableApps_Cache/NetBeansPortable/Data/Cache/DevProfile
