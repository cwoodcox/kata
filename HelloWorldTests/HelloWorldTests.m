//
//  HelloWorldTests.m
//  HelloWorldTests
//
//  Created by Mike Petrogeorge on 6/25/13.
//  Copyright (c) 2013 Mike Petrogeorge. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface HelloWorldTests : XCTestCase

@end

@implementation HelloWorldTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testExample
{
   // XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
    
    NSString *crap = @"";
    XCTAssertTrue(![crap isEqualToString:nil],@"not supposed to be nil");
}

@end
