class PagesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def batman
  end

  def superman
  end

  def batmanvssuperman
    @count1 = Votosuperman.count
    @count2 = Votsbatman.count
  end

  def voto_superman
    Votosuperman.new(nombre: params[:nombre], email: params[:email]).save
    redirect_to pages_batmanvssuperman_path, notice: 'el voto para superman se hizo correctamente'
  end

  def voto_batman
    Votsbatman.new(nombre: params[:nombre], email: params[:email]).save
    redirect_to pages_batmanvssuperman_path, notice: 'el voto para batman se hizo correctamente'
  end
end
