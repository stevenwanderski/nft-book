class PagesController < ApplicationController
  def home
    assign_nfts
  end

  def update
    nft = Nft.find(params[:id])
    nft.update!(vote_count: nft.vote_count + 1)

    assign_nfts
  end

  private

  def assign_nfts
    @nft1, @nft2 = Nft.find_two_unique
    @leaderboard_nfts = Nft.order(vote_count: :desc).limit(10)
  end
end
