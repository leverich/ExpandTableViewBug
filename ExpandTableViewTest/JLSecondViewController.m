//
//  JLSecondViewController.m
//  ExpandTableViewTest
//
//  Created by Jacob Leverich on 7/31/14.
//  Copyright (c) 2014 JACOB. All rights reserved.
//

#import "JLSecondViewController.h"

@interface JLSecondViewController ()

@end

@implementation JLSecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.expandTableView setDataSourceDelegate:self];
    [self.expandTableView setTableViewDelegate:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL) shouldSupportMultipleSelectableChildrenAtParentIndex:(NSInteger) parentIndex {
    return NO;
}

- (NSInteger) numberOfParentCells {
    return 4;
}

- (NSInteger) numberOfChildCellsUnderParentIndex:(NSInteger) parentIndex {
    switch (parentIndex) {
        case 0: return 4; break;
        case 1: return 4; break;
        case 2: return 5000; break;
        case 3: return 4; break;
        default: return 0; break;
    }
}

- (NSString *) labelForParentCellAtIndex:(NSInteger) parentIndex {
    return [NSString stringWithFormat:@"parent %d", parentIndex];
}

- (NSString *) labelForCellAtChildIndex:(NSInteger) childIndex withinParentCellIndex:(NSInteger) parentIndex {
    return [NSString stringWithFormat:@"child %d of parent %d", childIndex, parentIndex];
}

- (BOOL) shouldDisplaySelectedStateForCellAtChildIndex:(NSInteger) childIndex withinParentCellIndex:(NSInteger) parentIndex {
    return NO;
}

@end
