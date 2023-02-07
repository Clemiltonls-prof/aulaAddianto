Decimal deposito = 1000;
Decimal juros = 0;
Decimal valorFinal = deposito + (deposito*juros)/100;
System.debug(juros);
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