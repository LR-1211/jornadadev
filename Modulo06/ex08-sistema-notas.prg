REQUEST HB_CODEPAGE_PT850

FUNCTION main()

    LOCAL aAlunos   := {}
    LOCAL cNome     := ""
    LOCAL nN1       := 0, nN2 := 0, nN3 := 0, nN4 := 0
    LOCAL nMedia    := 0
    LOCAL nQtd      := 0
    LOCAL i         := 0

    hb_cdpSelect("PT850") // Config para acentua‡Æo

    WHILE .T.
        INPUT "Quantos alunos deseja cadastrar? " TO nQtd
        IF nQtd > 0
            EXIT
        ENDIF
        Qout("Por favor, digite um n£mero maior que zero!")
    ENDDO

    FOR i := 1 TO nQtd
        Qout("--- Cadastrando Aluno " + AllTrim(Str(i)) + " de " + AllTrim(Str(nQtd)) + " ---")
        
        Qout("Nome do Aluno: ")
        ACCEPT TO cNome

        INPUT "Nota 1: " TO nN1
        INPUT "Nota 2: " TO nN2
        INPUT "Nota 3: " TO nN3
        INPUT "Nota 4: " TO nN4

        AAdd(aAlunos, {cNome, nN1, nN2, nN3, nN4})
    NEXT

    Qout(PadR("Nome: ", 20) + " | " + PadR("M‚dia: ", 8) + " | " + "Situa‡Æo")
    Qout("/////////////////////////////////")

    FOR i := 1 TO Len(aAlunos)
        nMedia := (aAlunos[i][2] + aAlunos[i][3] + aAlunos[i][4] + aAlunos[i][5]) / 4

        IF nMedia >= 7.0
            Qout(PadR(aAlunos[i][1], 20) + " | " + Str(nMedia, 8, 2) + " | Aprovado")
        ELSE
            Qout(PadR(aAlunos[i][1], 20) + " | " + Str(nMedia, 8, 2) + " | Reprovado")
        ENDIF
    NEXT

RETURN NIL