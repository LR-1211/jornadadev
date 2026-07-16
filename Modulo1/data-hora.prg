REQUEST HB_CODEPAGE_PT850

FUNCTION main ()

    LOCAL cNome := "Luccas Ribeiro"
    LOCAL cCidade := "Mogi Mirim"
    LOCAL cCurso := "Habour/ADVPL"
    LOCAL dData := DTOC(DATE())
    LOCAL cHora := TIME()
    
    hb_cdpSelect("PT850") //Config pra acentua‡Æo
        
    Qout("===========================")
    Qout("Ficha de Apresenta‡Æo + Data e Hora")
    Qout("===========================")
    Qout("Nome: " + cNome)
    Qout("Cidade: " + cCidade)
    Qout("Curso : " + cCurso)
    Qout("===========================")
    Qout("Data: " + dData)
    Qout("Hora: " + cHora)
    Qout("===========================")

RETURN NIL