#include "Card.h"

@interface Card()
@end

@implementation Card

- (int) match:(NSArray *)otherCards
{
    int score = 0;
    for (Card *card in otherCards)
    {
        if([card.content isEqual:self.content]) {
            score = 1;
        }
    }
    return score;
}
@end