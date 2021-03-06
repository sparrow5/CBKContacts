//  The MIT License (MIT)
//
//  Copyright (c) 2015 CircleBack, Inc.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN

/*!
 * @abstract An immutable value object representing a postal address.
 *
 * @discussion CNPostalAddress is thread safe.
 */
@interface CBKPostalAddress : NSObject <NSCopying, NSMutableCopying, NSSecureCoding>

/*! multi-street address is delimited with carriage returns “\n” */
@property (readonly, copy, NS_NONATOMIC_IOSONLY) NSString *street;
@property (readonly, copy, NS_NONATOMIC_IOSONLY) NSString *city;
@property (readonly, copy, NS_NONATOMIC_IOSONLY) NSString *state;
@property (readonly, copy, NS_NONATOMIC_IOSONLY) NSString *postalCode;
@property (readonly, copy, NS_NONATOMIC_IOSONLY) NSString *country;
@property (readonly, copy, NS_NONATOMIC_IOSONLY) NSString *ISOCountryCode;

/*! Returns a user displayable property name. */
+ (NSString*)localizedStringForKey:(NSString *)key;

@end


// Properties that are always fetched. Can be used with key value coding and observing.
FOUNDATION_EXPORT NSString * const CNPostalAddressStreetKey;
FOUNDATION_EXPORT NSString * const CNPostalAddressCityKey;
FOUNDATION_EXPORT NSString * const CNPostalAddressStateKey;
FOUNDATION_EXPORT NSString * const CNPostalAddressPostalCodeKey;
FOUNDATION_EXPORT NSString * const CNPostalAddressCountryKey;
FOUNDATION_EXPORT NSString * const CNPostalAddressISOCountryCodeKey;

NS_ASSUME_NONNULL_END
