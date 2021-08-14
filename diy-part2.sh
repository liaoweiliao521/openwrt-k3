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

# 拉取sensecluci-app-udp2raw插件
git clone https://github.com/sensec/luci-app-udp2raw.git package/luci-app-udp2raw

# 拉取sensecluci-app-udp2raw-control插件
git clone https://github.com/sensec/openwrt-udp2raw.git package/openwrt-udp2raw

# 拉取openwrt-passwall插件
git clone https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall

# 拉取luci-app-speederv2插件
git clone https://github.com/halldong/luci-app-speederv2.git package/luci-app-speederv2

# 拉取openwrt-udpspeeder插件
git clone https://github.com/pexcn/openwrt-udpspeeder.git package/openwrt-udpspeeder
