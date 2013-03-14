//
//  TPViewController.m
//  AlrmDigits
//
//  Created by Tim on 14/03/2013.
//  Copyright (c) 2013 Charismatic Megafauna Ltd. All rights reserved.
//

#import "TPViewController.h"
#import "TPDigitView.h"

@interface TPViewController ()

@property (weak, nonatomic) IBOutlet UIView *digitContainer;

@property (strong, nonatomic) TPDigitView *digitOne;
@property (strong, nonatomic) TPDigitView *digitTwo;
@property (strong, nonatomic) TPDigitView *digitThree;
@property (strong, nonatomic) TPDigitView *digitFour;

@end

@implementation TPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.digitOne = (TPDigitView *)[TPDigitView viewWithNibName:@"TPDigitView" owner:self];
    [self.digitOne setFrame:CGRectMake(10, 10, 45, 62)];
    [self.digitContainer addSubview:self.digitOne];

    self.digitTwo = (TPDigitView *)[TPDigitView viewWithNibName:@"TPDigitView" owner:self];
    [self.digitTwo setFrame:CGRectMake(55, 10, 45, 62)];
    [self.digitContainer addSubview:self.digitTwo];

    self.digitThree = (TPDigitView *)[TPDigitView viewWithNibName:@"TPDigitView" owner:self];
    [self.digitThree setFrame:CGRectMake(120, 10, 45, 62)];
    [self.digitContainer addSubview:self.digitThree];

    self.digitFour = (TPDigitView *)[TPDigitView viewWithNibName:@"TPDigitView" owner:self];
    [self.digitFour setFrame:CGRectMake(165, 10, 45, 62)];
    [self.digitContainer addSubview:self.digitFour];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)didTapOnButton:(id)sender {
    [self.digitOne setAllSegments];
    [self.digitTwo setAllSegments];
    [self.digitThree setAllSegments];
    [self.digitFour setAllSegments];
}

- (IBAction)didTapOffButton:(id)sender {
    [self.digitOne clearAllSegments];
    [self.digitTwo clearAllSegments];
    [self.digitThree clearAllSegments];
    [self.digitFour clearAllSegments];
}
- (IBAction)didTapCharButton:(id)sender {
    [self.digitOne setSegmentsForCharacter:@"e"];
    [self.digitTwo setSegmentsForCharacter:@"e"];
    [self.digitThree setSegmentsForCharacter:@"e"];
    [self.digitFour setSegmentsForCharacter:@"e"];}
@end
