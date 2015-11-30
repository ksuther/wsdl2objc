//
//  USGroup.h
//  WSDLParser
//
//  Created by Kent Sutherland on 11/30/15.
//
//

#import <Foundation/Foundation.h>

@class USSchema;
@class USType;

@interface USGroup : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *wsdlName;
@property (nonatomic, strong) NSArray<USType *> *sequenceElements;

+ (USGroup *)groupWithElement:(NSXMLElement *)el schema:(USSchema *)schema;
@end
