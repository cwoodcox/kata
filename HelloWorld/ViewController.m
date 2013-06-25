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
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
