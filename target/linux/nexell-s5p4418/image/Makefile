#
# Copyright (C) 2013 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/image.mk

define Image/BuildKernel
	$(foreach k,$(filter zImage Image,$(KERNELNAME)), \
		cp $(KDIR)/$(k) $(BIN_DIR)/$(IMG_PREFIX)-$(k) \
	)
endef

define Image/Build
	$(call Image/Build/$(1))
	dd if=$(KDIR)/root.$(1) bs=128k conv=sync | \
		gzip -9n >$(BIN_DIR)/$(IMG_PREFIX)-root.$(1).gz
endef

$(eval $(call BuildImage))
