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

@import AddressBook;
#import "CBKContactRelation.h"
#import "NSObject+CBKContacts.h"

@interface CBKContactRelation()

@property (readwrite, copy, NS_NONATOMIC_IOSONLY) NSString *name;

@end

@implementation CBKContactRelation

+ (instancetype)contactRelationWithName:(NSString *)name
{
    CBKContactRelation *relation = [[self alloc] initWithName:name];
    return relation;
}

- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    self.name = name;
    
    return self;
}

- (NSString *)debugDescription
{
    return [self description];
}

- (NSString *)description
{
    NSString *className = NSStringFromClass(self.class);
    NSString *params = [@"name=" stringByAppendingString:self.name];
    
    return [NSString stringWithFormat:@"<%@: %@: %@>", className, [self _cbk_addressString], params];
}

#pragma mark - NSCopying
- (instancetype)copyWithZone:(nullable NSZone *)zone
{
    return [[self.class alloc] init];
}


#pragma mark - NSCoding
- (instancetype)initWithCoder:(nonnull NSCoder *)aDecoder
{
    return [super init];
}

- (void)encodeWithCoder:(nonnull NSCoder *)aCoder
{
    
}

+ (BOOL)supportsSecureCoding
{
    return YES;
}

@end

// These should map to ABAddressbook contants but they're not compile-time
// constants, so we need to define here.
// These are however the same value as kABPersonMotherLabel and friends
NSString * const CBKLabelContactRelationFather       = @"_$!<Father>!$_";
NSString * const CBKLabelContactRelationMother       = @"_$!<Mother>!$_";
NSString * const CBKLabelContactRelationParent       = @"_$!<Parent>!$_";
NSString * const CBKLabelContactRelationBrother      = @"_$!<Brother>!$_";
NSString * const CBKLabelContactRelationSister       = @"_$!<Sister>!$_";
NSString * const CBKLabelContactRelationChild        = @"_$!<Child>!$_";
NSString * const CBKLabelContactRelationFriend       = @"_$!<Friend>!$_";
NSString * const CBKLabelContactRelationSpouse       = @"_$!<Spouse>!$_";
NSString * const CBKLabelContactRelationPartner      = @"_$!<Partner>!$_";
NSString * const CBKLabelContactRelationAssistant    = @"_$!<Assistant>!$_";
NSString * const CBKLabelContactRelationManager      = @"_$!<Manager>!$_";
