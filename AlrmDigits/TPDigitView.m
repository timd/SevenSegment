//
//  TPDigitView.m
//  AlrmDigits
//
//  Created by Tim on 14/03/2013.
//  Copyright (c) 2013 Charismatic Megafauna Ltd. All rights reserved.
//

#import "TPDigitView.h"

@interface TPDigitView()

@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray *segmentsCollection;

@property (weak, nonatomic) IBOutlet UIImageView *topH;
@property (weak, nonatomic) IBOutlet UIImageView *topLeft;
@property (weak, nonatomic) IBOutlet UIImageView *topRight;
@property (weak, nonatomic) IBOutlet UIImageView *middleH;
@property (weak, nonatomic) IBOutlet UIImageView *bottomLeft;
@property (weak, nonatomic) IBOutlet UIImageView *bottomRight;
@property (weak, nonatomic) IBOutlet UIImageView *bottomH;

@property (nonatomic, strong) NSDictionary *digitCodes;

@end

@implementation TPDigitView

+(UIView *) viewWithNibName:(NSString *)nibName owner:(NSObject *)owner {
    
    NSArray *nibContents = [[NSBundle mainBundle] loadNibNamed:nibName owner:owner options:NULL];
    NSEnumerator *nibEnumerator = [nibContents objectEnumerator];
    id customView = nil;
    NSObject* nibItem = nil;
    while ((nibItem = [nibEnumerator nextObject]) != nil) {
        if ([nibItem isKindOfClass:[self class]]) {
            customView = nibItem;
            break;
        }
    }
    return customView;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

-(void)clearAllSegments {
    
    for (UIImageView *imageView in self.segmentsCollection) {
        [imageView setImage:nil];
        [imageView setAccessibilityIdentifier:@"off"];
    }
    
}

-(void)setAllSegments {
    
    [self.topH setImage:[UIImage imageNamed:@"topH"]];
    [self.topH setAccessibilityIdentifier:@"on"];

    [self.topLeft setImage:[UIImage imageNamed:@"topLeft"]];
    [self.topLeft setAccessibilityIdentifier:@"on"];
    
    [self.topRight setImage:[UIImage imageNamed:@"topRight"]];
    [self.topRight setAccessibilityIdentifier:@"on"];
    
    [self.middleH setImage:[UIImage imageNamed:@"middleH"]];
    [self.middleH setAccessibilityIdentifier:@"on"];
    
    [self.bottomLeft setImage:[UIImage imageNamed:@"bottomLeft"]];
    [self.bottomLeft setAccessibilityIdentifier:@"on"];
    
    [self.bottomRight setImage:[UIImage imageNamed:@"bottomRight"]];
    [self.bottomLeft setAccessibilityIdentifier:@"on"];
    
    [self.bottomH setImage:[UIImage imageNamed:@"bottomH"]];
    [self.bottomH setAccessibilityIdentifier:@"on"];

}

-(void)setSegmentsForCharacter:(NSString *)character {
    
    [self setupDigitCodes];
    
    int digitCode = [[self.digitCodes objectForKey:character] intValue];
    
    //   64 32 16 8 4 2 1
    
    // Top L - 64
    int topLCheck = 64;
    int topLresult = digitCode & topLCheck;
    if (topLresult == 64) {
        // TURN ON TOPL
        [self.topLeft setImage:[UIImage imageNamed:@"topLeft"]];
        [self.topLeft setAccessibilityIdentifier:@"on"];
    } else {
        [self.topLeft setImage:nil];
        [self.topLeft setAccessibilityIdentifier:@"off"];
    }
    
    // Top H - 32
    int topHCheck = 32;
    int topHresult = digitCode & topHCheck;
    if (topHresult == 32) {
        // TURN ON TOPL
        [self.topH setImage:[UIImage imageNamed:@"topH"]];
        [self.topH setAccessibilityIdentifier:@"on"];
    } else {
        [self.topH setImage:nil];
        [self.topH setAccessibilityIdentifier:@"off"];
    }
    
    // Top R - 16
    int topRCheck = 16;
    int topRresult = digitCode & topRCheck;
    if (topRresult == 16) {
        // TURN ON TOPL
        [self.topRight setImage:[UIImage imageNamed:@"topRight"]];
        [self.topRight setAccessibilityIdentifier:@"on"];
    } else {
        [self.topRight setImage:nil];
        [self.topRight setAccessibilityIdentifier:@"off"];
    }
    
    // Mid H - 8
    int midHCheck = 8;
    int midHresult = digitCode & midHCheck;
    if (midHresult == 8) {
        // TURN ON TOPL
        [self.middleH setImage:[UIImage imageNamed:@"middleH"]];
        [self.middleH setAccessibilityIdentifier:@"on"];
    } else {
        [self.middleH setImage:nil];
        [self.middleH setAccessibilityIdentifier:@"off"];
    }
    
    // Bottom L - 4
    int bottomLCheck = 4;
    int bottomLresult = digitCode & bottomLCheck;
    if (bottomLresult == 4) {
        // TURN ON TOPL
        [self.bottomLeft setImage:[UIImage imageNamed:@"bottomLeft"]];
        [self.bottomLeft setAccessibilityIdentifier:@"on"];
    } else {
        [self.bottomLeft setImage:nil];
        [self.bottomLeft setAccessibilityIdentifier:@"off"];
    }
    
    // Bottom R - 2
    int bottomRCheck = 2;
    int bottomRresult = digitCode & bottomRCheck;
    if (bottomRresult == 2) {
        // TURN ON TOPL
        [self.bottomRight setImage:[UIImage imageNamed:@"bottomRight"]];
        [self.bottomRight setAccessibilityIdentifier:@"on"];
    } else {
        [self.bottomRight setImage:nil];
        [self.bottomRight setAccessibilityIdentifier:@"off"];
    }
    
    // Bottom H - 1
    int bottomHCheck = 1;
    int bottomHresult = digitCode & bottomHCheck;
    if (bottomHresult == 1) {
        // TURN ON TOPL
        [self.bottomH setImage:[UIImage imageNamed:@"bottomH"]];
        [self.bottomH setAccessibilityIdentifier:@"on"];
    } else {
        [self.bottomH setImage:nil];
        [self.bottomH setAccessibilityIdentifier:@"off"];
    }
    
}

-(void)setupDigitCodes {
    
    self.digitCodes =  @{@"A" : @126,
                         @"B" : @79,
                         @"C" : @101,
                         @"D" : @31,
                         @"E" : @109,
                         @"F" : @108,
                         @"G" : @103,
                         @"H" : @94,
                         @"I" : @68,
                         @"J" : @19,
                         @"K" : @94,
                         @"L" : @69,
                         @"M" : @118,
                         @"N" : @14,
                         @"O" : @15,
                         @"P" : @124,
                         @"Q" : @122,
                         @"R" : @126,
                         @"S" : @107,
                         @"T" : @77,
                         @"U" : @7,
                         @"V" : @87,
                         @"W" : @87,
                         @"X" : @94,
                         @"Y" : @91,
                         @"Z" : @61,
                         @"0" : @119,
                         @"1" : @68,
                         @"2" : @61,
                         @"3" : @59,
                         @"4" : @90,
                         @"5" : @107,
                         @"6" : @79,
                         @"7" : @50,
                         @"8" : @127,
                         @"9" : @122
                         };
    
}



@end
