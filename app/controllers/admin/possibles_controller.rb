class Admin::PossiblesController < ApplicationController
  before_action :set_possible, only: [:show, :edit, :update, :destroy]




  def index
    @possibles = Possible.all
  end

  def show
  end


  def new
    @possible = Possible.new
  end


  def edit
  end


  def create
    @possible = Possible.new(possible_params)

    respond_to do |format|
      if @possible.save
        format.html { redirect_to admin_possibles_path, notice: 'Possible was successfully created.' }
        format.json { render :show, status: :created, location: @possible }
      else
        format.html { render :new }
        format.json { render json: @possible.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @possible.update(possible_params)
        format.html { redirect_to admin_possible_path(@possible), notice: 'Possible was successfully updated.' }

      else
        format.html { render :edit }
        format.json { render json: @possible.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @possible.destroy
    respond_to do |format|
      format.html { redirect_to admin_possibles_path, notice: 'Possible was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_possible
      @possible = Possible.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def possible_params
      params.require(:possible).permit(:date)
    end
end
