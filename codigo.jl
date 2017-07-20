using DataFrames;
using GR;
# Lê os dados salvos no arquivo
totalPedro = 0;
totalMaria = 0;
totalLucia = 0;
k = linspace(1,31,200)
function ler()
  nome_do_arquivo = readtable("C:/Users/Mitchelson/Desktop/Projeto Final - DCC 206/dados.csv")
end
dados_lidos = ler()
pedro = length(dados_lidos[:Pedro])
for i = 1:pedro
  totalPedro +=  dados_lidos[:Pedro][i];
  totalMaria +=  dados_lidos[:Maria][i];
  totalLucia +=  dados_lidos[:Lucia][i];
end
println(totalPedro)
println(totalMaria)
println(totalLucia)

x = dados_lidos[:Pedro]
y = dados_lidos[:Maria]
z = dados_lidos[:Lucia]

valorPedro = totalPedro*0.42
valorMaria = totalMaria*0.42
valorLucia = totalLucia*0.42

println(valorPedro)
println(valorMaria)
println(valorLucia)

title("Gráfico de Consumo Mensal de Energia Eletrica")
xlabel("Dias do Mês")
ylabel("Consumo em KW/h")
legend("Pedro RS $valorPedro","Maria RS $valorMaria","Lucia RS $valorLucia")
plot(x,"b-", y, "g-", z,"r-")
savefig("dados.pdf")
sleep(10)
