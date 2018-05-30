require 'sinatra'
get '/' do #cuando ingrese a la url hace lo siguiente
  erb :hola
end
post '/respuesta' do
  respuesta = params[:frase]
  if respuesta.upcase == respuesta
    @respuesta = "Ahhh si, manzanas!"
    redirect "/?respuesta=#{@respuesta}"
  else
    @respuesta = "Habla más duro mijito"
    redirect "/?respuesta=#{@respuesta}"
  end
end
