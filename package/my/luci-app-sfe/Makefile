# Copyright (C) 2016 Openwrt.org
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-sfe
PKG_VERSION:=1.0
PKG_RELEASE:=12
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
	SECTION:=luci
	CATEGORY:=LuCI
	SUBMENU:=3. Applications
	TITLE:=LuCI support for Turbo ACC (SFE)
	PKGARCH:=all
	DEPENDS:=+kmod-fast-classifier +pdnsd-alt +kmod-tcp-bbr @LINUX_4_9
endef

define Package/$(PKG_NAME)/description
	LuCI support for Turbo ACC (SFE)
endef

define Build/Prepare
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/postinst
#!/bin/sh
rm -fr /tmp/luci-indexcache /tmp/luci-modulecache
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci
	cp -pR ./luasrc/* $(1)/usr/lib/lua/luci
	$(INSTALL_DIR) $(1)/
	cp -pR ./root/* $(1)/
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/i18n
	po2lmo ./po/zh-cn/sfe.po $(1)/usr/lib/lua/luci/i18n/sfe.zh-cn.lmo
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
