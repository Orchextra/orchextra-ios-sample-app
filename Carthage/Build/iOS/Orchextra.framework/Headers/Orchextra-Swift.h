// Generated by Apple Swift version 3.1 (swiftlang-802.0.53 clang-802.0.42)
#pragma clang diagnostic push

#if defined(__has_include) && __has_include(<swift/objc-prologue.h>)
# include <swift/objc-prologue.h>
#endif

#pragma clang diagnostic ignored "-Wauto-import"
#include <objc/NSObject.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#if !defined(SWIFT_TYPEDEFS)
# define SWIFT_TYPEDEFS 1
# if defined(__has_include) && __has_include(<uchar.h>)
#  include <uchar.h>
# elif !defined(__cplusplus) || __cplusplus < 201103L
typedef uint_least16_t char16_t;
typedef uint_least32_t char32_t;
# endif
typedef float swift_float2  __attribute__((__ext_vector_type__(2)));
typedef float swift_float3  __attribute__((__ext_vector_type__(3)));
typedef float swift_float4  __attribute__((__ext_vector_type__(4)));
typedef double swift_double2  __attribute__((__ext_vector_type__(2)));
typedef double swift_double3  __attribute__((__ext_vector_type__(3)));
typedef double swift_double4  __attribute__((__ext_vector_type__(4)));
typedef int swift_int2  __attribute__((__ext_vector_type__(2)));
typedef int swift_int3  __attribute__((__ext_vector_type__(3)));
typedef int swift_int4  __attribute__((__ext_vector_type__(4)));
typedef unsigned int swift_uint2  __attribute__((__ext_vector_type__(2)));
typedef unsigned int swift_uint3  __attribute__((__ext_vector_type__(3)));
typedef unsigned int swift_uint4  __attribute__((__ext_vector_type__(4)));
#endif

#if !defined(SWIFT_PASTE)
# define SWIFT_PASTE_HELPER(x, y) x##y
# define SWIFT_PASTE(x, y) SWIFT_PASTE_HELPER(x, y)
#endif
#if !defined(SWIFT_METATYPE)
# define SWIFT_METATYPE(X) Class
#endif
#if !defined(SWIFT_CLASS_PROPERTY)
# if __has_feature(objc_class_property)
#  define SWIFT_CLASS_PROPERTY(...) __VA_ARGS__
# else
#  define SWIFT_CLASS_PROPERTY(...)
# endif
#endif

#if defined(__has_attribute) && __has_attribute(objc_runtime_name)
# define SWIFT_RUNTIME_NAME(X) __attribute__((objc_runtime_name(X)))
#else
# define SWIFT_RUNTIME_NAME(X)
#endif
#if defined(__has_attribute) && __has_attribute(swift_name)
# define SWIFT_COMPILE_NAME(X) __attribute__((swift_name(X)))
#else
# define SWIFT_COMPILE_NAME(X)
#endif
#if defined(__has_attribute) && __has_attribute(objc_method_family)
# define SWIFT_METHOD_FAMILY(X) __attribute__((objc_method_family(X)))
#else
# define SWIFT_METHOD_FAMILY(X)
#endif
#if defined(__has_attribute) && __has_attribute(noescape)
# define SWIFT_NOESCAPE __attribute__((noescape))
#else
# define SWIFT_NOESCAPE
#endif
#if defined(__has_attribute) && __has_attribute(warn_unused_result)
# define SWIFT_WARN_UNUSED_RESULT __attribute__((warn_unused_result))
#else
# define SWIFT_WARN_UNUSED_RESULT
#endif
#if !defined(SWIFT_CLASS_EXTRA)
# define SWIFT_CLASS_EXTRA
#endif
#if !defined(SWIFT_PROTOCOL_EXTRA)
# define SWIFT_PROTOCOL_EXTRA
#endif
#if !defined(SWIFT_ENUM_EXTRA)
# define SWIFT_ENUM_EXTRA
#endif
#if !defined(SWIFT_CLASS)
# if defined(__has_attribute) && __has_attribute(objc_subclassing_restricted)
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# else
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# endif
#endif

#if !defined(SWIFT_PROTOCOL)
# define SWIFT_PROTOCOL(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
# define SWIFT_PROTOCOL_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
#endif

#if !defined(SWIFT_EXTENSION)
# define SWIFT_EXTENSION(M) SWIFT_PASTE(M##_Swift_, __LINE__)
#endif

