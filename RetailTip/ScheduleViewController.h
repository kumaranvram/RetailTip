#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "DetailsViewController.h"
#import "Tip.h"

@interface ScheduleViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>{
    AppDelegate *delegate;
}
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSArray *tips;
@property (strong, nonatomic) Tip *selectedTip;
@property (strong, nonatomic) NSString *selectedKey;

@end
