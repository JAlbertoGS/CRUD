class PersonasController < ApplicationController
  def index
    @personas = Persona.all.order("created_at DESC")
  end

  def new
    @boton = "Registrar"
    @persona = Persona.new
  end

  def create
    @persona=Persona.new(persona_params)
    if @persona.save
      redirect_to @persona
    else
      render 'new'
    end
  end

  def edit
    @boton = "Editar"
    @persona = Persona.find(params[:id])
  end

  def update
    @persona = Persona.find(params[:id])
    if @persona.update(persona_params)
      flash[:notice] = "Perfil modificado correctamente"
      redirect_to @persona
    else
      render 'edit'
    end
  end

  def show
    @persona = Persona.find(params[:id])
  end

  def destroy
  end


  private def persona_params
    params.require(:persona).permit(:name, :last_name, :email, :password)
  end
end
