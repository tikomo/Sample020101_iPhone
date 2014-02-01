//
//  ViewController.m
//  Sample020101
//
//  Created by tikomo on 2014/02/01.
//  Copyright (c) 2014年 tikomo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    // NSArrayクラスの配列を作る
    NSArray* device = @[@"AAA", @"BBB", @"CCC"];
    
    NSLog(@"device %@", device);
    
    
    // 数値の配列を作る
    NSArray* num =@[@10, @11, @12];
    
    NSLog(@"num %@", num);
    
    NSArray* num1 =@[@(10), @(11), @(12)];
    
    NSLog(@"num %@", num1);
    
    
    // 数値が入った変数の配列を作る
    int a =10;
    float b = 0.52;
    double c = 45.6;
    
    NSArray* vList = @[@(a), @(b), @(c)];
    NSLog(@"%@", vList);
    
    NSLog(@"%@", vList[0]);
    NSLog(@"%@", vList[1]);
    NSLog(@"%@", vList[2]);
    
    NSLog(@"%d", vList.count); // 配列数
    
    NSString* str = [vList lastObject]; // 配列の最後のオブジェクト
    NSLog(@"%@", str);
    
    NSArray* vList1;
    NSString* str1 = [vList1 lastObject]; // 配列の最後のオブジェクト
    NSLog(@"%@", str1); // (null)
    
    // 数値の取り出し
    // 数値はNSNumberクラスの数値オブジェクトして配列に入れますが、配列から数値オブジェクト
    // を取り出してもそのまま計算には使えません。
    // 数値オブジェクトを計算処理に使える数値に戻すには、intValue, floatValueメソッドを
    // 使います。BOOL値の場合はboolValueメソッドを使います。
    NSArray* nums = @[@300, @0.05];
    int val1 = [nums[0] intValue];
    float val2 = [nums[1] floatValue];
    
    NSLog(@"%d", val1);
    NSLog(@"%0.2f", val2);
    
    // 配列の取り出し
    NSArray* numsA = @[@100, @200, @300, @400, @500];
    for (int i = 0; i < numsA.count; i++) {
        
        NSLog(@"Object [%d] = %@", i, numsA[i]);
        NSLog(@"int [%d] = %d", i, [numsA[i] intValue]);
        
    }
    
    NSLog(@"-----レガシーシンタックス(古い書き方の場合)");
    // Edit - Refactor - Convert to Moden Objective-C Syntax でモダンシンタックスへ変換出来ます。
    // 最後に"nil"をつけないとだめ
    NSArray* arrStr = [NSArray arrayWithObjects:@"AA", @"BB", @"CC", nil];
    NSArray* arrInt = [NSArray arrayWithObjects:@10, @20, @30, nil];
    
    NSString* strB = [arrStr objectAtIndex:1];
    NSLog(@"%@", strB); // BB
    
    NSString* intB = [arrInt objectAtIndex:1];
    NSLog(@"%d", [intB intValue]); // 20
    
    
    // 要素を追加削除出来る NSMutableArray クラス
    NSMutableArray* devices = [NSMutableArray array];
    [devices addObject:@"AAA"];
    [devices addObjectsFromArray:@[@"BBB", @"CCC"]];

    NSLog(@"%@", devices);
    
    NSMutableArray* randomList = [NSMutableArray array];
    NSInteger v;
    
    for (int i = 0; i < 50; i++) {
        v = arc4random() % 10;
        
        [randomList addObject:@(v)];
    }
    NSLog(@"%@", randomList);
    
    
    // 配列に値を挿入する
    NSMutableArray* fruits = [NSMutableArray arrayWithArray:@[@"apple", @"prange"]];
    
    [fruits insertObject:@"strawberry" atIndex:1];
    NSLog(@"%@", fruits);
    
    
    // 配列の値を削除する
    NSArray* colors = @[@"red", @"yellow", @"blue", @"black", @"white"];
    NSMutableArray* newColor = [NSMutableArray arrayWithArray:colors];
    
    [newColor removeObjectAtIndex:2]; // remove "blue"
    NSLog(@"remove idx 2 = %@", newColor);

    [newColor removeObject:@"black"];
    NSLog(@"remove black = %@", newColor);

    
    
    
    
    
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
