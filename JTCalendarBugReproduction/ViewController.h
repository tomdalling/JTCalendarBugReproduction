//
//  ViewController.h
//  JTCalendarBugReproduction
//
//  Created by Tom on 28/10/2015.
//  Copyright © 2015 Tom Dalling. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <JTCalendar/JTCalendar.h>

@interface ViewController : UIViewController
@property IBOutlet JTCalendarMenuView* menuView;
@property IBOutlet JTHorizontalCalendarView* horizontalView;

-(IBAction) previousMonth:(id)sender;
-(IBAction) nextMonth:(id)sender;
@end
