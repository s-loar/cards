defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "creates a deck" do
    assert Cards.create_deck == ["Ace", "Two", "Three"]
  end

  test "shuffles a deck" do
    deck = Cards.create_deck
    new_deck = Cards.shuffle(deck) 
    assert length(deck) == length(new_deck)
    assert Cards.contains?(deck, Enum.at(new_deck, 0))
    assert Cards.contains?(deck, Enum.at(new_deck, 1))
    assert Cards.contains?(deck, Enum.at(new_deck, 2))
  end

  test "contains?" do 
    deck = Cards.create_deck
    assert Cards.contains?(deck, "Ace") == true 
    assert Cards.contains?(deck, "King") == false
  end
end
