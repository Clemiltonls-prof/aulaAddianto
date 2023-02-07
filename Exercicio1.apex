Decimal deposito = 1000;
Decimal juros = -20;
Decimal valorFinal = deposito + (deposito*juros)/100;
if(Math.abs(juros) >=0 && Math.abs(juros) <=5){
    System.debug('Investimento de baixo risco');
}else if(Math.abs(juros) > 5 && Math.abs(juros) <= 10){
    System.debug('Investimento de médio risco');
}else{
    System.debug('Investimento de alto risco');
}
if(juros > 0){
    System.debug('Você ganhou dinheiro!!!!');
    System.debug('Sua conta rendeu: ' + (valorFinal-deposito).setScale(2));
}else if(juros <0){
    System.debug('Infelizmente você perdeu dinheiro!!!!!');
    System.debug('Perda de money: ' + (valorFinal-deposito).setScale(2));
}else{
    System.debug('Não ganhou, mas não perdeu! UFA');
}
System.debug('Valor final do investimento: ' + valorFinal.setScale(2));