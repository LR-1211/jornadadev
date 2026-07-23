REQUEST HB_CODEPAGE_PT850

FUNCTION main()

    LOCAL aNumeros := {}
    LOCAL nNumero := 0
    LOCAL nSoma := 0
    LOCAL nMedia := 0
    LOCAL i := 0

    hb_cdpSelect("PT850") // Config para acentua‡Æo

    Qout("Entrada de Dados (10 N£meros)")
    Qout("")

    FOR i := 1 TO 10
        INPUT "Digite o " + AllTrim(Str(i)) + "§ n£mero: " TO nNumero
        AAdd(aNumeros, nNumero)
        nSoma += nNumero
    NEXT

    nMedia := nSoma / Len(aNumeros)

    ASort(aNumeros)

    Qout("Resultados e Estatisticas")
    Qout("")

    Qout("N£meros em ordem crescente:")
    FOR i := 1 TO Len(aNumeros)
        Qout (Str(aNumeros[i], 6, 2) + " ")
    NEXT
    
    Qout("")
    Qout("Soma total:  " + Str(nSoma, 10, 2))
    Qout("M‚dia:       " + Str(nMedia, 10, 2))
    Qout("/////////////////////////////////////")
    Qout("Menor valor: " + Str(aNumeros[1], 10, 2))
    Qout("Maior valor: " + Str(aNumeros[Len(aNumeros)], 10, 2))

RETURN NIL