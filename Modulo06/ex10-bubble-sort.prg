REQUEST HB_CODEPAGE_PT850

FUNCTION main()

    LOCAL aNumeros := {}
    LOCAL i        := 0

    hb_cdpSelect("PT850") // Config para acentua‡Æo

    Qout("Ordena‡Æo com Double Sort Manual")
    Qout("")

    FOR i := 1 TO 10
        AAdd(aNumeros, HB_RandomInt(1, 100))
    NEXT

    Qout("Array Original (Desordenado):")
    ExibirArray(aNumeros)
    Qout("")

    BubbleSort(aNumeros)

    Qout("Array Ordenado (Crescente):")
    ExibirArray(aNumeros)
    Qout("///////////////////////////////////")

RETURN NIL

FUNCTION BubbleSort(aVetor)

    LOCAL nTamanho := Len(aVetor)
    LOCAL i        := 0
    LOCAL j        := 0
    LOCAL nTemp    := 0

    FOR i := 1 TO nTamanho - 1

        FOR j := 1 TO nTamanho - i

            IF aVetor[j] > aVetor[j + 1]
                nTemp         := aVetor[j]
                aVetor[j]     := aVetor[j + 1]
                aVetor[j + 1] := nTemp
            ENDIF

        NEXT

    NEXT

RETURN aVetor

FUNCTION ExibirArray(aVetor)
    LOCAL i := 0

    FOR i := 1 TO Len(aVetor)
        ?? Str(aVetor[i], 4) + " "
    NEXT
    Qout("")

RETURN NIL