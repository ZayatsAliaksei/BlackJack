class Deck

  attr_accessor :deck

  def initialize
    # s-Spades;h-Heart;d-Diamond;c-Club
    @deck = {
      s_ace: ["\u{1F0A1}", 1, 11],
      s2: ["\u{1F0A2}", 2],
      s3: ["\u{1F0A3}", 3],
      s4: ["\u{1F0A4}", 4],
      s5: ["\u{1F0A5}", 5],
      s6: ["\u{1F0A6}", 6],
      s7: ["\u{1F0A7}", 7],
      s8: ["\u{1F0A8}", 8],
      s9: ["\u{1F0A9}", 9],
      s10: ["\u{1F0AA}", 10],
      s_jack: ["\u{1F0AB}", 10],
      s_queen: ["\u{1F0AD}", 10],
      s_king: ["\u{1F0AE}", 10],
      h_ace: ["\u{1F0B1}", 1, 11],
      h2: ["\u{1F0B2}", 2],
      h3: ["\u{1F0B3}", 3],
      h4: ["\u{1F0B4}", 4],
      h5: ["\u{1F0B5}", 5],
      h6: ["\u{1F0B6}", 6],
      h7: ["\u{1F0B7}", 7],
      h8: ["\u{1F0B8}", 8],
      h9: ["\u{1F0B9}", 9],
      h10: ["\u{1F0BA}", 10],
      h_jack: ["\u{1F0BB}", 10],
      h_queen: ["\u{1F0BD}", 10],
      h_king: ["\u{1F0BE}", 10],
      d_ace: ["\u{1F0C1}", 1, 11],
      d2: ["\u{1F0C2}", 2],
      d3: ["\u{1F0C3}", 3],
      d4: ["\u{1F0C4}", 4],
      d5: ["\u{1F0C5}", 5],
      d6: ["\u{1F0C6}", 6],
      d7: ["\u{1F0C7}", 7],
      d8: ["\u{1F0C8}", 8],
      d9: ["\u{1F0C9}", 9],
      d10: ["\u{1F0CA}", 10],
      d_jack: ["\u{1F0CB}", 10],
      d_queen: ["\u{1F0CD}", 10],
      d_king: ["\u{1F0CE}", 10],
      c_ace: ["\u{1F0D1}", 1, 11],
      c2: ["\u{1F0D2}", 2],
      c3: ["\u{1F0D3}", 3],
      c4: ["\u{1F0D4}", 4],
      c5: ["\u{1F0D5}", 5],
      c6: ["\u{1F0D6}", 6],
      c7: ["\u{1F0D7}", 7],
      c8: ["\u{1F0D8}", 8],
      c9: ["\u{1F0D9}", 9],
      c10: ["\u{1F0DA}", 10],
      c_jack: ["\u{1F0DB}", 10],
      c_queen: ["\u{1F0DD}", 10],
      c_king: ["\u{1F0DE}", 10]
    }
  end

  def cards
    1
  end

  def give_away_card
    key = @deck.keys.sample
    card = @deck[key]
    @deck.delete(key)
    card
  end
end
