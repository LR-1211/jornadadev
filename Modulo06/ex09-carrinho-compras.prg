REQUEST HB_CODEPAGE_PT850

FUNCTION main()

    LOCAL aCarrinho  := {}
    LOCAL cProduto   := ""
    LOCAL nPreco     := 0
    LOCAL nTotal     := 0
    LOCAL cContinuar := ""
    LOCAL i          := 0

    hb_cdpSelect("PT850") // Config para acentua‡Æo

    WHILE .T.

        WHILE .T.
            Qout("Nome do produto: ")
            ACCEPT TO cProduto
            IF Len(Trim(cProduto)) > 0
                EXIT
            ENDIF
            Qout("Erro: O nome do produto nÆo pode ser vazio")
            Qout("")
        ENDDO

        WHILE .T.
            INPUT "Pre‡o do produto (R$): " TO nPreco
            IF nPreco > 0
                EXIT
            ENDIF
            Qout("Erro: O pre‡o deve ser maior que zero")
            Qout("")
        ENDDO

        AAdd(aCarrinho, {cProduto, nPreco})
        Qout("Produto adicionado com sucesso")
        Qout("")

        WHILE .T.
            Qout("Deseja adicionar outro produto? (S/N): ")
            ACCEPT TO cContinuar
            cContinuar := Upper(cContinuar)

            IF cContinuar == "S" .OR. cContinuar == "N"
                EXIT
            ENDIF
            Qout("Op‡Æo inv lida! Digite apenas S ou N.")
            Qout("")
        ENDDO

        IF cContinuar == "N"
            EXIT
        ENDIF

    ENDDO

    Qout("Cupom Fiscal")
    Qout(PadR("Produto", 28) + " | " + "Pre‡o")
    Qout("///////////////////////////////////")

    FOR i := 1 TO Len(aCarrinho)
        Qout(PadR(aCarrinho[i][1], 28) + " | R$ " + Str(aCarrinho[i][2], 8, 2))

        nTotal += aCarrinho[i][2]
    NEXT

    Qout(PadR("Total a pagar:", 28) + " | R$ " + Str(nTotal, 8, 2))
    Qout("")
    Qout("Obrigado pela preferˆncia")

RETURN NIL