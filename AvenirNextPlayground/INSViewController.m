//
//  INSViewController.m
//  Berlin Insomniac
//
//  Created by Salánki, Benjamin on 09/07/14.
//  Copyright (c) 2014 Berlin Insomniac. All rights reserved.
//

#import "INSViewController.h"
#import "UIFont+AvenirNext.h"

@interface INSViewController () <UIPickerViewDataSource, UIPickerViewDelegate>

@end

@implementation INSViewController

#pragma mark - view life cycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - picker view data source

// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
	return 12;
}

#pragma mark - picker view delegate

- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    UILabel *label = (UILabel*)view;
	
    if (!label)
    {
		label = [[UILabel alloc] init];
		label.textAlignment = NSTextAlignmentCenter;
    }

    label.attributedText = [self pickerView:pickerView attributedTitleForRow:row forComponent:component];

	return label;
}


- (NSAttributedString *)pickerView:(UIPickerView *)pickerView attributedTitleForRow:(NSInteger)row forComponent:(NSInteger)component
{
	NSString *retVal = nil;
	
	switch (row)
	{
		case Regular:
		{
			retVal = @"AvenirNext-Regular";
		}
			break;

		case Bold:
		{
			retVal = @"AvenirNext-Bold";
		}
			break;

		case BoldItalic:
		{
			retVal = @"AvenirNext-BoldItalic";
		}
			break;

		case DemiBold:
		{
			retVal = @"AvenirNext-DemiBold";
		}
			break;

		case DemiBoldItalic:
		{
			retVal = @"AvenirNext-DemiBoldItalic";
		}
			break;

		case Heavy:
		{
			retVal = @"AvenirNext-Heavy";
		}
			break;

		case HeavyItalic:
		{
			retVal = @"AvenirNext-HeavyItalic";
		}
			break;

		case Italic:
		{
			retVal = @"AvenirNext-Italic";
		}
			break;

		case Medium:
		{
			retVal = @"AvenirNext-Medium";
		}
			break;

		case MediumItalic:
		{
			retVal = @"AvenirNext-MediumItalic";
		}
			break;

		case UltraLight:
		{
			retVal = @"AvenirNext-UltraLight";
		}
			break;

		case UltraLightItalic:
		{
			retVal = @"AvenirNext-UltraLightItalic";
		}
			break;

		default:
			break;
	}
		
	NSDictionary *attributes = @{NSFontAttributeName: [UIFont avenirNextFontOfType:row size:14.0]};
	
	return [[NSAttributedString alloc] initWithString:retVal attributes:attributes];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
	NSDictionary *attributes = @{NSFontAttributeName: [UIFont avenirNextFontOfType:row size:14.0]};

	self.label.attributedText = [[NSAttributedString alloc] initWithString:self.label.text attributes:attributes];
}

@end
