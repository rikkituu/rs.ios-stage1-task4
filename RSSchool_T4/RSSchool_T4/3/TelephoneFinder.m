#import "TelephoneFinder.h"

@implementation TelephoneFinder
- (NSArray <NSString*>*)findAllNumbersFromGivenNumber:(NSString*)number {
    NSMutableArray *myStringSetOfCharacters = [[NSMutableArray alloc] init];
    if (number.intValue > 0) {
        for (unsigned long index = 0; index < (int)number.length; index++) {
            NSString *myChar = [NSString stringWithFormat:@"%C", [number characterAtIndex:index]];
            NSRange range = NSMakeRange(index,1);
            if (myChar.intValue == 0) {
                NSString *myNumber = [number stringByReplacingCharactersInRange:range withString:@"8"];
                [myStringSetOfCharacters addObject:myNumber];
            }
            if (myChar.intValue == 1) {
                NSString *myNumber = [number stringByReplacingCharactersInRange:range withString:@"2"];
                [myStringSetOfCharacters addObject:myNumber];
                myNumber = [myNumber stringByReplacingCharactersInRange:range withString:@"4"];
                [myStringSetOfCharacters addObject:myNumber];
            }
            if (myChar.intValue == 2) {
                NSString *myNumber = [number stringByReplacingCharactersInRange:range withString:@"1"];
                [myStringSetOfCharacters addObject:myNumber];
                myNumber = [myNumber stringByReplacingCharactersInRange:range withString:@"3"];
                [myStringSetOfCharacters addObject:myNumber];
                myNumber = [myNumber stringByReplacingCharactersInRange:range withString:@"5"];
                [myStringSetOfCharacters addObject:myNumber];
            }
            if (myChar.intValue == 3) {
                NSString *myNumber = [number stringByReplacingCharactersInRange:range withString:@"2"];
                [myStringSetOfCharacters addObject:myNumber];
                myNumber = [myNumber stringByReplacingCharactersInRange:range withString:@"6"];
                [myStringSetOfCharacters addObject:myNumber];
            }
            if (myChar.intValue == 4) {
                NSString *myNumber = [number stringByReplacingCharactersInRange:range withString:@"1"];
                [myStringSetOfCharacters addObject:myNumber];
                myNumber = [myNumber stringByReplacingCharactersInRange:range withString:@"5"];
                [myStringSetOfCharacters addObject:myNumber];
                myNumber = [myNumber stringByReplacingCharactersInRange:range withString:@"7"];
                [myStringSetOfCharacters addObject:myNumber];
            }
            if (myChar.intValue == 5) {
                NSString *myNumber = [number stringByReplacingCharactersInRange:range withString:@"2"];
                [myStringSetOfCharacters addObject:myNumber];
                myNumber = [myNumber stringByReplacingCharactersInRange:range withString:@"4"];
                [myStringSetOfCharacters addObject:myNumber];
                myNumber = [myNumber stringByReplacingCharactersInRange:range withString:@"6"];
                [myStringSetOfCharacters addObject:myNumber];
                myNumber = [myNumber stringByReplacingCharactersInRange:range withString:@"8"];
                [myStringSetOfCharacters addObject:myNumber];
            }
            if (myChar.intValue == 6) {
                NSString *myNumber = [number stringByReplacingCharactersInRange:range withString:@"3"];
                [myStringSetOfCharacters addObject:myNumber];
                myNumber = [myNumber stringByReplacingCharactersInRange:range withString:@"5"];
                [myStringSetOfCharacters addObject:myNumber];
                myNumber = [myNumber stringByReplacingCharactersInRange:range withString:@"9"];
                [myStringSetOfCharacters addObject:myNumber];
            }
            if (myChar.intValue == 7) {
                NSString *myNumber = [number stringByReplacingCharactersInRange:range withString:@"4"];
                [myStringSetOfCharacters addObject:myNumber];
                myNumber = [myNumber stringByReplacingCharactersInRange:range withString:@"8"];
                [myStringSetOfCharacters addObject:myNumber];
            }
            if (myChar.intValue == 8) {
                NSString *myNumber = [number stringByReplacingCharactersInRange:range withString:@"5"];
                [myStringSetOfCharacters addObject:myNumber];
                myNumber = [myNumber stringByReplacingCharactersInRange:range withString:@"7"];
                [myStringSetOfCharacters addObject:myNumber];
                myNumber = [myNumber stringByReplacingCharactersInRange:range withString:@"9"];
                [myStringSetOfCharacters addObject:myNumber];
                myNumber = [myNumber stringByReplacingCharactersInRange:range withString:@"0"];
                [myStringSetOfCharacters addObject:myNumber];
            }
            if (myChar.intValue == 9) {
                NSString *myNumber = [number stringByReplacingCharactersInRange:range withString:@"6"];
                [myStringSetOfCharacters addObject:myNumber];
                myNumber = [myNumber stringByReplacingCharactersInRange:range withString:@"8"];
                [myStringSetOfCharacters addObject:myNumber];
            }
        }
        return myStringSetOfCharacters;
    }
    else {return nil;}
}
@end
