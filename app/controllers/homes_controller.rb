class HomesController < ApplicationController
  def index
    # @parameter = params[:search].downcase
    # @results = Profile.all.where("lower(name) LIKE :search", search: @parameter)
    # respond_to :js
  end

  def search
    @parameter = params[:search].downcase
    @results = Profile.all.where("lower(name) LIKE :search", search: @parameter)
    # respond_to do |format|
    #   format.html { render :index }
    # end
  end

  def filter
    # raise params.inspect
    # @filterdatas = Profile.with_gender(params[:gender])
    @filterdatas = Profile.all.where("gender LIKE ?", "%#{params[:gender]}%")
    # raise @filterdatas.inspect
  end

  # def search
  #   @results = Profile.search(params[:search].split("=").last)
  #   respond_to :js
  # end

  # def search
  #   @results = Profile.search(params[:search].split("=").last)
  #   # raise @results.inspect
  #   respond_to do |format|
  #     format.js { render :homes/livesearch }
  #     # format.html { render :index }
  #   end
  # end

  # def search
  #   # raise params.inspect
  #   # @parameter = params[:search].downcase
  #   # @results = Profile.all.where("name LIKE ?", "%#{@parameter}%")
  #   @results = Profile.search(params[:search])
  #   # raise @results.inspect
  #   render :json => {:token => @results}
  #   # respond_to do |format|
  #     # format.json {
  #       # render json: { results: @results.as_json }
  #     # }
  #   # end
  # end

end