#if !defined(OBJC_DESIGNATED_INITIALIZER)
# if defined(__has_attribute) && __has_attribute(objc_designated_initializer)
#  define OBJC_DESIGNATED_INITIALIZER __attribute__((objc_designated_initializer))
# else
#  define OBJC_DESIGNATED_INITIALIZER
# endif
#endif
#if !defined(SWIFT_ENUM)
# define SWIFT_ENUM(_type, _name) enum _name : _type _name; enum SWIFT_ENUM_EXTRA _name : _type
# if defined(__has_feature) && __has_feature(generalized_swift_name)
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME) enum _name : _type _name SWIFT_COMPILE_NAME(SWIFT_NAME); enum SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_ENUM_EXTRA _name : _type
# else
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME) SWIFT_ENUM(_type, _name)
# endif
#endif
#if !defined(SWIFT_UNAVAILABLE)
# define SWIFT_UNAVAILABLE __attribute__((unavailable))
#endif
#if !defined(SWIFT_UNAVAILABLE_MSG)
# define SWIFT_UNAVAILABLE_MSG(msg) __attribute__((unavailable(msg)))
#endif
#if !defined(SWIFT_AVAILABILITY)
# define SWIFT_AVAILABILITY(plat, ...) __attribute__((availability(plat, __VA_ARGS__)))
#endif
#if !defined(SWIFT_DEPRECATED)
# define SWIFT_DEPRECATED __attribute__((deprecated))
#endif
#if !defined(SWIFT_DEPRECATED_MSG)
# define SWIFT_DEPRECATED_MSG(...) __attribute__((deprecated(__VA_ARGS__)))
#endif
#if defined(__has_feature) && __has_feature(modules)
@import ObjectiveC;
@import CoreBluetooth;
@import Foundation;
#endif

#import <Orchextra/Orchextra.h>

#pragma clang diagnostic ignored "-Wproperty-attribute-mismatch"
#pragma clang diagnostic ignored "-Wduplicate-method-arg"

SWIFT_CLASS("_TtC9Orchextra20LocalizableConstants")
@interface LocalizableConstants : NSObject
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcGlobalCancelButton;)
+ (NSString * _Nonnull)kLocaleOrcGlobalCancelButton SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcGlobalOkButton;)
+ (NSString * _Nonnull)kLocaleOrcGlobalOkButton SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcGlobalOkUppercasedButton;)
+ (NSString * _Nonnull)kLocaleOrcGlobalOkUppercasedButton SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcGlobalSettingsButton;)
+ (NSString * _Nonnull)kLocaleOrcGlobalSettingsButton SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcLocationServiceOffAlertTitle;)
+ (NSString * _Nonnull)kLocaleOrcLocationServiceOffAlertTitle SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcBackgroundLocationOffAlertTitle;)
+ (NSString * _Nonnull)kLocaleOrcBackgroundLocationOffAlertTitle SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcBackgroundLocationAlertMessage;)
+ (NSString * _Nonnull)kLocaleOrcBackgroundLocationAlertMessage SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcDefaultLocalNotificationTitle;)
+ (NSString * _Nonnull)kLocaleOrcDefaultLocalNotificationTitle SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcDefaultLocalNotificationMessage;)
+ (NSString * _Nonnull)kLocaleOrcDefaultLocalNotificationMessage SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcScannerTitle;)
+ (NSString * _Nonnull)kLocaleOrcScannerTitle SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcScanningMessage;)
+ (NSString * _Nonnull)kLocaleOrcScanningMessage SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcMatchNotFoundMessage;)
+ (NSString * _Nonnull)kLocaleOrcMatchNotFoundMessage SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcMatchFoundMessage;)
+ (NSString * _Nonnull)kLocaleOrcMatchFoundMessage SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcCameraPermissionOffTitle;)
+ (NSString * _Nonnull)kLocaleOrcCameraPermissionOffTitle SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcCameraPermissionOffMessage;)
+ (NSString * _Nonnull)kLocaleOrcCameraPermissionOffMessage SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcBrowserTitle;)
+ (NSString * _Nonnull)kLocaleOrcBrowserTitle SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcUnexpectedError;)
+ (NSString * _Nonnull)kLocaleOrcUnexpectedError SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaTitle;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaTitle SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaButtonStart;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaButtonStart SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaActivitiesListTitle;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaActivitiesListTitle SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaActivitiesListEmpty;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaActivitiesListEmpty SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaButtonOk;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaButtonOk SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaContentDescCameraButton;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaContentDescCameraButton SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaOverlayBuildTargetHelp;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaOverlayBuildTargetHelp SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaTargetQualityErrorTitle;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaTargetQualityErrorTitle SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaTargetQualityErrorDesc;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaTargetQualityErrorDesc SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaMenuBack;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaMenuBack SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaMenuExtendedTracking;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaMenuExtendedTracking SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaMenuCharacterMode;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaMenuCharacterMode SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaMenuFlash;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaMenuFlash SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaMenuFlashErrorOn;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaMenuFlashErrorOn SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaMenuFlashErrorOff;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaMenuFlashErrorOff SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaMenuContautofocus;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaMenuContautofocus SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaMenuContautofocusErrorOn;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaMenuContautofocusErrorOn SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaMenuContautofocusErrorOff;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaMenuContautofocusErrorOff SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaMenuDatasets;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaMenuDatasets SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaMenuCamera;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaMenuCamera SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaMenuCameraFront;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaMenuCameraFront SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaMenuCameraBack;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaMenuCameraBack SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaMenuButtonRed;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaMenuButtonRed SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaMenuButtonBlue;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaMenuButtonBlue SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaMenuButtonYellow;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaMenuButtonYellow SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaMenuButtonGreen;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaMenuButtonGreen SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaSplashScreenDescription;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaSplashScreenDescription SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaErrorMissingVuforiaCredentials;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaErrorMissingVuforiaCredentials SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaUpdateErrorAuthorizationFailedTitle;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaUpdateErrorAuthorizationFailedTitle SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaUpdateErrorProjectSuspendedTitle;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaUpdateErrorProjectSuspendedTitle SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaUpdateErrorNoNetworkConnectionTitle;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaUpdateErrorNoNetworkConnectionTitle SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaUpdateErrorServiceNotAvailableTitle;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaUpdateErrorServiceNotAvailableTitle SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaUpdateErrorUpdateSdkTitle;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaUpdateErrorUpdateSdkTitle SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaUpdateErrorTimestampOutOfRangeTitle;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaUpdateErrorTimestampOutOfRangeTitle SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaUpdateErrorRequestTimeoutTitle;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaUpdateErrorRequestTimeoutTitle SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaUpdateErrorBadFrameQualityTitle;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaUpdateErrorBadFrameQualityTitle SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaUpdateErrorUnknownTitle;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaUpdateErrorUnknownTitle SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaUpdateErrorAuthorizationFailedDesc;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaUpdateErrorAuthorizationFailedDesc SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaUpdateErrorProjectSuspendedDesc;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaUpdateErrorProjectSuspendedDesc SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaUpdateErrorNoNetworkConnectionDesc;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaUpdateErrorNoNetworkConnectionDesc SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaUpdateErrorServiceNotAvailableDesc;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaUpdateErrorServiceNotAvailableDesc SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaUpdateErrorUpdateSdkDesc;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaUpdateErrorUpdateSdkDesc SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaUpdateErrorTimestampOutOfRangeDesc;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaUpdateErrorTimestampOutOfRangeDesc SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaUpdateErrorRequestTimeoutDesc;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaUpdateErrorRequestTimeoutDesc SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaUpdateErrorBadFrameQualityDesc;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaUpdateErrorBadFrameQualityDesc SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull kLocaleOrcVuforiaUpdateErrorUnknownDesc;)
+ (NSString * _Nonnull)kLocaleOrcVuforiaUpdateErrorUnknownDesc SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

