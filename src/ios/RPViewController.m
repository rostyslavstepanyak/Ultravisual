//
//  RPViewController.m
//  RPSlidingMenuDemo
//
//  Created by Paul Thorsteinson on 2/24/2014.
//  Copyright (c) 2014 Robots and Pencils Inc. All rights reserved.
//

#import "RPViewController.h"
#import "RPSlidingMenuCell.h"
#import "RPSItem.h"

@interface RPViewController()
@property (nonatomic) NSMutableArray *items;
@end

@implementation RPViewController

- (void)viewDidLoad{
    [super viewDidLoad];

    //self.collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) collectionViewLayout:[[UICollectionViewFlowLayout alloc] init]];
    //[self.view addSubview:self.collectionView];
    //[self.collectionView registerClass:[RPSlidingMenuCell class] forCellWithReuseIdentifier:@"Cell"];
  // self.collectionView.delegate = self;
   //self.collectionView.dataSource = self;
    // Example of changing the feature height and collapsed height for all
    //self.featureHeight = 200.0f;
    //self.collapsedHeight = 100.0f;
}


#pragma mark - RPSlidingMenuViewController


-(NSInteger)numberOfItemsInSlidingMenu{
    // 10 for demo purposes, typically the count of some array
    return [self.items count];
}

- (void)customizeCell:(RPSlidingMenuCell *)slidingMenuCell forRow:(NSInteger)row{
 
    RPSItem *item = [self.items objectAtIndex:row];
    
    
    slidingMenuCell.textLabel.text = item.title;
    slidingMenuCell.detailTextLabel.text = item.details;
    slidingMenuCell.backgroundImageView.image = [UIImage imageNamed:item.image];
}

- (void)slidingMenu:(RPSlidingMenuViewController *)slidingMenu didSelectItemAtRow:(NSInteger)row{
    [super slidingMenu:slidingMenu didSelectItemAtRow:row];
    
    [self.delegate didSelectItemAtIndex:row];
    
}

- (void)createItem:(RPSItem *)item {
    [self.items addObject: item];
    [self.collectionView reloadData];
}

#pragma mark - accessory override

- (NSMutableArray *)items {
    if(!_items) {
        _items = [[NSMutableArray alloc] init];
    }
    
    return _items;
}


@end
