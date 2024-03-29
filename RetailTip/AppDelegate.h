//
//  AppDelegate.h
//  RetailTip
//
//  Created by Senthil Kumar Vijayakumar on 15/02/12.
//  Copyright (c) 2012 ThoughtWorks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tip.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (strong, nonatomic) UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *tips;
- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
