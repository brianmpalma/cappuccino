/*
 * NSSearchField.j
 * nib2cib
 *
 * Created by Francisco Tolmasky.
 * Copyright 2010, 280 North, Inc.
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
 */

@import <AppKit/CPSearchField.j>
@import "NSTextField.j"


@implementation CPSearchField (NSCoding)

- (id)NS_initWithCoder:(CPCoder)aCoder
{
    self = [super NS_initWithCoder:aCoder];

    if (self)
    {
    }

    return self;
}

@end

@implementation NSSearchField : CPSearchField
{
}

- (id)initWithCoder:(CPCoder)aCoder
{
    self = [self NS_initWithCoder:aCoder];

    [self _initWithFrame:[self frame]];

    return self;
}

- (Class)classForKeyedArchiver
{
    return [CPSearchField class];
}

@end

@implementation NSSearchFieldCell : NSTextFieldCell
{
}
@end
