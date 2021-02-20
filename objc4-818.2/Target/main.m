//
//  main.m
//  Target
//
//  Created by Sea on 2021/1/21.
//
/* 通过target -- Edit Scheme -- Run --Arguments -- Environment Variables配置，其中常用的环境变量主要有以下几个
 DYLD_PRINT_STATISTICS：设置 DYLD_PRINT_STATISTICS 为YES，控制台就会打印 App 的加载时长，包括整体加载时长和动态库加载时长，即main函数之前的启动时间（查看pre-main耗时），可以通过设置了解其耗时部分，并对其进行启动优化。
 OBJC_DISABLE_NONPOINTER_ISA：杜绝生成相应的nonpointer isa（nonpointer isa指针地址 末尾为1 ），生成的都是普通的isa
 OBJC_PRINT_LOAD_METHODS：打印 Class 及 Category 的 + (void)load 方法的调用信息
 NSDoubleLocalizedStrings：项目做国际化本地化(Localized)的时候是一个挺耗时的工作，想要检测国际化翻译好的语言文字UI会变成什么样子，可以指定这个启动项。可以设置 NSDoubleLocalizedStrings 为YES。
 NSShowNonLocalizedStrings：在完成国际化的时候，偶尔会有一些字符串没有做本地化，这时就可以设置NSShowNonLocalizedStrings 为YES，所有没有被本地化的字符串全都会变成大写。
 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSObject *objc = [NSObject alloc];
        
        __weak typeof(objc) weakSelf = objc;
        
        NSLog(@"%@",objc);
        
    }
    return 0;
}
