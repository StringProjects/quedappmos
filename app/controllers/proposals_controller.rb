class ProposalsController < ApplicationController
  before_action :set_proposal, only: [:show, :edit, :update, :destroy]



  def index
    @proposals = Proposal.all
  end



 
  def new
    @proposal = Proposal.new
    @possibles = Possible.all
  end


  def edit
  end




  def create
    @proposal = Proposal.new(proposal_params)

    @proposal.user_id = session[:user_id]

    respond_to do |format|
      if @proposal.save
        format.html { redirect_to @proposal, notice: 'Muchas gracias por participar. Puedes revisar tu propuesta:' }

        flash[:notice] = "Tu propuesta de fechas se ha guardado, gracias por participar."

      else
        format.html { render :new }

      end
    end
  end

 
  def update
    respond_to do |format|
      if @proposal.update(proposal_params)
        format.html { redirect_to @proposal, notice: 'Tu propuesta de fecha ha sido actualizada.' }

      else
        format.html { render :edit }

      end
    end
  end

  def show
    @proposal = Proposal.find(params[:id])
  end


  def destroy
    @proposal.destroy
    respond_to do |format|
      format.html { redirect_to proposals_url, notice: 'Proposal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proposal
      @proposal = Proposal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proposal_params
      params.require(:proposal).permit(:accepted, :comment, possible_ids:[])
    end
end
