

#import <UIKit/UIKit.h>

@protocol MyCellDelegate <NSObject>
-(void)getText:(NSString *)text;
@end

@interface GenericCell: UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel * label;
@property (assign, nonatomic) id <MyCellDelegate> delegate;
@end

