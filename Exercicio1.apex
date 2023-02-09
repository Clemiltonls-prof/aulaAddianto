/* Implementar Listas */
/*
	Lista vazia: List<Tipo> nome = new List<Tipo>();
	Lista populada: List<Tipo> nome = new List<Tipo>{valor1,valor2,valor3}; 
*/
// Nome dos investimentos
List<String> investimentos = new List<String>();
investimentos.add('Ações da Magazine Luíza');
investimentos.add('Ações da Oi');
investimentos.add('Tesouro Nacional');
investimentos.add('Ações da Lojas Americanas');
// Depósito dos investimentos
List<Decimal> deposito = new List<Decimal>();
deposito.add(200);
deposito.add(100);
deposito.add(500);
deposito.add(1000);
List<Decimal> jurosInvestimentos = new List<Decimal>();
jurosInvestimentos.add(2);
jurosInvestimentos.add(0);
jurosInvestimentos.add(.05);
jurosInvestimentos.add(-15);
// Decimal valorFinal = deposito + (deposito*juros)/100;
List<Decimal> valorFinal = new List<Decimal>();
// valorFinal.add(investimentos.get(0) + (investimentos.get(0)*juros.get(0))/100);
for(Integer i = 0; i < investimentos.size(); i++){
    valorFinal.add(deposito.get(i) + (deposito.get(i) * jurosInvestimentos.get(i))/100);
	if(Math.abs(jurosInvestimentos.get(i)) >=0 && Math.abs(jurosInvestimentos.get(i)) <=5){
    	System.debug('Nome do investimento: ' + investimentos.get(i)
                     + '. Investimento de baixo risco');
	}else if(Math.abs(jurosInvestimentos.get(i)) > 5 && Math.abs(jurosInvestimentos.get(i)) <= 10){
    	System.debug('Nome do investimento: ' + investimentos.get(i)
                     + 'Investimento de médio risco');
	}else{
    	System.debug('Nome do investimento: ' + investimentos.get(i)
                     + 'Investimento de alto risco');
	}
    if(jurosInvestimentos.get(i) > 0){
        System.debug('Você ganhou dinheiro!!!!');
        System.debug('Sua conta rendeu: ' + (valorFinal.get(i)-deposito.get(i)).setScale(2));
    }else if(jurosInvestimentos.get(i) <0){
        System.debug('Infelizmente você perdeu dinheiro!!!!!');
        System.debug('Perda de money: ' + (valorFinal.get(i)-deposito.get(i)).setScale(2));
    }else{
        System.debug('Não ganhou, mas não perdeu! UFA');
    }
    System.debug('Valor final do investimento: ' + valorFinal.get(i).setScale(2));
    System.debug('---------------------------------------------------------------');
}
