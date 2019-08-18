//
//  RNPassportScanner.m
//  RNNativeMrzScanner
//
//  Created by Jeancarlos Mancebo on 8/18/19.
//

#import "React/RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(MrzScanner, NSObject)
RCT_EXTERN_METHOD(startScanner: (RCTPromiseResolveBlock) resolve rejecter: (RCTPromiseRejectBlock) reject)
@end


