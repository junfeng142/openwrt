#
# Copyright (C) 2010-2011 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=luci2-default
PKG_VERSION:=1
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  TITLE:=luci2 default chinese
  MAINTAINER:=javonca
  DEPENDS:=+@LUCI_LANG_zh_Hans
  VARIANT:=
endef

define Package/$(PKG_NAME)/description
  luci2 default chinese.
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/etc
	cp -pR ./files/* $(1)/etc
	$(INSTALL_DIR) $(1)/etc/uci-defaults
	$(INSTALL_BIN) ./uci-defaults/088-cover-default $(1)/etc/uci-defaults/088-cover-default
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
