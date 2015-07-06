
#import <Foundation/Foundation.h>
#import "UltravisualPlugin.h"
#import "RPViewController.h"

@interface UltravisualPlugin()
@property (nonatomic, strong) RPViewController *ultraViewController;
@end
@implementation UltravisualPlugin

- (void)pluginInitialize
{
    
    
}


- (void)create:(CDVInvokedUrlCommand*)command
{
    UIApplication *app = [UIApplication sharedApplication];
    [[app delegate] window].rootViewController = nil;
    
    self.ultraViewController = [[RPViewController alloc] init];
    

    [[[UIApplication sharedApplication] delegate] window].rootViewController = [[UINavigationController alloc] initWithRootViewController:self.ultraViewController];
                
    CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK
                                                  messageAsDictionary:@{@"Status":@"OK"}];
    
    [self.commandDelegate sendPluginResult:pluginResult
                                callbackId:command.callbackId];
}

- (void)addItem:(CDVInvokedUrlCommand*)command
{
}

@end
