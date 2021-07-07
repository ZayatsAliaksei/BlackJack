class Deck
  include Singleton
  #s-Spades;h-Heart;d-Diamond;c-Club
  DECK = {
    's_ace' => '1F0A1',
    's2' => '1F0A2',
    's3' => '1F0A3',
    's4' => '1F0A4',
    's5' => '1F0A5',
    's6' => '1F0A6',
    's7' => '1F0A7',
    's8' => '1F0A8',
    's9' => '1F0A9',
    's10' => '1F0AA',
    's_jack' => '1F0AB',
    's_queen' => '1F0AD',
    's_king' => '1F0AE',
    'h_ace' => '1F0B1',
    'h2' => '1F0B2',
    'h3' => '1F0B3',
    'h4' => '1F0B4',
    'h5' => '1F0B5',
    'h6' => '1F0B6',
    'h7' => '1F0B7',
    'h8' => '1F0B8',
    'h9' => '1F0B9',
    'h10' => '1F0BA',
    'h_jack' => '1F0BB',
    'h_queen' => '1F0BD',
    'h_king' => '1F0BE',
    'd_ace' => '1F0C1',
    'd2' => '1F0C2',
    'd3' => '1F0C3',
    'd4' => '1F0C4',
    'd5' => '1F0C5',
    'd6' => '1F0C6',
    'd7' => '1F0C7',
    'd8' => '1F0C8',
    'd9' => '1F0C9',
    'd10' => '1F0CA',
    'd_jack' => '1F0CB',
    'd_queen' => '1F0CD',
    'd_king' => '1F0CE',
    'c_ace' => '1F0D1',
    'c2' => '1F0D2',
    'c3' => '1F0D3',
    'c4' => '1F0D4',
    'c5' => '1F0D5',
    'c6' => '1F0D6',
    'c7' => '1F0D7',
    'c8' => '1F0D8',
    'c9' => '1F0D9',
    'c10' => '1F0DA',
    'c_jack' => '1F0DB',
    'c_queen' => '1F0DD',
    'c_king' => '1F0DE'
  }.freeze
  def cards

  end

  def take_cards

  end
end
