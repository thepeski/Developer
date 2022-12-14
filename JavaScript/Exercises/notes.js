
const myDeck = {
    deck: [],
    suits: ['hearts', 'clubs', 'spades', 'diamonds'],
    values: '2,3,4,5,6,7,8,9,10,J,Q,K,A',
    makeDeck() {
        const {suits, values, deck} = this;
        for (let value of values.split(',')) {
            for (let suit of suits) {
                deck.push({value, suit})
            }
        }
    }
};

myDeck.makeDeck();
console.log(myDeck.values);