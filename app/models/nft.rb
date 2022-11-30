class Nft < ApplicationRecord
  def self.find_two_unique
    [
      Nft.order(Arel.sql('RANDOM()')).first,
      Nft.order(Arel.sql('RANDOM()')).last
    ]
  end
end
