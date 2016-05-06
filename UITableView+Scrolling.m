//
//  UITableView+Scrolling.m
//
//  Created by Aseem Sandhu on 3/27/15.
//

#import "UITableView+Scrolling.h"

@implementation UITableView (Scrolling)

- (BOOL)isSectionVisible:(int)section {
    CGRect visible = self.bounds;
    CGRect sectBounds = [self rectForSection:section];
    if(CGRectIntersectsRect(sectBounds, visible)) {
        return YES;
    } else {
        return NO;
    }
}

- (void)scrollToBottomOfSection:(int)section animated:(BOOL)animated {
    
    NSInteger numberOfRows = [self numberOfRowsInSection:section];
    
    if (numberOfRows >= 1) {
    
        NSIndexPath* ip = [NSIndexPath indexPathForRow:(numberOfRows - 1) inSection:section];
    
        [self scrollToRowAtIndexPath:ip atScrollPosition:UITableViewScrollPositionBottom animated:animated];
    }
}

@end





