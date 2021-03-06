//
//  SKValueConverter.h
//  SoapKit
//
//  Created by Hannes Tribus on 15/10/14.
//  Copyright (c) 2014 3Bus. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "SKData.h"

@class SKDynamicAttribute, SKParserConfiguration;

@protocol SKValueConverter <NSObject>

@required
- (id)transformValue:(id)value forDynamicAttribute:(SKDynamicAttribute *)attribute data:(SKData *)data parentObject:(id)parentObject;
- (id)serializeValue:(id)value forDynamicAttribute:(SKDynamicAttribute *)attribute;
- (BOOL)canTransformValueForClass:(Class)cls;

@end
