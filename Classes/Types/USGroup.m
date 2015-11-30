//
//  USGroup.m
//  WSDLParser
//
//  Created by Kent Sutherland on 11/30/15.
//
//

#import "USGroup.h"
#import "USSchema.h"
#import "USObjCKeywords.h"

@implementation USGroup
+ (USGroup *)groupWithElement:(NSXMLElement *)el schema:(USSchema *)schema {
    USGroup *group = [USGroup new];

    BOOL isRef = [schema withGroupFromElement:el attrName:@"ref" call:^(USGroup *ref) {
        group.name = ref.name;
        group.wsdlName = ref.wsdlName;
    }];
    if (isRef) return group;

    group.wsdlName = [[el attributeForName:@"name"] stringValue];
    group.name = [USObjCKeywords mangleName:group.wsdlName];

    return group;
}
@end
