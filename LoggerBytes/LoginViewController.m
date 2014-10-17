#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

bool isEditing = false;

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self setNeedsStatusBarAppearanceUpdate];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if(!isEditing) {
        [UIView animateWithDuration:0.25 delay:0 options:(UIViewAnimationCurveEaseInOut) animations:^{
            [self slideView:login_bg offset:-100];
            [self slideView:username offset:-175];
            [self slideView:password offset:-175];
            [self slideView:login_button offset:-175];
            [self slideView:logotype offset:-175];
            [self slideView:login_logo offset:-250];
        } completion:^(BOOL finished) {
            
        }];
        isEditing = true;
    }
}

- (void)slideView:(UIView *)view offset:(NSInteger)offset {
    view.frame = CGRectMake(view.frame.origin.x, view.frame.origin.y + offset, view.frame.size.width, view.frame.size.height);
}

- (void)slideTextField:(UITextField *)textField offset:(NSInteger)offset {
    textField.frame = CGRectMake(textField.frame.origin.x, textField.frame.origin.y - 215, textField.frame.size.width, textField.frame.size.height);
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

-(IBAction)login:(id)sender {
    [self performSegueWithIdentifier: @"login_segue" sender: self];
}

@end
