  def soma(primeiro_numero, segundo_numero)
    primeiro_numero + segundo_numero
  end

  def subtracao(primeiro_numero, segundo_numero)
    primeiro_numero - segundo_numero
  end
  
  def multiplicacao(primeiro_numero, segundo_numero)
    primeiro_numero * segundo_numero
  end

  def divisao(primeiro_numero, segundo_numero)
    primeiro_numero / segundo_numero
  rescue ZeroDivisionError
    'Opa! Zero como divisor'
  end
