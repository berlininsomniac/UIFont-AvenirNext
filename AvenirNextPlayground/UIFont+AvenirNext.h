//
//  UIFont+AvenirNext.h
//  Berlin Insomniac
//
//  Created by Salánki, Benjamin on 09/07/14.
//  Copyright (c) 2014 Berlin Insomniac. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *	AvenirNextFontType collects all available fonts in the Avenir Next family. To be used with [UIFont(AvenirNext) avenirNextFontOfType:size:]
 */

typedef NS_ENUM(NSUInteger, AvenirNextFontType)
{
	/**
	 *	Font named AvenirNext-Regular.
	 */
	
	Regular = 0,
	
	/**
	 *	Font named AvenirNext-Bold.
	 */
	
	Bold,
	
	/**
	 *	Font named AvenirNext-BoldItalic.
	 */
	
	BoldItalic,
	
	/**
	 *	Font named AvenirNext-DemiBold.
	 */
	
	DemiBold,
	
	/**
	 *	Font named AvenirNext-DemiBoldItalic.
	 */
	
	DemiBoldItalic,
	
	/**
	 *	Font named AvenirNext-Heavy.
	 */
	
	Heavy,
	
	/**
	 *	Font named AvenirNext-HeavyItalic.
	 */
	
	HeavyItalic,
	
	/**
	 *	Font named AvenirNext-Italic.
	 */
	
	Italic,
	
	/**
	 *	Font named AvenirNext-Medium.
	 */
	
	Medium,
	
	/**
	 *	Font named AvenirNext-MediumItalic.
	 */
	
	MediumItalic,
	
	/**
	 *	Font named AvenirNext-UltraLight.
	 */
	
	UltraLight,
	
	/**
	 *	Font named AvenirNext-UltraLightItalic.
	 */
	
	UltraLightItalic
};

/** The UIFont+AvenirNext category on UIFont makes accessing fonts in the Avenir Next font family easy. */

@interface UIFont (AvenirNext)

/**-----------------------------------------------------------------------------
 * @name Accessing fonts from the 'Avenir Next' family
 * -----------------------------------------------------------------------------
 */

/** Returns a UIFont from the Avenir Next family.
 *
 * @param type The type of the font in the Avenir Next family. @see AvenirNextFontType for possible values. The default type is Regular.
 * @param size Size of the font in points.
 * @return A UIFont object of the appropriate type, nil if the font could not be created.
 */

+ (UIFont *)avenirNextFontOfType:(AvenirNextFontType)type size:(CGFloat)size;

@end
