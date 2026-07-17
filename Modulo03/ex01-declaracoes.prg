REQUEST HB_CODEPAGE_PT850

FUNCTION main()

    LOCAL cNome_Func := "Fulano"
    LOCAL nSalario := 1500
    LOCAL lAtivacao := .T.
    LOCAL dData_ad := CtoD("2010/02/12")
    LOCAL nCod_depart := 12345
    
    Qout("Nome do Funcion†rio: " , cNome_Func)
    Qout("Sal†rio: " , nSalario)
    Qout("Ativaá∆o: " , lAtivacao)
    Qout("Data de Admiss∆o: " , dData_ad)
    Qout("C¢digo do Departamento: " , nCod_depart)

RETURN NIL
