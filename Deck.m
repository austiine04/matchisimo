#import "Deck.h"

@interface Deck()
@property (strong, nonatomic) NSMutableArray *cards;
@end

@implementation Deck

- (NSMutableArray *)cards
{
    if (!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

- (void) addCard:(id)card atTop:(BOOL)atTop
{
    if (atTop){
        [self.cards insertObject:card atIndex:atTop];
    } else {
        [self.cards addObject:card];
    }
}

- (Card *) drawRandomCard
{
    Card *randomCard = nil;
    NSUInteger numberOfCards = [self.cards count];

    if (numberOfCards) {
        unsigned index = arc4random() % numberOfCards;
        randomCard = self.cards[index];
        [self.cards removeObject:randomCard];
    }
    return randomCard;
}

@end