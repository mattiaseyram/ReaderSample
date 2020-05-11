// CalendarManagerBridge.m
#import <React/RCTBridgeModule.h>
#import <React/RCTLog.h>

@interface RCT_EXTERN_MODULE(ReaderManager, NSObject)

RCT_EXTERN_METHOD(addEvent:(NSString *)name value:(NSString *)value callback:(RCTResponseSenderBlock)callback)

@end