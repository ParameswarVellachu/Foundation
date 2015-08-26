
#import "HomePage.h"

@interface HomePage ()

@end

@implementation HomePage

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)findemptyStringinArray
{
    arrTest = [NSArray arrayWithObjects:@"",@"india",@"",@"",@"1",@"aus",@"usa",@"",@"",@"cd",@"de",@"aus", nil];

    NSLog(@"Arr:%@",arrTest);
    
    for (int i=0; i<arrTest.count; i++)
    {
        if ([[arrTest objectAtIndex:i] isEqualToString:@""])
        {
            NSLog(@"myString IS empty!");
        }
        else
        {
            NSLog(@"myString IS NOT empty, it is: %@", [arrTest objectAtIndex:i]);
        }
        
    }
}

-(void)findspecialStringinArray
{
    NSMutableArray *shuffleArray = [[NSMutableArray alloc] initWithObjects:@"H",@"$",@"E",@"*",@"L",@"L",@"O",@"`",@"2",@" ", nil];
    NSLog(@"Letters Array%@",[shuffleArray filteredArrayUsingPredicate:[NSPredicate predicateWithBlock:^BOOL(NSString *evaluatedString, NSDictionary *bindings) {
        return [[evaluatedString stringByTrimmingCharactersInSet:[NSCharacterSet letterCharacterSet]] length]==0;
        
    }]]);
    NSLog(@"Special Characters  Array%@",[shuffleArray filteredArrayUsingPredicate:[NSPredicate predicateWithBlock:^BOOL(NSString *evaluatedString, NSDictionary *bindings) {
        return [[evaluatedString stringByTrimmingCharactersInSet:[NSCharacterSet letterCharacterSet]] length]!=0;
        
    }]]);
}

-(void)findCharInaString
{
    NSString *x = @"This is my question";
    
    for (NSUInteger i=0;i<[x length];i++)
    {
        if ([x characterAtIndex:i]=='i')
        {
            NSLog(@"found: %d", i);
        }
    }
}

-(void)findAstringinArray
{
    for (int i=0; i<arrTest.count; i++)
    {
        if ([[arrTest objectAtIndex:i]isEqualToString:@"aus"])
        {
            NSLog(@"found:%@",[arrTest objectAtIndex:i]);
        }
        else
        {
            NSLog(@"not found: ");
        }
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self findemptyStringinArray];
    [self findspecialStringinArray];
    [self findCharInaString];
    [self findAstringinArray];
    
}

//ENTER THE NUMBER ONLY........CODE....
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string  {
    NSUInteger newLength = [textField.text length] + [string length] - range.length;
    NSCharacterSet *cs = [[NSCharacterSet characterSetWithCharactersInString:NUMBERS_ONLY] invertedSet];
    NSString *filtered = [[string componentsSeparatedByCharactersInSet:cs] componentsJoinedByString:@""];
    return (([string isEqualToString:filtered])&&(newLength <= CHARACTER_LIMIT));
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
