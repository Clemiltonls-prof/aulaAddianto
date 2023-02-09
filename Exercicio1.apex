// Implementar no depósito e nome de investimento o uso de MAP
Decimal investimentoInicial =0 , valorTotal = 0 ,ganhos = 0,perdas = 0;
Map<String,Decimal> investimentosMapeados = new Map<String,Decimal>();
investimentosMapeados.put('Ações da Magazine Luíza',200);
investimentosMapeados.put('Ações da Oi',100);
investimentosMapeados.put('Tesouro Nacional',500);
investimentosMapeados.put('Ações da Lojas Americanas',1000);
investimentosMapeados.put('Ações da Nubank',200);
List<Decimal> jurosInvestimentos = new List<Decimal>();
jurosInvestimentos.add(2);
jurosInvestimentos.add(0);
jurosInvestimentos.add(.05);
jurosInvestimentos.add(-15);
jurosInvestimentos.add(-2);
List<Decimal> valorFinal = new List<Decimal>();
List<Decimal> valores = investimentosMapeados.values();
List<String> nomes = new List<String>();
nomes.addAll(investimentosMapeados.keySet());
for(String registros : investimentosMapeados.keySet()){
    investimentoInicial += investimentosMapeados.get(registros);
}
for(Integer i = 0; i < valores.size(); i++){
    investimentoInicial += valores.get(i);
    valorFinal.add(valores.get(i) + (valores.get(i) * jurosInvestimentos.get(i))/100);
    valorTotal += valorFinal.get(i);
    ganhos += (valorFinal.get(i) >= valores.get(i)) 
        ? valorFinal.get(i) - valores.get(i) 
        : 0;
    perdas += (valorFinal.get(i) < valores.get(i)) 
        ? valorFinal.get(i) - valores.get(i)
        : 0;
	if(Math.abs(jurosInvestimentos.get(i)) >=0 && Math.abs(jurosInvestimentos.get(i)) <=5){
    	System.debug(nomes.get(i) +'. Investimento de baixo risco');
	}else if(Math.abs(jurosInvestimentos.get(i)) > 5 && Math.abs(jurosInvestimentos.get(i)) <= 10){
    	System.debug(nomes.get(i) +'Investimento de médio risco');
	}else{
    	System.debug(nomes.get(i) +'Investimento de alto risco');
	}
    if(jurosInvestimentos.get(i) > 0){
        System.debug('Você ganhou dinheiro!!!!');
        System.debug('Sua conta rendeu: ' + (valorFinal.get(i)-valores.get(i)).setScale(2));
    }else if(jurosInvestimentos.get(i) <0){
        System.debug('Infelizmente você perdeu dinheiro!!!!!');
        System.debug('Perda de money: ' + (valorFinal.get(i)-valores.get(i)).setScale(2));
    }else{
        System.debug('Não ganhou, mas não perdeu! UFA');
    }
    System.debug('Valor final do investimento: ' + valorFinal.get(i).setScale(2));
    System.debug('---------------------------------------------------------------');
}
System.debug('Investimento inicial: R$ ' + investimentoInicial);
System.debug('Ganhos Totais: R$ ' + ganhos);
System.debug('Perdas Totais: R$ ' + perdas);
System.debug('Investimento pós aplicações: R$ ' + valorTotal);