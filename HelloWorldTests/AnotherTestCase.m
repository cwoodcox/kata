//
//  AnotherTestCase.m
//  HelloWorld
//
//  Created by Mike Petrogeorge on 6/25/13.
//  Copyright (c) 2013 Mike Petrogeorge. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface AnotherTestCase : XCTestCase

@end

@implementation AnotherTestCase

- (void)setUp
{
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testAgain
{
    //XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
    NSString *crap = @"";
    XCTAssertTrue(![crap isEqualToString:nil],@"not supposed to be nil");
}

@end
