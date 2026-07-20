REQUEST HB_CODEPAGE_PT850

FUNCTION main()

    LOCAL nContador := 0

    hb_cdpSelect("PT850") // Config para acentua‡Æo

    Qout("N£meros de 1 a 100:")
    FOR nContador := 1 TO 100
        ?? AllTrim(Str(nContador)) + " "
    NEXT
    Qout("")
    Qout("")

    Qout("N£meros de -50 a 50:")
    FOR nContador := -50 TO 50 
        ?? AllTrim(Str(nContador)) + " "
    NEXT
    Qout("")
    Qout("")

    Qout("N£meros de 80 a 5:")
    FOR nContador := 80 TO 5 STEP -1
        ?? AllTrim(Str(nContador)) + " "
    NEXT
    Qout("")
    Qout("")

RETURN NIL