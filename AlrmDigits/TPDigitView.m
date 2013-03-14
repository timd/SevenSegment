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
    
    [self.topH setImage:[UIImage imageNamed:@"topH"]];
    [self.topH setAccessibilityIdentifier:@"on"];
    
    [self.topLeft setImage:[UIImage imageNamed:@"topLeft"]];
    [self.topLeft setAccessibilityIdentifier:@"on"];
    
    [self.topRight setImage:[UIImage imageNamed:nil]];
    [self.topRight setAccessibilityIdentifier:@"off"];
    
    [self.middleH setImage:[UIImage imageNamed:@"middleH"]];
    [self.middleH setAccessibilityIdentifier:@"on"];
    
    [self.bottomLeft setImage:[UIImage imageNamed:@"bottomLeft"]];
    [self.bottomLeft setAccessibilityIdentifier:@"on"];
    
    [self.bottomRight setImage:[UIImage imageNamed:nil]];
    [self.bottomLeft setAccessibilityIdentifier:@"off"];
    
    [self.bottomH setImage:[UIImage imageNamed:@"bottomH"]];
    [self.bottomH setAccessibilityIdentifier:@"on"];
    
}


@end
