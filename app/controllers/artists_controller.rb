class ArtistsController < ApplicationController

#index
  get '/artists' do

    @artists = Artist.all
    erb :"/artists/index"
  end
# show
  get '/artists/:slug' do

    @artist = Artist.find_by_slug(params[:slug])
    erb :"/artists/show"
  end
# create
  post "/artists" do
    @artist = Artist.create(params)
    redirect to '/artist'
  end



end
