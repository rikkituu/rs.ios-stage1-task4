#import "SquareDecomposer.h"

@implementation SquareDecomposer
- (NSArray <NSNumber*>*)decomposeNumber:(NSNumber*)number {
    if ([number intValue] >= 1234567) {
        return nil;
    }
    
    if (number.intValue <= 3) {return nil;}
    long long int squareN = number.longLongValue * number.longLongValue;
    long long int squareProcess = squareN;
    NSMutableArray *resultArray = [[NSMutableArray alloc] init];
    long long int i = number.intValue - 1;
    for (i = i; i > 0; i--) {
        squareProcess = squareProcess - i*i;
        if (squareProcess >= 0) {
            [resultArray addObject:[NSNumber numberWithLongLong: i]];
        }
        else {
            squareProcess = squareProcess + i*i;
        }
        
    }
    long long int myResult = 0;
    for (i = 0; i < resultArray.count; i++) {
        myResult = myResult + [resultArray[i] longLongValue] * [resultArray[i] longLongValue];
    }
    
//    NSLog(@"Initial array: %@", resultArray);
    
    if (myResult == squareN) {
        return [[resultArray reverseObjectEnumerator] allObjects];
    } else {
        long long int myNewResult = 0;
        do {
            myNewResult = 0;
            
            [resultArray removeLastObject]; // удаляем единицу
            long long int lastElement = [[resultArray lastObject] longLongValue] - 1; // число перед единицей
            [resultArray removeLastObject];
            [resultArray addObject:[NSNumber numberWithLongLong:lastElement]];
            
            long long int surplus = 0;
            for (int j = 0; j < resultArray.count; j++) {
                surplus =  surplus + [resultArray[j] intValue]*[resultArray[j] intValue];
            }
            surplus = squareN - surplus;
            long long int surplusProcess = surplus;
            for (long long int k = lastElement-1; k > 0; k--) {
                surplusProcess = surplus - k*k;
                if (surplusProcess >= 0) {
                    [resultArray addObject:[NSNumber numberWithLongLong: k]];
                    surplus = surplus - k * k;
                }
            }
            
            for (int k = 0; k < resultArray.count; k++) {
                myNewResult = myNewResult + [resultArray[k] intValue] * [resultArray[k] intValue];
            }
            
//            NSLog(@"Array: %@", resultArray);
        } while (myNewResult != squareN && resultArray.count != 1);
    }
    
    int some = 0;
    for (int i = 0; i < resultArray.count; i++) {
        some = some + [resultArray[i] intValue] * [resultArray[i] intValue];
    }
//    NSLog(@"Product: %d", some);
    
    return [[resultArray reverseObjectEnumerator] allObjects];
}
@end
