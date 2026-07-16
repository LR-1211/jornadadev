FUNCTION main()

    LOCAL cNome := "Luccas Ribeiro"
    LOCAL cCidade := "Mogi Mirim"
    LOCAL cCurso := "Habour/ADVPL"

    hb_cdpSelect("PT850")
        
    Qout("===========================")
    Qout("FICHA DE APRESENTA€ÇO")
    Qout("===========================")
    Qout("Nome: " + cNome)
    Qout("Cidade: " + cCidade)
    Qout("Curso : " + cCurso)
    Qout("===========================")


RETURN NIL