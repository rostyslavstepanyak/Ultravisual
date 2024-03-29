//
//  RPViewController.h
//  RPSlidingMenuDemo
//
//  Created by Paul Thorsteinson on 2/24/2014.
//  Copyright (c) 2014 Robots and Pencils Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RPSlidingMenu.h"
@class RPSItem;

@interface RPViewController : RPSlidingMenuViewController 

- (void)createItem:(RPSItem *)item;
@property (nonatomic, assign) id<RPSSelctionDelegate>delegate;
@end
