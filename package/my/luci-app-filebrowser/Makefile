# Copyright (C) 2018-2019 Lienol
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-filebrowser
PKG_VERSION:=v2.0.0
PKG_RELEASE:=17
PKG_MAINTAINER:=<https://github.com/filebrowser/filebrowser>
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)
PKG_LICENSE:=GPLv3
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
	SECTION:=luci
	CATEGORY:=LuCI
	SUBMENU:=3. Applications
	TITLE:=LuCI support for Filebrowser
	PKGARCH:=all
	DEPENDS:=
endef

define Package/$(PKG_NAME)/description
	LuCI support for Filebrowser
endef

# 禁止OpenWrt对二进制文件进行strip
STRIP:=true

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
	po2lmo ./po/zh-cn/filebrowser.po $(1)/usr/lib/lua/luci/i18n/filebrowser.zh-cn.lmo
	$(INSTALL_DIR) $(1)/usr/bin
ifeq ($(ARCH),aarch64)
	$(INSTALL_BIN) ./bin/arm64 $(1)/usr/bin/filebrowser
endif
ifeq ($(ARCH),mipsel)
	$(INSTALL_BIN) ./bin/mipsel $(1)/usr/bin/filebrowser
endif
ifeq ($(ARCH),mips)
	$(INSTALL_BIN) ./bin/mips $(1)/usr/bin/filebrowser
endif
ifeq ($(ARCH),i386)
	$(INSTALL_BIN) ./bin/i386 $(1)/usr/bin/filebrowser
endif
ifeq ($(ARCH),x86_64)
	$(INSTALL_BIN) ./bin/x86_64 $(1)/usr/bin/filebrowser
endif
ifeq ($(ARCH),arm)
ifeq ($(BOARD),bcm53xx)
	$(INSTALL_BIN) ./bin/armv5 $(1)/usr/bin/filebrowser
else ifeq ($(BOARD),kirkwood)
	$(INSTALL_BIN) ./bin/armv5 $(1)/usr/bin/filebrowser
else
	$(INSTALL_BIN) ./bin/armv7 $(1)/usr/bin/filebrowser
endif
endif
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
