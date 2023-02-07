/* 
Precisa passar: Depósito valor do juros.
Precisa calcular: rendimento
Precisa mostrar: valor total pós rendimento.
*/
Decimal deposito = 1000;
Decimal juros = 1.7/100;
Decimal valorFinal = deposito + (deposito*juros);
System.debug('Valor final do investimento: ' + valorFinal);