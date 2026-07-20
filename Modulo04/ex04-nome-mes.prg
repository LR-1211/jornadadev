REQUEST HB_CODEPAGE_PT850

FUNCTION main()

    LOCAL nMes := 0
    LOCAL aMeses := { "Janeiro", "Fevereiro", "Mar‡o", "Abril", "Maio", "Junho", ;
                      "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro" }

    hb_cdpSelect("PT850") // Config para acentua‡Æo

    INPUT "Digite o n£mero do mˆs (1 a 12): " TO nMes

    IF nMes >= 1 .AND. nMes <= 12 // Mostra o mˆs pegando direto pelo ¡ndice da lista
        Qout("O mˆs correspondente ‚: " + aMeses[nMes]) 
    ELSE
        Qout("Mˆs inv lido")
    ENDIF

RETURN NIL