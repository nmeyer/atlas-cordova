#import "ConversationsListViewController.h"

@implementation ConversationsListViewController


#pragma mark - ATLConversationListViewControllerDelegate
- (void)conversationListViewController:(ATLConversationListViewController *)conversationListViewController didSelectConversation:(LYRConversation *)conversation
{
    NSLog(@"didSelectConversation");
}

#pragma mark - ATLConversationListViewControllerDataSource
- (NSString *)conversationListViewController:(ATLConversationListViewController *)conversationListViewController titleForConversation:(LYRConversation *)conversation
{
    return conversation.description;
}

@end