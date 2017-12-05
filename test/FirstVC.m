#import "FirstVC.h"
#import "GenericCell.h"
#import "SecondVC.h"

@interface FirstVC() <UITableViewDataSource,UITableViewDelegate, MyCellDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property NSString * idToPass;
@end

@implementation FirstVC


NSMutableArray<NSString *> *array;

- (void)viewDidLoad {
    
    array = [[NSMutableArray alloc]initWithObjects:@"0x22", @"0x11", @"0x24", nil];
    
    [super viewDidLoad];
    self.tableView.dataSource=self;
    self.tableView.delegate=self;
    self.tableView.rowHeight=100;
    [self.tableView registerNib:[UINib nibWithNibName:@"GenericCell" bundle:nil] forCellReuseIdentifier:@"GenericCell"];

}

-(void)getText:(NSString *)text {
    self.idToPass = text;
    
    SecondVC * secondVC = [[SecondVC alloc] init];
    secondVC.myString = self.idToPass;
    [[self navigationController] pushViewController:secondVC animated:YES];
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return array.count;
}

- (GenericCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    GenericCell * cell = [[self tableView]dequeueReusableCellWithIdentifier:@"GenericCell" forIndexPath:indexPath];
    cell.delegate = self;
    cell.label.text = [array objectAtIndex:indexPath.row];
    return cell;
}
@end
