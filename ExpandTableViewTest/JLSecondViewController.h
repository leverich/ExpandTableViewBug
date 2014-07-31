//
//  JLSecondViewController.h
//  ExpandTableViewTest
//
//  Created by Jacob Leverich on 7/31/14.
//  Copyright (c) 2014 JACOB. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JKExpandTableView.h"

@interface JLSecondViewController : UIViewController <JKExpandTableViewDelegate, JKExpandTableViewDataSource>

@property (weak, nonatomic) IBOutlet JKExpandTableView *expandTableView;

@end
