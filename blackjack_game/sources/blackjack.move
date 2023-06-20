module blackjack_game::blackjack {
  use sui::object::{Self,ID, UID};
  use std::option::{Self, Option, none};
  use std::string::{Self, String};
  use sui::coin::{Self, Coin};
  use sui::balance::Balance;
  use sui::sui::SUI;
  use sui::tx_context::{Self, TxContext};
  use sui::transfer;
  
  struct GameTable has key, store {
    id: UID,
    player_hand: Hand,
    dealer_hand: Hand,
    card_deck: CardDeck,
    money_box: MoneyBox,
    is_playing: u64,
  }

  struct Hand has key, store {
    id: UID,
    account: address,
    cards: vector<Card>,
    game_id: ID,
  }

  struct CardDeck has key, store {
    id: UID,
    cards: vector<Card>,
    total_cards_number: u64,
    game_id: ID,
  }
  struct Card has key, store {
    id: UID,
    number: String,
    is_open: bool,
    sequence_number: u64,
    card_deck_id: ID,
  }
  // TODO : sui -> casino chips
  struct MoneyBox has key, store {
    id: UID,
    stake: vector<Coin<SUI>>, 
    game_id: ID,
  }   
  fun init(ctx: &mut TxContext) {
    create_game(ctx);
  }
  public entry fun new_game(ctx: &mut TxContext) {
    create_game(ctx);
  }
  fun create_game(ctx: &mut TxContext) {
    // create game table
    // create cards and card deck
    // create money box
    // create game table
    // create card deck and transfer card dect to game table
  }
  fun create_game_table() {
  }
  fun create_game_place() {

  }
  fun create_card_deck() {
     // create_cards
  }
  fun create_card() {
  }

  fun give_card_to() {
  }

  fun encrypt_card_number() {
  }

  fun decrypt_card_number() {
  }

  fun check_is_over_16() {
    // check that total of card number is over 16
  }

  fun check_is_over_21() {
    // check that total of card number is over 21
  }

  fun check_is_blackjack() {
    // check that total of card number is equal to 21
  }

  // check whether this is necessary
  // fun merge_sui_objects_in_moneybox() {}
  

  

  // dealer action from BE
  public entry fun start_game() {
  }
  
  public entry fun end_game() {
  }
  

  // player action from FE
  public entry fun ready_game() {
    // transfer ready object to game table
    // transfer or share an object? (choose later)
    // bet some sui
  }

  public entry fun bet() {
    // transfer sui object to money box
  }

  public entry fun get_card() {
     // bet()
     // next turn
  }
  public entry fun stop() {
     //next turn
  }

  fun next_turn() {
    
  }
  
}