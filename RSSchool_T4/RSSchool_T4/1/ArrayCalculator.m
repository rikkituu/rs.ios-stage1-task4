#import "ArrayCalculator.h"

@implementation ArrayCalculator
+ (NSInteger)maxProductOf:(NSInteger)numberOfItems itemsFromArray:(NSArray *)array {
    NSMutableArray *arrayOfNumbers = [[NSMutableArray alloc] init]; //  массив чисел
    for (int i = 0; i < array.count; i++) {
        if ( [array[i] isKindOfClass:[NSNumber class]] ) {
            [arrayOfNumbers addObject:array[i]];
        }
    }
    if (arrayOfNumbers.count <= 0) {
        return 0;
    }
    
    NSInteger k = MIN(arrayOfNumbers.count, numberOfItems); //  по сколько элементов сочетания
    
    NSMutableArray *combination = [[NSMutableArray alloc] init]; //  массив индексов за проход
    NSInteger maxValue = NSIntegerMin; //  максимальное произведение
    for (int index = 0; index < k; index++) {
        [combination addObject:[NSNumber numberWithInt:index]];
    }
    while (YES) {
        NSInteger lastIndex = [[combination lastObject] integerValue]; //  значение последнего индекса (не число, а индекс!)
        NSInteger prefix = [arrayOfNumbers[[combination[0] integerValue]] integerValue];//значение нулевого элемента исходного массива (для сравнения)
        NSInteger n = arrayOfNumbers.count; //  количество всех чисел
        
        for (NSUInteger i = 1; i < combination.count - 1; i++) {
            NSInteger index = [combination[i] integerValue];//  значение индекса элемента массива combination
            prefix = prefix * [arrayOfNumbers[index] integerValue];
        };
        
        while (lastIndex < n) {
            NSInteger value = [arrayOfNumbers[lastIndex] integerValue];
            NSInteger product = prefix * value;
            maxValue = MAX(maxValue, product);
            lastIndex++;
        }
        for (NSInteger i = combination.count - 2; i >= 0; i--) {
            NSInteger current = [combination[i] integerValue]; //
            current++;
            NSInteger countOfIndexesAfterI = combination.count - i - 1; // [1] => 1 //
            NSInteger maxCount = arrayOfNumbers.count - countOfIndexesAfterI; // 5 - 1 = 4
            if (current < maxCount) {
                combination[i] = [NSNumber numberWithInteger:current];
                for (NSInteger j = i + 1; j < combination.count; j++) {
                    combination[j] = [NSNumber numberWithInteger:(current + (j - i))];
                }
                i = -1;
            } else {
                if (i == 0) {
                    return maxValue;
                }
            }
        }
    }
    return maxValue;
}
@end
