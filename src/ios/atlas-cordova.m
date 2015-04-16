/********* atlas-cordova.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>
#import "ConversationsListViewController.m"

@interface CDVAtlas : CDVPlugin {
  // Member variables go here.
}

+ (void)showConversations:(CDVInvokedUrlCommand *)command;
+ (void)hideConversations:(CDVInvokedUrlCommand *)command;

@end

@implementation CDVAtlas

+ (void)showConversations:(CDVInvokedUrlCommand *)command
{

}

+ (void)hideConversations:(CDVInvokedUrlCommand *)command
{

}

@end
