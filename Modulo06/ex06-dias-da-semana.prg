REQUEST HB_CODEPAGE_PT850

FUNCTION main()

    LOCAL aDias := { "Domingo", "Segunda-feira", "Ter‡a-feira", "Quarta-feira", ;
                     "Quinta-feira", "Sexta-feira", "S bado" }
    LOCAL nIndice := 0

    hb_cdpSelect("PT850") // Config para acentua‡Æo

    Qout("Consulta: Dia da Semana")
    Qout("")

    WHILE .T.
        INPUT "Digite um numero de 1 a 7: " TO nIndice

        IF nIndice >= 1 .AND. nIndice <= 7
            EXIT
        ENDIF

        Qout("")
        Qout("Erro: Numero invalido! Por favor, digite um valor entre 1 e 7.")
        Qout("")
    ENDDO

    Qout("O " + AllTrim(Str(nIndice)) + "§ dia da semana eh: " + aDias[nIndice])

RETURN NIL