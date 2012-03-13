//
//  Tip.m
//  RetailTip
//
//  Created by Senthil Kumar Vijayakumar on 15/02/12.
//  Copyright (c) 2012 ThoughtWorks. All rights reserved.
//

#import "Tip.h"


@implementation Tip

@dynamic date;
@dynamic tip;

-(NSString *) stringValue {
    return  [NSString stringWithFormat:@"Tip for %@ is %@", [self date], [self tip]];
}

@end
