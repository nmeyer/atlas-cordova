#import "AtlasCordova.h"
#import "ConversationsListViewController.h"

@implementation AtlasCordova

ConversationsListViewController *viewController;

- (void)showConversations:(CDVInvokedUrlCommand *)command
{
    NSLog(@"AtlasCordova :: showConversations");
    
    NSUUID *appID = [[NSUUID alloc] initWithUUIDString:@"7cffb0ac-dca4-11e4-b121-52bb01004845"];

    NSLog(@"Initializing Layer App: %@", appID);
    LYRClient *layerClient = [LYRClient clientWithAppID:appID];
    
    NSLog(@"Connecting to Layer...");
    [layerClient connectWithCompletion:^(BOOL success, NSError *error) {
        if (success) {
            NSLog(@"Sucessfully connected to Layer!");
            
            viewController = [ConversationsListViewController conversationListViewControllerWithLayerClient:layerClient];
            
            UIWindow *window = [[[UIApplication sharedApplication] windows] objectAtIndex:0];
            [window.rootViewController presentViewController:viewController animated:YES completion:^{
                NSLog(@"Presented View Controller!");
            }];
            
        } else {
            NSLog(@"Failed connection to Layer with error: %@", error);
        }
    }];
}

- (void)hideConversations:(CDVInvokedUrlCommand *)command
{
    NSLog(@"AtlasCordova :: hideConversations");
    [viewController dismissViewControllerAnimated:YES completion:^{
        NSLog(@"Dismissed conversations view controller");
    }];
}

@end
