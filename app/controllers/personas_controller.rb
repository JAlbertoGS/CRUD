class PersonasController < ApplicationController
  def index
    @personas = Persona.all.order("created_at")
  end

  def new
    @boton = "Registrar"
    @persona = Persona.new  
  end

  def create
    @persona=Persona.new(persona_params)
    if @persona.save
      redirect_to personas_path
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
      redirect_to personas_path, notice: "Cita modificada correctamente"
    else
      render 'edit'
    end
  end

  def show
    @persona = Persona.find(params[:id])
  end

  def destroy
    @persona = Persona.find(params[:id])
    @persona.destroy
    redirect_to personas_path, notice: "Cita eliminada correctamente"
  end

  private def persona_params
    params.require(:persona).permit(:name, :last_name, :email, :password, :date, :status)
  end
end
