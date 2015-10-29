//
//  ViewController.m
//  JTCalendarBugReproduction
//
//  Created by Tom on 28/10/2015.
//  Copyright © 2015 Tom Dalling. All rights reserved.
//

#import "ViewController.h"

@interface ViewController() <JTCalendarDelegate>
@end

@implementation ViewController {
    JTCalendarManager* _manager;
}

-(IBAction)previousMonth:(id)sender;
{
    [_horizontalView loadPreviousPageWithAnimation];
}

-(IBAction)nextMonth:(id)sender;
{
    [_horizontalView loadNextPageWithAnimation];
}

- (void)viewDidLoad;
{
    [super viewDidLoad];
    
    _manager = [JTCalendarManager new];
    _manager.delegate = self;
    _manager.menuView = _menuView;
    _manager.contentView = _horizontalView;
    _manager.date = [NSDate date];
}

-(void) calendar:(JTCalendarManager *)calendar prepareDayView:(UIView<JTCalendarDay> *)dayViewArg;
{
    JTCalendarDayView* dayView = (JTCalendarDayView*)dayViewArg;

    CGFloat alpha = dayView.isFromAnotherMonth ? 0.5 : 1.0;

    dayView.circleView.hidden = NO;
    dayView.circleView.backgroundColor = [[UIColor redColor] colorWithAlphaComponent:alpha];
    dayView.textLabel.textColor = [[UIColor whiteColor] colorWithAlphaComponent:alpha];
    dayView.dotView.hidden = NO;
    dayView.dotView.backgroundColor = [UIColor whiteColor];
}

@end
