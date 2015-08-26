
#import <UIKit/UIKit.h>
#define NUMBERS_ONLY @"1234567890"
#define CHARACTER_LIMIT 3
#import <SDWebImage/UIImageView+WebCache.h>

@interface HomePage : UIViewController
{
    NSArray *arrTest;
}
@property(nonatomic,retain)IBOutlet UITextField *txtNumberOnly;
@end
