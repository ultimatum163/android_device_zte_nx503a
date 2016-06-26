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

# ==============================================================================
# Synaptics

link_if_exists "keypad_enable" \
    "/sys/bus/i2c/devices/2-0022/input/input0/0dbutton"

link_if_exists "tap_to_wake" \
    "/sys/bus/i2c/devices/2-0022/input/input0/wakeup_gesture"

# ==============================================================================
# Cyttsp4

link_if_exists "keypad_enable" \
    "/sys/bus/ttsp4/drivers/cyttsp4_btn/cyttsp4_btn.main_ttsp_core/button"

link_if_exists "tap_to_wake" \
    "/sys/bus/i2c/devices/2-0024/main_ttsp_core.cyttsp4_i2c_adapter/easy_wakeup_gesture"
