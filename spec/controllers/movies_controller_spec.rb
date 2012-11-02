require 'spec_helper'

describe MoviesController do
  describe 'find movies with same director' do
    it 'should call Movie#same_director method' do
      movie = Movie.create
      Movie.should_receive(:same_director).with(movie.id)
      post :same_director, movie_id: movie.id
      Movie.destroy_all
    end
  end
end

