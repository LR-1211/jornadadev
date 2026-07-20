REQUEST HB_CODEPAGE_PT850

FUNCTION main()

    LOCAL nNumero := 0
    LOCAL nTentativas := 0
    LOCAL nRandomizer := Int(HB_RandomInt(1, 100))

    hb_cdpSelect("PT850") // Config para acentua‡Æo

    Qout("Jogo da Advinha‡Æo | - Tente adivinhar o n£mero entre 1 e 100 (M ximo de 7 Tentativas).")

    WHILE nTentativas < 7
        
        WHILE .T.
            INPUT "Digite o seu palpite: " TO nNumero
            
            IF nNumero >= 1 .AND. nNumero <= 100
                EXIT
            ENDIF
            Qout("N£mero inv lido. Escolha algo entre 1 e 100.")
            Qout("")
        ENDDO
       
        nTentativas += 1

        IF nNumero == nRandomizer
            Qout("Parab‚ns!!! Vocˆ acertou o n£mero em " + AllTrim(Str(nTentativas)) + " tentativas.")
            EXIT
        ELSEIF nNumero < nRandomizer
            Qout("Errado! Dica: o n£mero ‚ MAIOR!")
            Qout(AllTrim(Str(7 - nTentativas)) + " tentativas restantes.")
        ELSEIF nNumero > nRandomizer
            Qout("Errado! Dica: o n£mero ‚ MENOR!")
            Qout(AllTrim(Str(7 - nTentativas)) + " tentativas restantes.")
        ENDIF
    ENDDO
    
    IF nTentativas == 7
        Qout("Vocˆ atingiu o n£mero m ximo de tentativas... O n£mero correto era: " + AllTrim(Str(nRandomizer)))
    ELSE
        Qout("Fim do jogo. Obrigado por jogar!")
    ENDIF

RETURN NIL  