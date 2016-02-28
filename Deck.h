#include <Foundation/Foundation.h>
#include "Card.h"

@interface Deck : NSObject

- (void) addCard:(Card *)card atTop:(BOOL)atTop;
- (Card *) drawRandomCard;

@end
