##How to compile

1.  Prepare your [CyanogenMod](https://github.com/CyanogenMod/android) source tree (branch `cm-13.0`)

2. Launch from terminal:
     ```sh 
    mkdir -p .repo/local_manifests/ 
    cp device/zte/nx503a/roomservice.xml .repo/local_manifests/
    ```

3. Then launch from terminal:
```sh
git clone https://github.com/Maegorn/android_device_zte_nx503a.git -b mm-6.0 device/zte/nx503a
git clone https://github.com/Maegorn/android_kernel_zte_nx503a.git -b mm-6.0 kernel/zte/nx503a
git clone https://github.com/Maegorn/android_vendor_zte_nx503a.git -b mm-6.0 vendor/zte/nx503a
```

or

Edit  your `.repo/local_manifests/roomservice.xml`: adding this lines:
```xml
  <project name="Maegorn/android_device_zte_nx503a" path="device/zte/nx503a" remote="github" revision="mm-6.0" />
  <project name="Maegorn/android_kernel_zte_nx503a" path="kernel/zte/nx503a" remote="github" revision="mm-6.0" />
  <project name="Maegorn/android_vendor_zte_nx503a" path="vendor/zte/nx503a" remote="github" revision="mm-6.0" />
  ```

##Compile
```sh
. build/envsetup.sh
lunch cm_nx503a-userdebug
brunch cm_nx503a-userdebug
```
