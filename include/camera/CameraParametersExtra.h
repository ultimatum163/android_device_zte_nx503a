/*
 * Copyright (C) 2016 The CyanogenMod Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#define CAMERA_PARAMETERS_EXTRA_C \
    const char CameraParameters::BEAUTY_SHOT_OFF[] = "beauty-shot"; \
    const char CameraParameters::BEAUTY_SHOT_ON[] = "beauty-shot"; \
    const char CameraParameters::FOCUS_MODE_MANUAL_POSITION[] = "manual-position"; \
    const char CameraParameters::WHITE_BALANCE_MANUAL_CCT[] = "white-balance-manual"; \
    const char CameraParameters::OBJECT_TRACKING_ON[] = "object-tracking"; \
    const char CameraParameters::OBJECT_TRACKING_OFF[] = "object-tracking";

#define CAMERA_PARAMETERS_EXTRA_H \
    static const char BEAUTY_SHOT_OFF[]; \
    static const char BEAUTY_SHOT_ON[]; \
    static const char FOCUS_MODE_MANUAL_POSITION[]; \
    static const char WHITE_BALANCE_MANUAL_CCT[]; \
    static const char OBJECT_TRACKING_ON[]; \
    static const char OBJECT_TRACKING_OFF[];
