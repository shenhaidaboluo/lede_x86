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
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

git clone https://github.com/openwrt/packages.git packages_github
cd packages_github && git reset --hard 7dc1f3e0293588ebc544e8eee104043dd0dacaf5 && cd ..
rm -rf feed/packages/lang/golang && cp -r packages_github/lang/golang feed/packages/lang/
