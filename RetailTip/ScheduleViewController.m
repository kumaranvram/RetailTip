#import "ScheduleViewController.h"

@implementation ScheduleViewController

@synthesize tableView;
@synthesize tips, selectedTip;
@synthesize selectedKey;

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle

- (void)viewDidLoad 
{
    delegate = (AppDelegate *) [[UIApplication sharedApplication] delegate];
    [self setTips:[delegate tips]];
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)localTableView numberOfRowsInSection:(NSInteger)section{
    return [tips count];
}

- (UITableViewCell *)tableView:(UITableView *)localTableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"ScheduleListTableViewCell";
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd, MMM YYYY"];
    
    UITableViewCell *cell = [localTableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }    
    cell.textLabel.text = [dateFormat stringFromDate: [[tips objectAtIndex:indexPath.row] date]];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self setSelectedTip:[[self tips] objectAtIndex:indexPath.row]];
    NSLog(@"%@ %@", [[self selectedTip] date], [[self selectedTip] tip]);
    NSLog(@"%@ %d", indexPath, indexPath.row);
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"ShowTip"])
    {
        // Get reference to the destination view controller
        DetailsViewController *vc = [segue destinationViewController];
        // Pass any objects to the view controller here, like...        
        [vc setTip:[self selectedTip]];
        
    }
}

@end