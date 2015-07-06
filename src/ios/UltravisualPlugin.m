
#import <Foundation/Foundation.h>
#import "UltravisualPlugin.h"
#import "RPViewController.h"
#import "RPSItem.h"

@interface UltravisualPlugin()<RPSSelctionDelegate>
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
    self.ultraViewController.delegate = self;
    

    [[[UIApplication sharedApplication] delegate] window].rootViewController = [[UINavigationController alloc] initWithRootViewController:self.ultraViewController];
                
    CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK
                                                  messageAsDictionary:@{@"Status":@"OK"}];
    
    [self.commandDelegate sendPluginResult:pluginResult
                                callbackId:command.callbackId];
}

- (void)createItem:(CDVInvokedUrlCommand*)command
{
    RPSItem *item = [[RPSItem alloc] init];
    item.title = [command.arguments objectAtIndex:0];
    item.details = [command.arguments objectAtIndex:1];
    item.image = [command.arguments objectAtIndex:2];
    [self.ultraViewController createItem:item];
}

#pragma mark - RPSSelctionDelegate

- (void)didSelectItemAtIndex:(NSInteger)index {
    [self itemSelected:index];
}

- (void)itemSelected:(NSInteger)itemNumber {
    NSString * jsCallBack = [NSString stringWithFormat:@"UltravisulaPlugin.onItemSelected(%ld);", (long)itemNumber];
    [self.commandDelegate evalJs:jsCallBack];
}

@end
