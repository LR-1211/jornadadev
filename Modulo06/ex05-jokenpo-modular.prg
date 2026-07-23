REQUEST HB_CODEPAGE_PT850

FUNCTION main()

    LOCAL nJogadaPlayer := 0
    LOCAL nJogadaCPU    := 0
    LOCAL cContinuar    := ""

    hb_cdpSelect("PT850") // Config para acentua‡Æo

    WHILE .T.
        Qout("Vamos jogar: Jokenp“ (Pedra, Papel, Tesoura)")
        Qout("")

        nJogadaPlayer := PedirJogadaUsuario()

        nJogadaCPU := SortearJogadaCPU()

        DefinirVencedor(nJogadaPlayer, nJogadaCPU)

        Qout("")
        Qout("Deseja jogar novamente? (S/N): ")
        ACCEPT TO cContinuar
        
        IF Upper(cContinuar) == "N"
            Qout("")
            Qout("Obrigado por jogar! At‚ a pr¢xima.")
            EXIT
        ENDIF

    ENDDO

RETURN NIL

FUNCTION PedirJogadaUsuario()
    LOCAL nOpcao := 0

    WHILE .T.
        Qout("Escolha sua jogada:")
        Qout("1 - Pedra")
        Qout("2 - Papel")
        Qout("3 - Tesoura")
        INPUT "Sua opcao: " TO nOpcao

        IF ValidarJogada(nOpcao)
            EXIT
        ENDIF

        Qout("")
        Qout("Op‡Æo inv lida. Escolha apenas 1, 2 ou 3.")
        Qout("")
    ENDDO

RETURN nOpcao

FUNCTION ValidarJogada(nJogada)
RETURN (nJogada >= 1 .AND. nJogada <= 3)

FUNCTION SortearJogadaCPU()
RETURN HB_RandomInt(1, 3)

FUNCTION DefinirVencedor(nPlayer, nCPU)

    LOCAL aOpcoes := { "Pedra", "Papel", "Tesoura" }

    Qout("")
    Qout("Vocˆ escolheu:       " + aOpcoes[nPlayer])
    Qout("Computador escolheu: " + aOpcoes[nCPU])
    Qout("//////////////////////////////////////////")

    IF nPlayer == nCPU
        Qout("Resultado: EMPATE!")
    ELSEIF (nPlayer == 1 .AND. nCPU == 3) .OR. ;
           (nPlayer == 2 .AND. nCPU == 1) .OR. ;
           (nPlayer == 3 .AND. nCPU == 2)
        Qout("Resultado: Parab‚ns")

    ELSE
        Qout("Resultado: BOT Venceu")
    ENDIF

RETURN NIL