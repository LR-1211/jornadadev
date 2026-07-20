REQUEST HB_CODEPAGE_PT850

FUNCTION main()

    LOCAL nValor := 0
    LOCAL nTotal := 0
    LOCAL nQuant := 0

    hb_cdpSelect("PT850") // Config para acentua‡Æo

    WHILE .T.
        INPUT "Digite um valor (0 para sair): " TO nValor
        IF nValor = 0
            EXIT
        ENDIF
        nTotal += nValor
        nQuant += 1
    ENDDO
    
    Qout("Quantidade de valores somados: " + AllTrim(Str(nQuant)))
    Qout("Soma total dos valores: " + Str(nTotal, 10, 2))

RETURN NIL