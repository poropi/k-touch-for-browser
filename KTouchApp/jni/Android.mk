LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := cocos2dcpp_shared

LOCAL_MODULE_FILENAME := libcocos2dcpp

LOCAL_SRC_FILES := hellocpp/main.cpp \
                   ../../Classes/util/AnimationUtil.cpp \
                   ../../Classes/util/LocalValueUtil.cpp \
                   ../../Classes/util/ControlAnimationUtil.cpp \
                   ../../Classes/util/IconInfomation.cpp \
                   ../../Classes/util/FinalAttackRaidAnimation.cpp \
                   ../../Classes/layer/IconLayer.cpp \
                   ../../Classes/layer/TitleLayer.cpp \
                   ../../Classes/layer/ModeSelectLayer.cpp \
                   ../../Classes/layer/BackgroundLayer.cpp \
                   ../../Classes/sprite/IconSprite.cpp \
                   ../../Classes/sprite/TapSprite.cpp \
                   ../../Classes/AppDelegate.cpp \
                   ../../Classes/TitleScene.cpp \
                   ../../Classes/MainScene.cpp

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../Classes \
                    $(LOCAL_PATH)/../../Classes/util \
                    $(LOCAL_PATH)/../../Classes/layer \
                    $(LOCAL_PATH)/../../Classes/sprite

LOCAL_WHOLE_STATIC_LIBRARIES += cocos2dx_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocosdenshion_static
LOCAL_WHOLE_STATIC_LIBRARIES += box2d_static
LOCAL_WHOLE_STATIC_LIBRARIES += chipmunk_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocos_extension_static

include $(BUILD_SHARED_LIBRARY)

$(call import-module,cocos2dx)
$(call import-module,cocos2dx/platform/third_party/android/prebuilt/libcurl)
$(call import-module,CocosDenshion/android)
$(call import-module,extensions)
$(call import-module,external/Box2D)
$(call import-module,external/chipmunk)
