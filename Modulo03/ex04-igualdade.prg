FUNCTION main ()
    LOCAL cExamp01 := "Testes"
    LOCAL cExamp02 := "Teste"

    // Comparaá∆o de igualdade "=" ; Simboliza uma semelhanáa entre os valores.
Qout("Comparacao com Igualdade de (=)")
    IF cExamp01 = cExamp01
        Qout("Teste = Testes Ç Verdadeiro, pois s∆o parecidos. ")
    ELSE
        Qout("Teste = Testes Ç Falso ")
    ENDIF

    Qout("///////////////////////////////")

Qout("Comparacao com Igualdade Extrema (==)")
    // Comparaá∆o de igualdade "==" ; Simboliza a semelhanáa exata entre os valores e o tipo de dado.
    IF cExamp01 == cExamp02
        Qout("Teste = Testes Ç Verdadeiro ")
    ELSE
        Qout("Teste = Testes Ç Falso, pois o tipo de dado Ç diferente. ")
    ENDIF
    
RETURN NIL