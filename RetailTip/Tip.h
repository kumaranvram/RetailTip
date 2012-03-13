//
//  Tip.h
//  RetailTip
//
//  Created by Senthil Kumar Vijayakumar on 15/02/12.
//  Copyright (c) 2012 ThoughtWorks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Tip : NSManagedObject

@property (nonatomic, retain) NSDate * date;
@property (nonatomic, retain) NSString * tip;

@end
