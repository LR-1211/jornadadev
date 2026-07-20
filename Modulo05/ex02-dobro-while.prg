REQUEST HB_CODEPAGE_PT850

FUNCTION main()

    LOCAL nNumero := 0

    hb_cdpSelect("PT850") // Config para acentua‡Æo

    WHILE .T.
        INPUT "Digite um n£mero inteiro (0 ou negativo para sair): " TO nNumero
        IF nNumero <= 0
            Qout("Programa encerrado.")
            EXIT
        ENDIF
        Qout("O dobro de " + Str(nNumero) + " ‚: " + Str(nNumero * 2))
    ENDDO

RETURN NIL