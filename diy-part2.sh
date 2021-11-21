#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate

# 取消Lean大登陆密码
#sed -i 's/^\(.*99999\)/#&/' package/lean/default-settings/files/zzz-default-settings

# 拉取luci-app-speederv2插件
#git clone https://github.com/halldong/luci-app-speederv2.git package/luci-app-speederv2

# 拉取openwrt-passwall插件
git clone https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall

# 拉取sensecluci-app-udp2raw-control插件
git clone https://github.com/sensec/openwrt-udp2raw.git package/openwrt-udp2raw

# 拉取sensecluci-app-udp2raw插件
git clone https://github.com/sensec/luci-app-udp2raw.git package/luci-app-udp2raw

#添加smartdns
svn co https://github.com/garypang13/openwrt-packages/trunk/smartdns-le package/smartdns-le
#svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-smartdns package/luci-app-smartdns
svn co https://github.com/kenzok8/openwrt-packages/branches/main/luci-app-smartdns package/luci-app-smartdns
#sed -i 's/PKG_VERSION:=.*/PKG_VERSION:=1.2021.34/' feeds/packages/net/smartdns/Makefile
#sed -i 's/PKG_SOURCE_VERSION:=.*/PKG_SOURCE_VERSION:=756029f5e9879075c042030bd3aa3db06d700270/' feeds/packages/net/smartdns/Makefile
#sed -i 's/PKG_MIRROR_HASH:=.*/PKG_MIRROR_HASH:=c2979d956127946861977781beb3323ad9a614ae55014bc99ad39beb7a27d481/' feeds/packages/net/smartdns/Makefile

./scripts/feeds update -a
./scripts/feeds install -a
