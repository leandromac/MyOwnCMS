namespace :dev do
  desc "TODO"
  task setup: :environment do
    puts "Executando o setup do desenvolvimento..."
    #puts "Excluindo banco de dados... #{%x(rake db:drop)}"
   # puts "Apagando imagens de public/system... #{%x(rm -rf #{'public/system/panel'})}"
  #  puts "Criando bando de dados... #{%x(rake db:create)}"
 #   puts %x(rake db:migrate)
#    puts %x(rake db:seed)
    puts "Instalação concluída com successo!"
  end

end
