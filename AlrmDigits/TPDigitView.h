//
//  TPDigitView.h
//  AlrmDigits
//
//  Created by Tim on 14/03/2013.
//  Copyright (c) 2013 Charismatic Megafauna Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TPDigitView : UIView

+(UIView *) viewWithNibName:(NSString *)nibName owner:(NSObject *)owner;
    
-(void)clearAllSegments;
-(void)setAllSegments;
-(void)setSegmentsForCharacter:(NSString *)character;

@end
