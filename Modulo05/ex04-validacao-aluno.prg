REQUEST HB_CODEPAGE_PT850

FUNCTION main()

    LOCAL cNome := ""
    LOCAL cDisciplina := ""
    LOCAL nNota1 := 0
    LOCAL nNota2 := 0
    LOCAL nMedia := 0

    hb_cdpSelect("PT850") // Config para acentua‡Æo

    WHILE .T.
        Qout("Digite o nome do aluno: ")
        ACCEPT TO cNome
        
        IF Len(Trim(cNome)) > 0
            EXIT
        ENDIF
        Qout("Erro: O nome nÆo pode ser vazio! Tente novamente.")
        Qout("")
    ENDDO

    Qout("/////////////////////") 

    WHILE .T.
        Qout("Digite a disciplina (Ex: MAT, POR): ")
        ACCEPT TO cDisciplina
        
        IF Len(cDisciplina) == 3 .AND. cDisciplina == Upper(cDisciplina)
            EXIT 
        ENDIF
        Qout("Erro: A disciplina deve ter exatamente 3 letras MAIéSCULAS!")
        Qout("")
    ENDDO

    Qout("/////////////////////") 

    WHILE .T.
        INPUT "Digite a primeira nota (0 a 10): " TO nNota1
        
        IF nNota1 >= 0 .AND. nNota1 <= 10
            EXIT
        ENDIF
        Qout("Erro: A nota deve estar entre 0 e 10")
        Qout("")
    ENDDO

    Qout("/////////////////////") 

    WHILE .T.
        INPUT "Digite a segunda nota (0 a 10): " TO nNota2
        
        IF nNota2 >= 0 .AND. nNota2 <= 10
            EXIT 
        ENDIF
        Qout("Erro: A nota deve estar entre 0.00 e 10.00")
        Qout("")
    ENDDO

    nMedia := (nNota1 + nNota2) / 2

    Qout(cNome + " | " + cDisciplina + " | Nota 1: " + Str(nNota1, 10, 2) + " / Nota 2: " + Str(nNota2, 10, 2) + " | M‚dia: " + Str(nMedia, 10, 2))

RETURN NIL