REQUEST HB_CODEPAGE_PT850

FUNCTION main()

    LOCAL nIdade := 0
    LOCAL nSubvalor := 0
    LOCAL nValorFinal := 0
    LOCAL nDependentes := 0
    
    LOCAL nAdicionalDep := 90
    
    hb_cdpSelect("PT850") // Config para acentua‡Æo

    INPUT "Digite a idade para o plano de s ude: " TO nIdade
    INPUT "Digite a quantidade de dependentes: " TO nDependentes

    IF nIdade <= 25
        nSubvalor := 180
    ELSEIF nIdade > 25 .AND. nIdade <= 40
        nSubvalor := 260
    ELSEIF nIdade > 40 .AND. nIdade <= 60
        nSubvalor := 380
    ELSE 
        nSubvalor := 520
    ENDIF

    nValorFinal := nSubvalor + (nDependentes * nAdicionalDep)

    Qout("O valor do plano de sa£de ‚: " + Str(nValorFinal, 10, 2))

RETURN NIL