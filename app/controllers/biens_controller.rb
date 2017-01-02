class BiensController < ApplicationController

  def index
    @biens = Bien.all
  end

  def show
    @bien = Bien.find(params[:dossier_id])

  end

  def new
    @dossier = Dossier.find(params[:dossier_id])
    @bien = Bien.new
  end

  def create
    @dossier = Dossier.find(params[:dossier_id])
    @bien = Bien.new(bien_params)
    @bien.dossier_id = @dossier.id
    if @bien.save
      redirect_to dossiers_path
    else
      render 'new'
    end
  end

private

  def bien_params
    params.require(:bien).permit(:valeur_emprunt, :cout_acquisition, :valeur_actuelle, :name)
  end
end
