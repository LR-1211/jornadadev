REQUEST HB_CODEPAGE_PT850

FUNCTION main()

    LOCAL cNome := ""
    LOCAL cDataTxt := ""
    LOCAL dNasc := CtoD("")
    LOCAL nIdade := 0
    LOCAL nPreco := 0
    LOCAL nDesconto := 0
    LOCAL nTotal := 0

    HB_CDPSELECT("PT850")
    
    SET DATE FORMAT TO "YYYY/MM/DD"

    Qout("Digite seu nome: ")
    ACCEPT TO cNome

    Qout("Digite sua data de nascimento (AAAA/MM/DD): ")
    ACCEPT TO cDataTxt
    dNasc := CToD(cDataTxt)

    Qout("Digite o pre‡o do produto: ")
    INPUT TO nPreco

    nIdade := ( Date() - dNasc ) / 365 
    
    IF Int(nIdade) > 60
        nDesconto := nPreco * 0.125
        nTotal := nPreco - nDesconto

        Qout("O pre‡o com desconto ‚: " + Str(nTotal, 10, 2))
    ELSE
        nTotal := nPreco
        Qout("O pre‡o sem desconto ‚: " + Str(nPreco, 10, 2))
    ENDIF

RETURN NIL