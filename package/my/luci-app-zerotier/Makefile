#
# Copyright (C) 2008-2014 The LuCI Team <luci@lists.subsignal.org>
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-zerotier
PKG_VERSION:=1.0
PKG_RELEASE:=18
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
	SECTION:=luci
	CATEGORY:=LuCI
	SUBMENU:=3. Applications
	TITLE:=LuCI support for Zerotier
	PKGARCH:=all
	DEPENDS:=+zerotier
endef

define Package/$(PKG_NAME)/description
	LuCI support for Zerotier
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
	po2lmo ./po/zh-cn/zerotier.po $(1)/usr/lib/lua/luci/i18n/zerotier.zh-cn.lmo
endef

$(eval $(call BuildPackage,$(PKG_NAME)))

