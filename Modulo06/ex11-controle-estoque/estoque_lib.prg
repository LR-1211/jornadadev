FUNCTION CadastrarProduto(aEstoque, nCodigo, cNome, nQtd, nPreco)
    AAdd(aEstoque, { nCodigo, Upper(AllTrim(cNome)), nQtd, nPreco })
RETURN .T.

FUNCTION BuscarPosicaoPorCodigo(aEstoque, nCodigo)
    LOCAL i := 0

    FOR i := 1 TO Len(aEstoque)
        IF aEstoque[i][1] == nCodigo
            RETURN i 
        ENDIF
    NEXT

RETURN 0

FUNCTION DarEntradaEstoque(aEstoque, nPosicao, nQtdEntrada)
    IF nQtdEntrada <= 0
        RETURN .F.
    ENDIF

    aEstoque[nPosicao][3] += nQtdEntrada
RETURN .T.

FUNCTION DarSaidaEstoque(aEstoque, nPosicao, nQtdSaida)
    IF nQtdSaida <= 0 .OR. aEstoque[nPosicao][3] < nQtdSaida
        RETURN .F. 
    ENDIF

    aEstoque[nPosicao][3] -= nQtdSaida
RETURN .T.

FUNCTION CalcularValorTotalEstoque(aEstoque)
    LOCAL nTotal := 0
    LOCAL i      := 0

    FOR i := 1 TO Len(aEstoque)
        nTotal += (aEstoque[i][3] * aEstoque[i][4])
    NEXT

RETURN nTotal