#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#


# 修改版本号-webui
modelmark=R`TZ=UTC-8 date +%Y-%m-%d -d +"0"days`' by cfj521'
sed -i "s/DISTRIB_REVISION='R[0-9]*\.[0-9]*\.[0-9]*/DISTRIB_REVISION='$modelmark/g" ./package/lean/default-settings/files/zzz-default-settings

# Add OpenClash
git clone -b master https://github.com/vernesong/OpenClash.git package/OpenClash

# Add Onliner
git clone https://github.com/rufengsuixing/luci-app-onliner.git package/collected/luci-app-onliner

# # Add ADGuardHome
# # git clone https://github.com/rufengsuixing/luci-app-adguardhome package/luci-app-adguardhome
# svn co https://github.com/sirpdboy/sirpdboy-package/trunk/luci-app-adguardhome ./package/collected/luci-app-adguardhome
# chmod -R 755 ./package/collected/luci-app-adguardhome/*
# svn co https://github.com/sirpdboy/sirpdboy-package/trunk/adguardhome ./package/collected/adguardhome
# chmod -R 755 ./package/collected/adguardhome/*

# # Add GodProxy
# git clone https://github.com/godros/luci-app-godproxy.git package/collected/luci-app-godproxy
