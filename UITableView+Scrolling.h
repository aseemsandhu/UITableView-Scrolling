//
//  UITableView+Scrolling.h
//
//  Created by Aseem Sandhu on 3/27/15.
//

#import <UIKit/UIKit.h>

@interface UITableView (Scrolling)

- (BOOL)isSectionVisible:(int)section;

- (void)scrollToBottomOfSection:(int)section animated:(BOOL)animated;

@end
