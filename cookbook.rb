
def bem_vindo()
    puts "Bem Vindo ao Cookbook, sua rede social de receitas"
end

bem_vindo()

receitas =[]


puts "[1] Cadastrar uma receita" 
puts "[2] Ver todas as receitas"
puts "[3] Sair"

print "Escolha uma opção: "
opcao = gets.chomp().to_i()

while(opcao !=3) do

    if(opcao==1)

        puts "Digite o nome da receita"
        nome = gets.chomp()
        puts "Digite o tipo da receita"
        tipo = gets.chomp()

        receitas << {nome: nome, tipo:tipo}
        puts
        puts "Receita #{nome} cadastrada com sucesso!"
        puts

    elsif(opcao==2)

        puts "========== Receitas Cadastradas ============"
        receitas.each do |receita|
            puts "#{receita[:nome]} - #{receita[:tipo]}"
        puts
        end
    else
        puts "Opção Invalida"
    end

    puts "[1] Cadastrar uma receita" 
    puts "[2] Ver todas as receitas"
    puts "[3] Sair"

    print "Escolha uma opção: "
    opcao = gets.chomp().to_i()

end

    puts "Obrigado por usar o cookbook, ate logo"