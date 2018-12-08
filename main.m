#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (strong, nonatomic) UIWindow *window;
@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(id)options
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
    CGRect mainScreenBounds = [[UIScreen mainScreen] bounds];
    self.window = [[UIWindow alloc] initWithFrame:mainScreenBounds];
    
    // Create the view controller and add it to the window.
    UIViewController *viewController = [[UIViewController alloc] init];
    viewController.view.backgroundColor = [UIColor whiteColor];
    viewController.view.frame = mainScreenBounds;
    self.window.rootViewController = viewController;
    
    // Create the label and add it to the view controller view.
    UILabel *label = [[UILabel alloc] init];
    label.text = @"Hello, world!";
    label.textColor = [UIColor blackColor];
    [viewController.view addSubview:label];
    
    // Create constraints that center the label in the middle of the superview.
    label.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *centerX = [NSLayoutConstraint constraintWithItem:label
            attribute:NSLayoutAttributeCenterX
            relatedBy:NSLayoutRelationEqual
            toItem:label.superview
            attribute:NSLayoutAttributeCenterX
            multiplier:1.f
            constant:0.f];
    NSLayoutConstraint *centerY = [NSLayoutConstraint constraintWithItem:label
            attribute:NSLayoutAttributeCenterY
            relatedBy:NSLayoutRelationEqual
            toItem:label.superview
            attribute:NSLayoutAttributeCenterY
            multiplier:1.f
            constant:0.f];
    
    [NSLayoutConstraint activateConstraints:@[centerX, centerY]];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end

int main(int argc, char *argv[])
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
