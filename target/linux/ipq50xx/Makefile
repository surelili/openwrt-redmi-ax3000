include $(TOPDIR)/rules.mk

ARCH:=arm
BOARD:=ipq50xx
BOARDNAME:=Qualcomm Atheros IPQ50XX
FEATURES:=squashfs fpu ramdisk nand
CPU_TYPE:=cortex-a53
SUBTARGETS:=generic

KERNEL_PATCHVER:=5.4
KERNEL_TESTING_PATCHVER:=5.4

KERNELNAME:=zImage Image dtbs

include $(INCLUDE_DIR)/target.mk
DEFAULT_PACKAGES += \
	uboot-envtools \
	kmod-leds-gpio kmod-gpio-button-hotplug swconfig \
	kmod-ath10k-ct wpad-basic-wolfssl \
	kmod-usb3 kmod-usb-dwc3 ath10k-firmware-qca4019-ct

$(eval $(call BuildTarget))


# include $(TOPDIR)/rules.mk

# BOARD:=ipq50xx
# BOARDNAME:=Qualcomm Atheros IPQ50XX
# SUBTARGETS:=arm aarch64

# CPU_TYPE:=cortex-a53
# FEATURES:=fpu ramdisk nand squashfs pcie

# KERNEL_PATCHVER:=5.4
# LINUX_VERSION-5.4:=-qsdk-11.5.0.5

# CONFIG_KERNEL_GIT_CLONE_URI:=https://git.codelinaro.org/clo/qsdk/oss/kernel/linux-ipq-5.4
# CONFIG_KERNEL_GIT_REF:=d5fcb18e5420670c8734c6a659873e73adab6dac

# include $(INCLUDE_DIR)/target.mk

# define Kernel/Prepare/Default
# 	$(LINUX_CAT) $(DL_DIR)/$(LINUX_SOURCE) | $(TAR) -C $(KERNEL_BUILD_DIR) $(TAR_OPTIONS)
# 	$(Kernel/Patch)
# 	$(if $(QUILT),touch $(LINUX_DIR)/.quilt_used)
# endef

# KERNELNAME:=Image dtbs

# DEFAULT_PACKAGES += \
# 	kmod-leds-gpio kmod-gpio-button-hotplug swconfig \
# 	kmod-ata-ahci kmod-ata-ahci-platform \
# 	kmod-ath10k-ct wpad-basic-wolfssl \
# 	uboot-envtools

# $(eval $(call BuildTarget))