@class CBCentralManager;
@class ORCEddystoneRegion;
@protocol ORCActionInterface;
@class ORCValidatorActionInterator;

SWIFT_CLASS("_TtC9Orchextra19ORCCBCentralWrapper")
@interface ORCCBCentralWrapper : NSObject
SWIFT_CLASS_PROPERTY(@property (nonatomic, class) CoreBluetoothScanLevel scanLevel;)
+ (CoreBluetoothScanLevel)scanLevel SWIFT_WARN_UNUSED_RESULT;
+ (void)setScanLevel:(CoreBluetoothScanLevel)value;
@property (nonatomic, strong) CBCentralManager * _Nullable centralManager;
@property (nonatomic, copy) NSArray<ORCEddystoneRegion *> * _Nonnull availableRegions;
- (nonnull instancetype)initWithActionInterface:(id <ORCActionInterface> _Nonnull)actionInterface validatorActionInteractor:(ORCValidatorActionInterator * _Nonnull)validatorActionInteractor requestWaitTime:(NSInteger)requestWaitTime OBJC_DESIGNATED_INITIALIZER;
- (void)initializeCentralManager;
- (void)startScanner;
- (void)stopScanner;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
@end

@class CBPeripheral;
@class NSNumber;

@interface ORCCBCentralWrapper (SWIFT_EXTENSION(Orchextra)) <CBCentralManagerDelegate>
- (void)centralManagerDidUpdateState:(CBCentralManager * _Nonnull)centralManager;
- (void)centralManager:(CBCentralManager * _Nonnull)central willRestoreState:(NSDictionary<NSString *, id> * _Nonnull)dict;
- (void)centralManager:(CBCentralManager * _Nonnull)central didDiscoverPeripheral:(CBPeripheral * _Nonnull)peripheral advertisementData:(NSDictionary<NSString *, id> * _Nonnull)advertisementData RSSI:(NSNumber * _Nonnull)RSSI;
@end

