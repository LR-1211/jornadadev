FUNCTION main ()
    
    LOCAL cNome := ""
    LOCAL nSalario := 0
    LOCAL nNewSalario := 0

    QOut("Digite o nome do funcion rio: ")
    ACCEPT TO cNome
    QOut("Digite o sal rio do funcion rio: ")
    INPUT TO nSalario

    IF nSalario < 1000
        nNewSalario := nSalario * 1.15
        QOut("O sal rio reajustado do funcion rio " + cNome + " de 15% ‚: " + Str(nNewSalario, 10, 2))
    ELSEIF nSalario >= 1000 .AND. nSalario <= 2000
        nNewSalario := nSalario * 1.12
        QOut("O sal rio reajustado do funcion rio " + cNome + " de 12% ‚: " + Str(nNewSalario, 10, 2))
    ELSEIF nSalario > 2000 .AND. nSalario <= 4000
        nNewSalario := nSalario * 1.08
        QOut("O sal rio reajustado do funcion rio " + cNome + " de 8% ‚: " + Str(nNewSalario, 10, 2))
    ELSE
        nNewSalario := nSalario * 1.05
        QOut("O sal rio reajustado do funcion rio " + cNome + " de 5% ‚: " + Str(nNewSalario, 10, 2))

    ENDIF

RETURN NIL