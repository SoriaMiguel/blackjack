Path: Backend Engineering (Ruby on Rails) - January 2017  Unit: Week 2 - Testing and a deeper look at Ruby
Casino Night at The Iron Yard! Featuring command line Blackjack

Objectives

Learning Objectives
After completing this assignment, you should…

Use control-flow (having the computer make decisions)
Create a user interface
Use data-flow (your deck is a unique set of resources)
Performance Objectives
After completing this assignment, you be able to effectively use

Classes
Arrays
Console / Terminal
Deliverables
A repo containing at least:
blackjack.rb : your game class
card.rb : your Card class
deck.rb : your Deck class
card_test.rb : Tests for your card class
deck_test.rb : Tests for your deck class
Requirements
You should create classes for your data, and use methods instead of having one big loop

Explorer Mode

don't consider Aces as possible 1's ... they are always 11s (this means you can bust on the deal)
This is a 2 hand game (dealer and player)
no splitting or funny business
1 deck in the game
52 card deck
NO WILDS
New deck every game
deck must be shuffled every game
no betting at all
must have suits (ace of diamonds)
Dealer hits if less than 16, otherwise dealer stays
You enter what you play (hit or stay)
No if you get 5 cards you win funnybusiness
get as close to 21 without going over
Must beat the dealer
you can see 1 of dealers cards, while you are playing and both when your hand is over.
If you get blackjack, you win automagically
Ties go to the player

Adventure Mode

You win if you have 6 cards and stay under 21
Dealer wins if it draws blackjack before any player actions
Ties go to the hand with the most cards, if still tied, it goes to the player

Epic Mode

Add the idea of tracking your progress as you play over time.
Let the player choose if an Ace is a 1 or an 11, or do it automatically.
Add 7 decks to the game in a "Shoe", shuffle them all together, deal from the "Shoe"

Legendary Mode

Tests for the game itself.
Support for splitting.
Have an advisor along the way that optionally gives a hint to the play on their best move.
Additional Resources

Play Blackjack
Info on Blackjack
