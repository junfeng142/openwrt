#
# Copyright (C) 2013 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/image.mk

define Image/Build/Initramfs
	$(CP) $(KERNEL_BUILD_DIR)/*image $(BIN_DIR)/*image
	$(CP) $(KERNEL_BUILD_DIR)/*dtb $(BIN_DIR)/$(IMG_PREFIX)-dtb
    $(CP) $(KERNEL_BUILD_DIR)/rootfs.* $(BIN_DIR)/rootfs.*
endef

$(eval $(call BuildImage))
