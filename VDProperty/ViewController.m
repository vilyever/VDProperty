//
//  ViewController.m
//  VDProperty
//
//  Created by FTET on 15/8/13.
//  Copyright (c) 2015年 vilyever. All rights reserved.
//

#import "ViewController.h"

#import "NSObject+VDProperty.h"

typedef NS_ENUM(NSInteger, TestType) {
    TestTypeTest
};

typedef int (^typedefBlock)(int x);

union TestUnion {
    int x;
};
typedef union TestUnion TestUnion;

@interface ViewController ()

- (id)gData;
- (void)setThisData:(id)data;

@property (nonatomic, assign) int intValue;

@property (nonatomic, assign) unsigned unsignedValue;

@property (nonatomic, assign) short shortValue;

@property (nonatomic, assign) unsigned short unsignedShortValue;

@property (nonatomic, assign) long mylonValue;

@property (nonatomic, assign) unsigned long myunsignedLonValue;

@property (nonatomic, assign) long long longLongValue;

@property (nonatomic, assign) unsigned long long unsignedLongLongValue;

@property (nonatomic, assign) char charValue;

@property (nonatomic, assign) unsigned char unsignedCharValue;

@property (nonatomic, assign) float floatValue;

@property (nonatomic, assign) double doubleValue;

@property (nonatomic, assign) long double longDoubleValue;

@property (nonatomic, copy) void (^voidBlock)();
@property (nonatomic, copy) typedefBlock typedefBlockTest;

@property (nonatomic, assign) void *voidPointerValue;

@property (nonatomic, assign) id idValue;

@property (nonatomic, assign) Class classValue;

@property (nonatomic, assign) SEL selValue;

@property (nonatomic, assign) CGRect struckValue;

@property (nonatomic, assign) TestUnion unionValue;

@property (atomic, assign) id atomicValue;

@property (nonatomic, weak) id weakValue;

@property (nonatomic, copy) NSString<VDPropertyIgnore> *valueThatCopy;

@property (nonatomic, strong) id strongValue;

@property (nonatomic, retain) id retainValue;

@property (nonatomic, unsafe_unretained) id unsafe_unretainedValue;

@property (nonatomic, assign, readonly) id readonlyValue;

@property (nonatomic, assign, readwrite) id readwriteValue;

@property (nonatomic, assign, setter=setThisData:) id setterValue;

@property (nonatomic, assign, getter=gData) id getterValue;

@property (nonatomic, assign, setter=setThisData:, getter=gData) id setterGetterValue;

@property (nonatomic, assign) NSArray *arrayValue;

@property (nonatomic, assign) NSMutableArray *mutableArrayValue;

@property (nonatomic, weak, readonly) id weakReadonlyValue;

@property (nonatomic, strong) id dynamicValue;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"%@", [[self class] vd_properties]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
