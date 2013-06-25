//
//  ViewController.m
//  HelloWorld
//
//  Created by Mike Petrogeorge on 6/25/13.
//  Copyright (c) 2013 Mike Petrogeorge. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
   // NSDictionary *mainDictionary = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"WeatherTemps" ofType:@"plist"]];
    
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"WeatherTemps" ofType:@"plist"];
    
  
    
    //Since your plist's root is a dictionary else you should form NSArray from contents of plist
   NSDictionary *mainDictionary = [NSDictionary dictionaryWithContentsOfFile:plistPath];
    
//    _day.text = @"14";
//    _min.text = @"59";
//    _max.text = @"61";

    _day.text = [mainDictionary objectForKey:@"day"];
    _min.text = [mainDictionary objectForKey:@"min"];
    _max.text = [mainDictionary objectForKey:@"max"];
    
    NSString *myString = @"Abc, Def, Ghi, Lmno";
   //NSArray *myArray = [myString componentsSeparatedByString:@","];
    
    NSString* path = [[NSBundle mainBundle] pathForResource:@"football"
                                                     ofType:@"csv"];
    NSString* content = [NSString stringWithContentsOfFile:path
                                                  encoding:NSUTF8StringEncoding
                                                     error:NULL];
    
    NSArray *lines = [content componentsSeparatedByString:@"\n"];
    NSString *line;
    NSMutableArray *scores = [[NSMutableArray alloc] init];

    for(line in lines) {
        [scores addObject:[line componentsSeparatedByString:@","] ];
    }
    
    NSArray *record;
    NSArray *best = scores[0];
    for(record in scores) {
        if(([record[1] integerValue] - [record[2] integerValue]) < ([best[1] integerValue] - [best[2] integerValue])) {
            best = record;
        }
    }
    
    NSLog(@"%s", __FUNCTION__);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
