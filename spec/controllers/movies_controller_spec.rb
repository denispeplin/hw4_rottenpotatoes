require 'spec_helper'

describe MoviesController do
  describe 'find movies with same director' do
    it 'should call Movie#same_director method' do
      Movie.should_receive(:same_director).with(1)
      post :same_director, movie_id: 1
    end
  end
end

