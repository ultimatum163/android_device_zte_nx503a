#!/system/bin/sh

if [ ! -d "/data/tp" ]; then
    mkdir /data/tp
    chmod 0775 /data/tp
    chown system:system /data/tp
else
    rm /data/tp/*
fi

link_if_exists() {
    if [ -e "$2" ]; then
        chown system:system "$2"
        ln -s "$2" "/data/tp/$1"
    fi
}

# Keypad
# ==============================================================================
# Synaptics

link_if_exists "keypad_enable" \
    "/sys/bus/i2c/devices/2-0022/input/input0/0dbutton"

# ==============================================================================
# Cyttsp4

link_if_exists "keypad_enable" \
    "/sys/bus/ttsp4/drivers/cyttsp4_btn/cyttsp4_btn.main_ttsp_core/button"

#Dt2w
# ==============================================================================
# Goodix GT915L

if [ -e "/sys/bus/i2c/devices/2-005d/ic_ver" ]; then
	ln -s /sys/bus/i2c/devices/2-005d/ic_ver /data/tp/ic_ver
fi

if [ -e "/sys/bus/i2c/devices/2-005d/wakeup_gesture" ]; then
	chown system:system /sys/bus/i2c/devices/2-005d/wakeup_gesture
	ln -s /sys/bus/i2c/devices/2-005d/wakeup_gesture /data/configs/easy_wakeup_gesture
fi

if [ -e "/sys/gtp_test/opentest" ]; then
    ln -s "sys/gtp_test/opentest" /data/tp/ic_detect
fi

# ==============================================================================
# Cypress TMA463

if [ -e "/sys/bus/ttsp4/devices/main_ttsp_core.cyttsp4_i2c_adapter/ic_ver" ]; then
	ln -s /sys/bus/ttsp4/devices/main_ttsp_core.cyttsp4_i2c_adapter/ic_ver /data/tp/ic_ver
fi

if [ -e "/sys/bus/ttsp4/devices/cyttsp4_device_access.main_ttsp_core/ic_grpdetect" ]; then
	ln -s /sys/bus/ttsp4/devices/cyttsp4_device_access.main_ttsp_core/ic_grpdetect /data/tp/ic_detect
fi

if [ -e "/sys/bus/ttsp4/devices/cyttsp4_loader.main_ttsp_core/manual_cali" ]; then
	ln -s /sys/bus/ttsp4/devices/cyttsp4_loader.main_ttsp_core/manual_cali /data/tp/manual_cali
fi

if [ -e "/sys/bus/ttsp4/devices/cyttsp4_loader.main_ttsp_core/fw_upgrade_flag" ]; then
	ln -s /sys/bus/ttsp4/devices/cyttsp4_loader.main_ttsp_core/fw_upgrade_flag /data/tp/fw_upgrade_flag
fi

if [ -e "/sys/bus/ttsp4/devices/main_ttsp_core.cyttsp4_i2c_adapter/easy_wakeup_gesture" ]; then
	chown system:system /sys/bus/ttsp4/devices/main_ttsp_core.cyttsp4_i2c_adapter/easy_wakeup_gesture
	ln -s /sys/bus/ttsp4/devices/main_ttsp_core.cyttsp4_i2c_adapter/easy_wakeup_gesture /data/configs/easy_wakeup_gesture
fi

# ==============================================================================
# Synaptics S3208 S3508

if [ -e "/sys/class/input/input0/buildid" ]; then
	ln -s /sys/class/input/input0/buildid /data/tp/ic_ver
fi

if [ -e "/sys/class/input/input0/reset" ]; then
	ln -s /sys/class/input/input0/reset /data/tp/reset
fi

if [ -e "/sys/class/input/input0/wakeup_gesture" ]; then
	chown system:system /sys/class/input/input0/wakeup_gesture
	ln -s /sys/class/input/input0/wakeup_gesture /data/configs/easy_wakeup_gesture
fi

if [ -e "/sys/class/input/input0/f54/factory_result" ]; then
	ln -s /sys/class/input/input0/f54/factory_result /data/tp/ic_detect
fi

# ==============================================================================
# Cypress TMA568

if [ -e "/sys/bus/ttsp5/devices/main_ttsp_core.cyttsp5_i2c_adapter/ic_ver" ]; then
	ln -s /sys/bus/ttsp5/devices/main_ttsp_core.cyttsp5_i2c_adapter/ic_ver /data/tp/ic_ver
fi

if [ -e "/sys/bus/ttsp5/devices/main_ttsp_core.cyttsp5_i2c_adapter/hw_reset" ]; then
	ln -s /sys/bus/ttsp5/devices/main_ttsp_core.cyttsp5_i2c_adapter/hw_reset /data/tp/reset
fi

if [ -e "/sys/bus/ttsp5/devices/cyttsp5_device_access.main_ttsp_core/ic_detect" ]; then
	ln -s /sys/bus/ttsp5/devices/cyttsp5_device_access.main_ttsp_core/ic_detect /data/tp/ic_detect
fi

if [ -e "/sys/bus/ttsp5/devices/cyttsp5_loader.main_ttsp_core/manual_cali" ]; then
	ln -s /sys/bus/ttsp5/devices/cyttsp5_loader.main_ttsp_core/manual_cali /data/tp/manual_cali
fi

if [ -e "/sys/bus/ttsp5/devices/cyttsp5_loader.main_ttsp_core/fw_upgrade_flag" ]; then
	ln -s /sys/bus/ttsp5/devices/cyttsp5_loader.main_ttsp_core/fw_upgrade_flag /data/tp/fw_upgrade_flag
fi

if [ -e "/sys/bus/ttsp5/devices/main_ttsp_core.cyttsp5_i2c_adapter/easy_wakeup_gesture" ]; then
	chown system:system /sys/bus/ttsp5/devices/main_ttsp_core.cyttsp5_i2c_adapter/easy_wakeup_gesture
	ln -s /sys/bus/ttsp5/devices/main_ttsp_core.cyttsp5_i2c_adapter/easy_wakeup_gesture /data/configs/easy_wakeup_gesture
fi

if [ -e "/sys/bus/ttsp5/devices/main_ttsp_core.cyttsp5_i2c_adapter/touch_mode" ]; then
	chown system:system /sys/bus/ttsp5/devices/main_ttsp_core.cyttsp5_i2c_adapter/touch_mode
	ln -s /sys/bus/ttsp5/devices/main_ttsp_core.cyttsp5_i2c_adapter/touch_mode /data/tp/touch_mode
fi

if [ -e "/sys/bus/ttsp5/devices/cyttsp5_mt.main_ttsp_core/hall_mode" ]; then
	chown system:system /sys/bus/ttsp5/devices/cyttsp5_mt.main_ttsp_core/hall_mode
	ln -s /sys/bus/ttsp5/devices/cyttsp5_mt.main_ttsp_core/hall_mode /data/tp/hall_mode
fi
