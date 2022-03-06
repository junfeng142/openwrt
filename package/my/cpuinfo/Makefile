#
# Copyright (C) 2010-2011 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=cpuinfo
PKG_VERSION:=1
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  TITLE:=Display CPU INFO for SOC
  MAINTAINER:=javonca
  DEPENDS:=
  VARIANT:=
endef

define Package/$(PKG_NAME)/description
  Display CPU INFO for SOC.
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/etc
	cp -pR ./files/* $(1)/etc
	$(INSTALL_DIR) $(1)/etc/uci-defaults
	$(INSTALL_BIN) ./uci-defaults/089-cover-default $(1)/etc/uci-defaults/089-cover-default
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
