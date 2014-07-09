//
//  UIFont+AvenirNext.m
//  Berlin Insomniac
//
//  Created by Salánki, Benjamin on 09/07/14.
//  Copyright (c) 2014 Berlin Insomniac. All rights reserved.
//

#import "UIFont+AvenirNext.h"

@implementation UIFont (AvenirNext)

+ (UIFont *)avenirNextFontOfType:(AvenirNextFontType)type size:(CGFloat)size
{
	NSString *fontName = nil;
	
	switch (type)
	{
		case Regular:
		{
			fontName = @"AvenirNext-Regular";
		}
			break;
			
		case Bold:
		{
			fontName = @"AvenirNext-Bold";
		}
			break;
			
		case BoldItalic:
		{
			fontName = @"AvenirNext-BoldItalic";
		}
			break;
			
		case DemiBold:
		{
			fontName = @"AvenirNext-DemiBold";
		}
			break;
			
		case DemiBoldItalic:
		{
			fontName = @"AvenirNext-DemiBoldItalic";
		}
			break;
			
		case Heavy:
		{
			fontName = @"AvenirNext-Heavy";
		}
			break;
			
		case HeavyItalic:
		{
			fontName = @"AvenirNext-HeavyItalic";
		}
			break;
			
		case Italic:
		{
			fontName = @"AvenirNext-Italic";
		}
			break;
			
		case Medium:
		{
			fontName = @"AvenirNext-Medium";
		}
			break;
			
		case MediumItalic:
		{
			fontName = @"AvenirNext-MediumItalic";
		}
			break;
			
		case UltraLight:
		{
			fontName = @"AvenirNext-UltraLight";
		}
			break;
			
		case UltraLightItalic:
		{
			fontName = @"AvenirNext-UltraLightItalic";
		}
			break;
	}
	
	return [UIFont fontWithName:fontName size:size];
}

@end
