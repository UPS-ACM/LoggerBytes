//
//  TabBarController.m
//  LoggerBytes
//
//  Created by Chili Johnson on 10/16/14.
//  Copyright (c) 2014 UPS-ACM. All rights reserved.
//

#import "TabBarController.h"

@interface TabBarController ()

@end

@implementation TabBarController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[self tabBar] setSelectedImageTintColor: [self lightRedColour]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIColor *)darkRedColour {
    return [UIColor colorWithRed:(float)90/255.0f green:(float)22/255.0f blue:(float)16/255.0f alpha:1.0f];
}

- (UIColor *)lightRedColour {
    return [UIColor colorWithRed:(float)156/255.0f green:(float)45/255.0f blue:(float)35/255.0f alpha:1.0f];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
