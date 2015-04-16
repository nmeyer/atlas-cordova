#import <Cordova/CDV.h>

@interface AtlasCordova : CDVPlugin {
    // Member variables go here.
}

- (void)showConversations:(CDVInvokedUrlCommand *)command;
- (void)hideConversations:(CDVInvokedUrlCommand *)command;

@end