//
//  Student.h
//  OCDemo
//
//  Created by zz on 2022/3/9.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) double score;

-(void)learnWithWord:(NSString *)word;
@end

NS_ASSUME_NONNULL_END
