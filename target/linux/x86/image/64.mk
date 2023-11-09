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

define Device/mlnx-spectrum
  DEVICE_VENDOR := Mellanox
  DEVICE_MODEL := Spectrum
  DEVICE_PACKAGES += \
  kmod-mlxsw-spectrum kmod-leds-mlxcpld kmod-mlx_wdt \
  kmod-mlxreg kmod-mlxreg-lc kmod-mlxreg-sn2201 \
  kmod-hwmon-coretemp kmod-hwmon-drivetemp kmod-hwmon-jc42 \
  kmod-i2c-i801 kmod-e1000e kmod-igb mlxsw_spectrum-firmware
  GRUB2_VARIANT := generic
endef
TARGET_DEVICES += mlnx-spectrum
