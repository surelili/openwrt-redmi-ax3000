define Device/FitImage
        KERNEL_SUFFIX := -uImage.itb
        KERNEL = kernel-bin | libdeflate-gzip | fit gzip $$(KDIR)/image-$$(DEVICE_DTS).dtb
        KERNEL_NAME := Image
endef

define Device/FitImageLzma
        KERNEL_SUFFIX := -uImage.itb
        KERNEL = kernel-bin | lzma | fit lzma $$(KDIR)/image-$$(DEVICE_DTS).dtb
        KERNEL_NAME := Image
endef

define Device/UbiFit
        KERNEL_IN_UBI := 1
        IMAGES := factory.ubi sysupgrade.bin
        IMAGE/factory.ubi := append-ubi
        IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
endef

define Device/redmi_ax3000
        $(call Device/FitImage)
        $(call Device/UbiFit)
        DEVICE_VENDOR := Redmi
        DEVICE_MODEL := AX3000
        BLOCKSIZE := 128k
        PAGESIZE := 2048
        DEVICE_DTS_CONFIG := config@mp02.1
        SOC := ipq5000
        DEVICE_PACKAGES := ipq-wifi-redmi_ax3000 kmod-ath10k-ct-smallbuffers ath10k-firmware-qcn6122-ct
ifneq ($(CONFIG_TARGET_ROOTFS_INITRAMFS),)
        ARTIFACTS := initramfs-factory.ubi
        ARTIFACT/initramfs-factory.ubi := append-image-stage initramfs-uImage.itb | ubinize-kernel
endif
endef
TARGET_DEVICES += redmi_ax3000
