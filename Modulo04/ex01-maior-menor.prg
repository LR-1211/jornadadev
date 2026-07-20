FUNCTION main()

    LOCAL nValor01 := 0
    LOCAL nValor02 := 0

    Qout("Digite o primeiro valor: ")
    INPUT TO nValor01
    Qout("Digite o segundo valor: ")
    INPUT TO nValor02

    IF nValor01 > nValor02
        Qout("O maior valor ‚: " + Str(nValor01, 10, 2))
        Qout("O menor valor ‚: " + Str(nValor02, 10, 2))
    ELSEIF nValor01 < nValor02
        Qout("O maior valor ‚: " + Str(nValor02, 10, 2))
        Qout("O menor valor ‚: " + Str(nValor01, 10, 2))
    ELSE
        Qout("Os valores sao iguais: " + Str(nValor01, 10, 2))
    ENDIF
    
RETURN NIL