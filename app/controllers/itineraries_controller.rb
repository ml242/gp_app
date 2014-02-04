class ItinerariesController < ApplicationController


  def index
    # if params[:search].present?
    #   @itineraries = Itinerary.near(params[:search], 50, :order => :distance)
    #   @users = User.all
    # else
    @users = User.all
    # @itineraries = Itinerary.where('user_id != ?',current_user.id)
    @itineraries = Itinerary.where(:user != current_user)
    @rand_itineraries = @itineraries.shuffle[1..10]

  end

  def new
    @itinerary = Itinerary.new
  end


  #TODO Make an if else for address statement. There is no error handling for blank lat long.
  #TODO Make the lat long a method
  def create #new_create
    @itinerary = Itinerary.new(params[:itinerary])
    @itinerary.user = current_user
    @itinerary.user_id = current_user.id
    @itinerary.address = @itinerary.address
    a = Geocoder.search(@itinerary.address)
    geocode = a[0]
    @itinerary.latitude = geocode.latitude
    @itinerary.longitude = geocode.longitude
    lat = @itinerary.latitude
    lon = @itinerary.longitude
    photos = Flickr.photos.search(lat: lat, lon: lon).shuffle!
    photo = photos.pop(1)
    @itinerary.img_url = 'http://farm' + photo[0].farm.to_s + '.static.flickr.com' + '/' + photo[0].server.to_s + '/' + photo[0].id.to_s + '_' + photo[0].secret.to_s + '.jpg'
    if @itinerary.save
      redirect_to @itinerary
    else
      @itinerary.destroy
      render :new
    end
  end




  def show
    @itinerary = Itinerary.find(params[:id])
    @links = @itinerary.links
  end

  def edit
    @itinerary = Itinerary.find(params[:id])
  end

  def update
    @itinerary = Itinerary.find(params[:id])
    if @itinerary.update_attributes(params[:itinerary])
      redirect_to @itinerary
    else
      render :edit
    end
  end

  def copy
    @itinerary = Itinerary.find(params[:id])
    @new_itinerary = @itinerary.copy
    @new_itinerary.items = @itinerary.items
    @new_itinerary.user = current_user
    @new_itinerary.save
    flash.now[:notice] = 'We have copied your itinerary.'
    redirect_to @new_itinerary
  end

  def delete
    @itinerary = Itinerary.find(params[:id])
    @itinerary.delete
    redirect_to itineraries_path
  end

  def destroy
    @itinerary = Itinerary.find(params[:id])
    @itinerary.delete
    redirect_to itineraries_path
  end

  def add
    @item = Item.create
    @itinerary = Itinerary.find(params[:id])
    @itinerary.add_item(@item)
  end



end