#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController<UITextFieldDelegate> {

    IBOutlet UIImageView *login_bg;
    IBOutlet UITextField *username;
    IBOutlet UITextField *password;
    IBOutlet UIButton *login_button;
    IBOutlet UIImageView *logotype;
    IBOutlet UIImageView *login_logo;
    
}

 -(IBAction)login:(id)sender;

@end
