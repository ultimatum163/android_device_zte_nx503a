Copyright 2016 - The CyanogenMod Project

Device configuration for Nubia Z5S.

CyanogenMod 13.0 for ZTE Nubia Z5S (nx503a)

How to compile

Prepare your CyanogenMod source tree (branch cm-13.0)

Launch from terminal:
mkdir -p .repo/local_manifests/
cp device/zte/nx503a/roomservice.xml .repo/local_manifests/

Then launch from terminal:

git clone https://github.com/Maegorn/android_device_zte_nx503a.git -b mm-6.0 device/zte/nx503a
git clone https://github.com/Maegorn/android_kernel_zte_nx503a.git -b mm-6.0 kernel/zte/nx503a
git clone https://github.com/Maegorn/android_vendor_zte_nx503a.git -b mm-6.0 vendor/zte/nx503a

or

Edit your .repo/local_manifests/roomservice.xml adding this lines:

  <project name="Maegorn/android_device_zte_nx503a" path="device/zte/nx503a" remote="github" revision="cm-13.0" />
  <project name="Maegorn/android_kernel_zte_nx503a" path="kernel/zte/nx503a" remote="github" revision="cm-13.0" />
  <project name="Maegorn/android_vendor_zte_nx503a" path="vendor/zte/nx503a" remote="github" revision="cm-13.0" />

#Compile
. build/envsetup.sh
lunch cm_nx503a-userdebug
brunch cm_nx503a-userdebug
