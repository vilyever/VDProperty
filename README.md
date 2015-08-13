# VDProperty
提取property的声明的属性

## Import
[CocoaPods](http://cocoapods.org)

`pod 'VDProperty', '~> 1.0.0'`

## Usage
```objective-c

#import "NSObject+VDProperty.h"

NSArray *properties = [[self class] vd_properties];

```

## Have
```objective-c

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) Class type;
@property (nonatomic, copy) NSString *typeName;
@property (nonatomic, assign, readonly) VDPropertyPrimitiveType primitiveType;

/** 所属类  */
@property (nonatomic, copy) Class ownerClass;

/** 若为Struct */
@property (nonatomic, copy) NSString *structName;

/** 若为Union */
@property (nonatomic, copy) NSString *unionName;

/** 所有的protocol Name */
@property (nonatomic, strong, readonly) NSArray *protocols;

@property (nonatomic, assign, readonly) BOOL isIgnore;
@property (nonatomic, assign, readonly) BOOL isReadonly;
@property (nonatomic, assign, readonly) BOOL isStrong; // or retain
@property (nonatomic, assign, readonly) BOOL isWeak;
@property (nonatomic, assign, readonly) BOOL isCopy;
@property (nonatomic, assign, readonly) BOOL isAssign;
@property (nonatomic, assign, readonly) BOOL isDynamic;
@property (nonatomic, assign, readonly) BOOL isNonatomic;
@property (nonatomic, assign, readonly) BOOL isPrimitive;
@property (nonatomic, assign, readonly) BOOL isID;
@property (nonatomic, assign, readonly) BOOL isSEL;
@property (nonatomic, assign, readonly) BOOL isMutable;
@property (nonatomic, assign, readonly) BOOL isStruct;
@property (nonatomic, assign, readonly) BOOL isUnion;
@property (nonatomic, assign, readonly) BOOL isPointer;

@property (nonatomic, assign, readonly) VDPropertyAccessorType getterType;
@property (nonatomic, copy) NSString *getterSelectorName;

@property (nonatomic, assign, readonly) VDPropertyAccessorType setterType;
@property (nonatomic, copy) NSString *setterSelectorName;

```

## License

[MIT license](LICENSE)