@class ORCEddystoneUID;
@class ORCEddystoneTelemetry;
@class NSTimer;
enum proximity : NSInteger;

SWIFT_CLASS("_TtC9Orchextra18ORCEddystoneBeacon")
@interface ORCEddystoneBeacon : NSObject
@property (nonatomic, copy) NSUUID * _Nullable peripheralId;
@property (nonatomic, copy) NSArray<NSNumber *> * _Nullable rssiBuffer;
@property (nonatomic, copy) NSURL * _Nullable url;
@property (nonatomic, strong) ORCEddystoneUID * _Nullable uid;
@property (nonatomic, copy) NSString * _Nullable eid;
@property (nonatomic, strong) ORCEddystoneTelemetry * _Nullable telemetry;
@property (nonatomic, strong) NSTimer * _Nullable proximityTimer;
@property (nonatomic) NSInteger requestWaitTime;
@property (nonatomic, readonly) double rssi;
@property (nonatomic, readonly) enum proximity proximity;
- (nonnull instancetype)initWithPeripheralId:(NSUUID * _Nonnull)peripheralId requestWaitTime:(NSInteger)requestWaitTime OBJC_DESIGNATED_INITIALIZER;
- (void)updateRssiBufferWithRssi:(int8_t)rssi;
- (BOOL)canBeSentToValidateAction SWIFT_WARN_UNUSED_RESULT;
- (void)updateProximityWithCurrentProximity:(enum proximity)currentProximity;
- (void)updateProximityTimer;
- (void)resetProximityTimer;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
@end

enum regionEvent : NSInteger;
@class NSCoder;

SWIFT_CLASS("_TtC9Orchextra18ORCEddystoneRegion")
@interface ORCEddystoneRegion : NSObject <NSCoding>
@property (nonatomic, readonly, strong) ORCEddystoneUID * _Nonnull uid;
@property (nonatomic) enum regionEvent regionEvent;
@property (nonatomic, readonly, copy) NSString * _Nonnull code;
- (nullable instancetype)initWithJson:(NSDictionary * _Nonnull)json OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)initWithUid:(ORCEddystoneUID * _Nonnull)uid code:(NSString * _Nonnull)code notifyOnEntry:(BOOL)notifyOnEntry notifyOnExit:(BOOL)notifyOnExit OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
- (void)encodeWithCoder:(NSCoder * _Nonnull)aCoder;
- (BOOL)isEqual:(id _Nullable)object SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
@end


SWIFT_CLASS("_TtC9Orchextra21ORCEddystoneTelemetry")
@interface ORCEddystoneTelemetry : NSObject
@property (nonatomic, copy) NSString * _Nonnull tlmVersion;
@property (nonatomic) double batteryVoltage;
@property (nonatomic) double batteryPercentage;
@property (nonatomic) float temperature;
@property (nonatomic, copy) NSString * _Nonnull advertisingPDUcount;
@property (nonatomic) NSTimeInterval uptime;
- (nonnull instancetype)initWithTlmVersion:(NSString * _Nonnull)tlmVersion batteryVoltage:(double)batteryVoltage batteryPercentage:(double)batteryPercentage temperature:(float)temperature advertisingPDUcount:(NSString * _Nonnull)advertisingPDUcount uptime:(NSTimeInterval)uptime OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
@end


SWIFT_CLASS("_TtC9Orchextra15ORCEddystoneUID")
@interface ORCEddystoneUID : NSObject
@property (nonatomic, copy, getter=namespace, setter=setNamespace:) NSString * _Nonnull namespace_;
@property (nonatomic, copy) NSString * _Nullable instance;
@property (nonatomic, readonly, copy) NSString * _Nonnull uidCompossed;
- (nonnull instancetype)initWithNamespace:(NSString * _Nonnull)namespace_ instance:(NSString * _Nullable)instance OBJC_DESIGNATED_INITIALIZER;
- (BOOL)isEqual:(id _Nullable)object SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
@end


@interface ORCLog (SWIFT_EXTENSION(Orchextra))
@end


@interface ORCLog (SWIFT_EXTENSION(Orchextra))
@end


@interface ORCLog (SWIFT_EXTENSION(Orchextra))
@end


@interface ORCLog (SWIFT_EXTENSION(Orchextra))
@end

typedef SWIFT_ENUM(NSInteger, proximity) {
  proximityUnknown = 0,
  proximityInmediate = 1,
  proximityNear = 2,
  proximityFar = 3,
};

typedef SWIFT_ENUM(NSInteger, regionEvent) {
  regionEventUndetected = 0,
  regionEventEnter = 1,
  regionEventStay = 2,
  regionEventExit = 3,
};

#pragma clang diagnostic pop
