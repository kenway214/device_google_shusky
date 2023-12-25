echo 'Starting to clone stuffs needed to build for husky'

# Device common
echo 'Cloning common device tree'

git clone https://github.com/kenway214/device_google_zuma.git -b cherish-14 device/google/zuma
git clone https://github.com/kenway214/device_google_gs101.git -b cherish-14 device/google/gs101
git clone https://github.com/LineageOS/android_device_google_gs-common.git -b lineage-21 device/google/gs-common

# Kernel
echo 'Cloning kernel tree'
git clone --branch android-14.0.0_r22 --depth 1 https://android.googlesource.com/device/google/shusky-kernel device/google/shusky-kernel

# Vendor
echo 'Cloning vendor tree'
git clone https://github.com/kenway214/proprietary_vendor_google_husky.git -b cherish-14 vendor/google/husky

# pixel_parts
echo 'Cloning pixelparts'
git clone https://github.com/Evolution-X-Devices/packages_apps_PixelParts.git -b udc packages/apps/PixelParts

rm -rf device/google/shusky/vendorsetup.sh