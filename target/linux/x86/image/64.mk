define Device/generic
  DEVICE_VENDOR := Generic
  DEVICE_MODEL := x86/64
  DEVICE_PACKAGES += \
	kmod-amazon-ena kmod-amd-xgbe kmod-bnx2 kmod-dwmac-intel kmod-e1000e kmod-e1000 \
	kmod-forcedeth kmod-fs-vfat kmod-igb kmod-igc kmod-ixgbe kmod-r8169 \
	kmod-tg3
  GRUB2_VARIANT := generic
endef
TARGET_DEVICES += generic

define Device/mlnx-spectrum-common
  DEVICE_VENDOR := Mellanox
  DEVICE_MODEL := Spectrum
  DEVICE_PACKAGES := \
  kmod-mlxsw-spectrum kmod-mlxsw-minimal \
  kmod-i2c-i801 kmod-leds-mlxcpld kmod-mlx_wdt kmod-mlxreg \
  kmod-hwmon-coretemp kmod-hwmon-drivetemp kmod-hwmon-jc42
  GRUB2_VARIANT := generic
endef

define Device/mlnx-spectrum
  $(call Device/mlnx-spectrum-common)
  DEVICE_MODEL := $$(DEVICE_MODEL) SN2000 Series
  DEVICE_PACKAGES += \
  kmod-e1000e kmod-igb \
  mlxsw_spectrum-firmware kmod-mlxreg-sn2201
endef
TARGET_DEVICES += mlnx-spectrum

define Device/mlnx-spectrum-2
  $(call Device/mlnx-spectrum-common)
  DEVICE_MODEL := $$(DEVICE_MODEL)-2 SN3000 Series
  DEVICE_PACKAGES += \
  kmod-igb mlxsw_spectrum2-firmware
endef
TARGET_DEVICES += mlnx-spectrum-2

define Device/mlnx-spectrum-3
  $(call Device/mlnx-spectrum-common)
  DEVICE_MODEL := $$(DEVICE_MODEL)-3 SN4000 Series
  DEVICE_PACKAGES += \
  mlxsw_spectrum3-firmware kmod-mlxreg-lc
endef
TARGET_DEVICES += mlnx-spectrum-3

define Device/mlnx-spectrum-4
  $(call Device/mlnx-spectrum-common)
  DEVICE_MODEL := $$(DEVICE_MODEL)-4 SN5000 Series
  DEVICE_PACKAGES += \
  mlxsw_spectrum4-firmware
endef
TARGET_DEVICES += mlnx-spectrum-4
