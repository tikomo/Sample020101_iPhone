//
//  ViewController.m
//  Sample020101
//
//  Created by tikomo on 2014/02/01.
//  Copyright (c) 2014年 tikomo. All rights reserved.
//

#import "ViewController.h"


// ここに関数を定義する
NSInteger intSort(id num1, id num2, void *context) {
    
    int v1 = [num1 intValue];
    int v2 = [num2 intValue];
    
    if (v1 < v2) {
        
        return NSOrderedAscending;
    } else if (v1 > v2) {
        return NSOrderedDescending;
    } else {
        return NSOrderedSame;
    }
}


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

    
    // 配列のネスティング
    NSMutableArray* theList = [NSMutableArray array];
    [theList addObject:@[@"AA", @"BB"]];
    [theList addObject:@[@"CC", @"DD"]];
    [theList addObject:@[@"EE", @"FF"]];
    
    NSLog(@"theList = %@", theList);
    NSLog(@"theList[0][0] = %@", theList[0][0]); // AA
    NSLog(@"theList[1][1] = %@", theList[1][1]); // DD
    
    NSMutableArray* theTable = [NSMutableArray array];
    NSMutableArray* row1 = [NSMutableArray array];
    NSMutableArray* row2 = [NSMutableArray array];
    NSMutableArray* row3 = [NSMutableArray array];
    
    [theTable addObject:@[row1]];
    [theTable addObject:@[row2]];
    [theTable addObject:@[row3]];
    
    
    [row1 addObject:@[@"row1_0", @"row1_1", @"row1_2"]];
    [row2 addObject:@[@"row2_0", @"row2_1", @"row2_2"]];
    [row3 addObject:@[@"row3_0", @"row3_1", @"row3_2"]];
    
    NSLog(@"%@", theTable[0]); //
    NSLog(@"%@", theTable[1]); //
    NSLog(@"%@", theTable[2]); //

    NSLog(@"%@", (theTable[0])[0][0][0]); // row1_0
    NSLog(@"%@", (theTable[0])[0][0][1]); // row1_2
    NSLog(@"%@", (theTable[0])[0][0][2]); // row1_2

    NSLog(@"%@", (theTable[1])[0][0][0]); // row1_0
    NSLog(@"%@", (theTable[1])[0][0][1]); // row1_2
    NSLog(@"%@", (theTable[1])[0][0][2]); // row1_2
    
    NSLog(@"%@", (theTable[2])[0][0][0]); // row1_0
    NSLog(@"%@", (theTable[2])[0][0][1]); // row1_2
    NSLog(@"%@", (theTable[2])[0][0][2]); // row1_2
    
    NSLog(@"----------");
    
    NSMutableArray* theTable20 = [NSMutableArray array];
    NSMutableArray* row21 = [NSMutableArray array];
    NSMutableArray* row22 = [NSMutableArray array];
    NSMutableArray* row23 = [NSMutableArray array];
    
    [theTable20 addObject:row21];
    [theTable20 addObject:row22];
    [theTable20 addObject:row23];

    [row21 addObject:@[@"row0_0", @"row0_1", @"row0_2"]];
    [row21 addObject:@[@"row1_0", @"row1_1", @"row1_2"]];
    
    [row22 addObject:@[@"row22_0", @"row22_1", @"row22_2"]];
    [row23 addObject:@[@"row23_0", @"row23_1", @"row23_2"]];
    
    NSLog(@"%@", theTable20); //
    NSLog(@"%@", (theTable20[0])); //
    
    NSLog(@"%@", (theTable20[0])[0][0]); // row0_0
    NSLog(@"%@", (theTable20[0])[0][1]); // row0_1
    NSLog(@"%@", (theTable20[0])[0][2]); // row0_2
    
    NSLog(@"%@", (theTable20[0])[1][0]); // row1_0
    NSLog(@"%@", (theTable20[0])[1][1]); // row1_1
    NSLog(@"%@", (theTable20[0])[1][2]); // row1_2
    
    //NSLog(@"%@", theTable20[1]); //
    //NSLog(@"%@", theTable20[2]); //
    
    // うーん...いまいちわからないね...
    // 先に進もう！
    
    // 配列を検索する
    NSArray* cities = @[@"横浜", @"銀座", @"渋谷", @"新宿"];
    NSUInteger index = [cities indexOfObject:@"渋谷"];
    if (index != NSNotFound) {
        NSLog(@"index = %d", index); // index = 2
    } else {
        NSLog(@"見つかりませんでした。");
    }
    
    // 配列に含まれているか調べる
    BOOL isFound = [cities containsObject:@"渋谷"];
    
    if (isFound) {
        NSLog(@"含まれている");
    } else {
        NSLog(@"含まれていない");
    }
    
    NSString* city = @"池袋";
    
    isFound = [cities containsObject:city];

    if (isFound) {
        NSLog(@"含まれている");
    } else {
        NSLog(@"含まれていない");
    }
    
    
    // 配列をソートする
    NSArray* arrFruits = @[@"Melon", @"Peach", @"Apple", @"Orange"];
    NSArray* sortedArrFruits = [arrFruits sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)];
    
    NSLog(@"%@", arrFruits); // Melon,    Peach,    Apple,    Orange
    NSLog(@"%@", sortedArrFruits); // Apple,    Melon,    Orange,    Peach
    
    // 昇順
    NSArray* sortedA = [arrFruits sortedArrayUsingDescriptors:@[[NSSortDescriptor sortDescriptorWithKey:@"" ascending:YES]]];
    
    // 降順
    NSArray* sortedB = [arrFruits sortedArrayUsingDescriptors:@[[NSSortDescriptor sortDescriptorWithKey:@"" ascending:NO]]];
    
    NSLog(@"asc = %@", sortedA);
    NSLog(@"desc = %@", sortedB);

    // 配列を逆にする
    NSArray* reversList = [[arrFruits reverseObjectEnumerator] allObjects];
    NSLog(@"revers = %@", reversList);
    
    
    // オリジナルの比較関数を使ってソートする
    
    // 比較関数inSort()(<-自作の関数)を使ってソートする
    NSMutableArray* vListA = [NSMutableArray arrayWithCapacity:10];
    NSInteger vA;
    
    for (int i = 0; i < 10; i++) {
        vA = arc4random() % 30; // 0 - 29 までの乱数の生成
        [vListA addObject:[NSNumber numberWithInteger:vA]];
    }
    NSLog(@"%@", vListA); // ソート前
    
    // ソートした配列を作る
    NSArray* listA = [vListA sortedArrayUsingFunction:intSort context:nil];
    NSLog(@"%@", listA); // ソート後
    
    
    //
    // 条件でフィルタリング
    //
    
    // 先頭の文字でフィルタリング
    NSMutableArray* numbers_T = [NSMutableArray arrayWithArray:@[@"one", @"two", @"three", @"four", @"five"]];
    
    //
    // Tで始まる値 - @"%K beginswith %@", @"self", @"T"
    // %K の位置に self, %@ の位置に T に置き換えます。
    // @"self beginswith 'T'" と同じになります。
    //
    NSPredicate* predicate = [NSPredicate predicateWithFormat:@"%K beginswith %@", @"self", @"t"];
    [numbers_T filterUsingPredicate:predicate];
    
    NSLog(@"%@", numbers_T); // two, three
    
    //
    // 含まれている文字で抽出する
    // contains は指定の文字が含まれている値を抽出
    //
    NSMutableArray* numbers_E = [NSMutableArray arrayWithArray:@[@"one", @"two", @"three", @"four", @"five"]];
    NSPredicate* predicate2 = [NSPredicate predicateWithFormat:@"%K contains %@", @"self", @"e"];
    [numbers_E filterUsingPredicate:predicate2];
    
    NSLog(@"%@", numbers_E); // one, three, five
    
    //
    // 文字数で抽出する
    // length >, <, >=, <=, ==
    //
    NSMutableArray* numbers_3 = [NSMutableArray arrayWithArray:@[@"one", @"two", @"three", @"four", @"five"]];
    NSPredicate* predicate3 = [NSPredicate predicateWithFormat:@"length == 3"];
    [numbers_3 filterUsingPredicate:predicate3];
    
    NSLog(@"%@", numbers_3 ); // one, three, five
    
    //
    // 10以上の値を抜き出す
    //
    NSMutableArray* numbers_4 = [NSMutableArray arrayWithArray:@[@3, @9, @11, @13, @18]];
    NSPredicate* predicate4 = [NSPredicate predicateWithFormat:@"%K >= %d", @"self", 10];
    [numbers_4 filterUsingPredicate:predicate4];
    
    NSLog(@"%@", numbers_4 ); // one, three, five
    
    
    
    
    
    
    
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
