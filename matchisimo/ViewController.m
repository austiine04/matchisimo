#import "ViewController.h"
#import "PlayingCardDeck.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) Deck *deck;
@end

@implementation ViewController

- (Deck *)deck
{
    if(!_deck) _deck = [[PlayingCardDeck alloc] init];
    return _deck;
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

- (IBAction)touchCardButton:(UIButton*)sender
{
    if ([sender.currentTitle length]) {
        [sender setTitle:@"" forState:UIControlStateNormal];
        [sender setBackgroundImage:[UIImage imageNamed:@"background"]
                          forState:UIControlStateNormal];
    } else {
        Card *card = [self.deck drawRandomCard];
        if(card){
            [sender setTitle:card.content forState:UIControlStateNormal];
            [sender setBackgroundImage:[UIImage imageNamed:@"card"] forState:UIControlStateNormal];
            self.flipCount++;
        }
    }
}

@end
