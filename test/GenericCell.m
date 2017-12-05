#import "GenericCell.h"
@interface GenericCell()
@end

@implementation GenericCell

- (IBAction)buttonPressed {
    if (self.delegate) {
        [self.delegate getText:self.label.text];
    }
}
@end
