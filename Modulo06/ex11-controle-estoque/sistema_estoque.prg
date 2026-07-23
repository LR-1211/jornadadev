REQUEST HB_CODEPAGE_PT850

SET PROCEDURE TO estoque_lib.prg

FUNCTION main()

    LOCAL aEstoque := {}
    LOCAL nOpcao   := 0

    hb_cdpSelect("PT850") // Configuraá∆o de acentuaá∆o

    WHILE .T.
        CLS
        nOpcao := ExibirMenu()

        DO CASE
            CASE nOpcao == 1
                MenuCadastrar(aEstoque)

            CASE nOpcao == 2
                MenuListar(aEstoque)

            CASE nOpcao == 3
                MenuEntrada(aEstoque)

            CASE nOpcao == 4
                MenuSaida(aEstoque)

            CASE nOpcao == 5
                MenuBuscar(aEstoque)

            CASE nOpcao == 6
                MenuRelatorio(aEstoque)

            CASE nOpcao == 0
                CLS
                Qout("Saindo do sistema...")
                EXIT

            OTHERWISE
                Qout("Opá∆o inv†lida. Pressione Enter para tentar novamente...")
                Inkey(0)
        ENDCASE

    ENDDO

RETURN NIL

FUNCTION ExibirMenu()
    LOCAL nOpcao := 0

    Qout("///////////////////////////////////////")
    Qout("Sistema de Controle de Estoque")
    Qout("")
    Qout("1 ? Cadastrar Produto")
    Qout("2 ? Listar Produtos")
    Qout("3 ? Entrada de Estoque")
    Qout("4 ? Sa°da de Estoque")
    Qout("5 ? Buscar Produto por C¢digo")
    Qout("6 ? Relat¢rio Financeiro do Estoque")
    Qout("0 ? Sair")
    Qout("///////////////////////////////////////")
    INPUT "Opá∆o desejada: " TO nOpcao

RETURN nOpcao

FUNCTION MenuCadastrar(aEstoque)
    LOCAL nCodigo := 0, nQtd := 0, nPreco := 0
    LOCAL cNome   := ""

    Qout("Cadastrar Produto Novo")
    INPUT "C¢digo do produto: " TO nCodigo

    IF nCodigo <= 0
        Qout("Erro: O c¢digo deve ser maior que zero")
        Inkey(0)
        RETURN NIL
    ENDIF

    // Valida se o c¢digo j† existe
    IF BuscarPosicaoPorCodigo(aEstoque, nCodigo) > 0
        Qout("Erro: J† existe um produto cadastrado com o c¢digo " + AllTrim(Str(nCodigo)))
        Inkey(0)
        RETURN NIL
    ENDIF

    Qout("Nome do produto: ")
    ACCEPT TO cNome

    IF Len(Trim(cNome)) == 0
        Qout("Erro: O nome n∆o pode ser vazio")
        Inkey(0)
        RETURN NIL
    ENDIF

    INPUT "Quantidade inicial: " TO nQtd
    INPUT "Preáo unit†rio (R$): " TO nPreco

    IF nQtd < 0 .OR. nPreco <= 0
        Qout("Erro: Quantidade n∆o pode ser negativa e preáo deve ser maior que zero")
        Inkey(0)
        RETURN NIL
    ENDIF

    CadastrarProduto(aEstoque, nCodigo, cNome, nQtd, nPreco)
    Qout("")
    Qout("Produto cadastrado com sucesso!")
    Inkey(0)

RETURN NIL

FUNCTION MenuListar(aEstoque)
    LOCAL i := 0

    Qout("///////////////////////////////////////")
    Qout("Listagem de Produtos")
    Qout("///////////////////////////////////////")

    IF Len(aEstoque) == 0
        Qout("Nenhum produto cadastrado atÇ o momento")
    ELSE
        Qout(PadR("Id", 6) + " | " + PadR("Nome", 25) + " | " + PadR("Quantidade", 8) + " | " + "Preáo Un.")
        Qout("----------------------------------------------------------------")
        
        FOR i := 1 TO Len(aEstoque)
            Qout(PadR(AllTrim(Str(aEstoque[i][1])), 6) + " | " + ;
                 PadR(aEstoque[i][2], 25)              + " | " + ;
                 PadR(AllTrim(Str(aEstoque[i][3])), 8) + " | R$ " + ;
                 Str(aEstoque[i][4], 10, 2))
        NEXT
    ENDIF

    Qout("///////////////////////////////////////")
    Qout("Pressione qualquer tecla para voltar ao menu...")
    Inkey(0)

RETURN NIL

FUNCTION MenuEntrada(aEstoque)
    LOCAL nCodigo := 0, nQtd := 0, nPos := 0

    CLS
    Qout("Entrada de Estoque")
    INPUT "Digite o c¢digo do produto: " TO nCodigo

    nPos := BuscarPosicaoPorCodigo(aEstoque, nCodigo)

    IF nPos == 0
        Qout("Erro: Produto n∆o encontrado")
    ELSE
        Qout("Produto selecionado: " + aEstoque[nPos][2])
        Qout("Quantidade atual:   " + AllTrim(Str(aEstoque[nPos][3])))
        Qout("")
        INPUT "Quantidade de entrada: " TO nQtd

        IF DarEntradaEstoque(aEstoque, nPos, nQtd)
            Qout("Entrada realizada! Nova quantidade: " + AllTrim(Str(aEstoque[nPos][3])))
        ELSE
            Qout("Erro: A quantidade de entrada deve ser maior que zero.")
        ENDIF
    ENDIF

    Inkey(0)

RETURN NIL

FUNCTION MenuSaida(aEstoque)
    LOCAL nCodigo := 0, nQtd := 0, nPos := 0

    CLS
    Qout("S†ida de Estoque")
    INPUT "Digite o c¢digo do produto: " TO nCodigo

    nPos := BuscarPosicaoPorCodigo(aEstoque, nCodigo)

    IF nPos == 0
        Qout("Erro: Produto n∆o encontrado")
    ELSE
        Qout("Produto selecionado: " + aEstoque[nPos][2])
        Qout("Quantidade atual:   " + AllTrim(Str(aEstoque[nPos][3])))
        Qout("")
        INPUT "Quantidade de sa°da: " TO nQtd

        IF DarSaidaEstoque(aEstoque, nPos, nQtd)
            Qout("Sa°da realizada! Nova quantidade: " + AllTrim(Str(aEstoque[nPos][3])))
        ELSE
            Qout("Erro: Quantidade inv†lida ou Estoque Insuficiente para esta sa°da!")
        ENDIF
    ENDIF

    Inkey(0)

RETURN NIL

FUNCTION MenuBuscar(aEstoque)
    LOCAL nCodigo := 0, nPos := 0

    Qout("Buscar Produto")
    INPUT "Digite o c¢digo do produto: " TO nCodigo

    nPos := BuscarPosicaoPorCodigo(aEstoque, nCodigo)

    IF nPos == 0
        Qout("Produto n∆o localizado no sistema")
    ELSE
        Qout("")
        Qout("C¢digo: " + AllTrim(Str(aEstoque[nPos][1])))
        Qout("Nome: " + aEstoque[nPos][2])
        Qout("Em Estoque: " + AllTrim(Str(aEstoque[nPos][3])))
        Qout("Preáo Unit.: R$ " + Str(aEstoque[nPos][4], 10, 2))
        Qout("Subtotal: R$ " + Str(aEstoque[nPos][3] * aEstoque[nPos][4], 10, 2))
        Qout("///////////////////////////////////")
    ENDIF

    Inkey(0)

RETURN NIL

FUNCTION MenuRelatorio(aEstoque)
    LOCAL i         := 0
    LOCAL nSubTotal := 0

    Qout("Relat¢rio Patrimonial de Estoque")
    Qout("///////////////////////////////////")

    IF Len(aEstoque) == 0
        Qout("Nenhum dado dispon°vel para o relat¢rio.")
    ELSE
        Qout(PadR("Id", 6) + " | " + PadR("Nome", 20) + " | " + PadR("Quantidade", 6) + " | " + PadR("Prec. UNIT", 12) + " | " + "Total Acumulado")
        Qout("-------------------------------------------------------------------------")

        FOR i := 1 TO Len(aEstoque)
            nSubTotal := aEstoque[i][3] * aEstoque[i][4]

            Qout(PadR(AllTrim(Str(aEstoque[i][1])), 6) + " | " + ;
                 PadR(aEstoque[i][2], 20)              + " | " + ;
                 PadR(AllTrim(Str(aEstoque[i][3])), 6) + " | R$ " + ;
                 PadR(Str(aEstoque[i][4], 8, 2), 9)    + " | R$ " + ;
                 Str(nSubTotal, 10, 2))
        NEXT

        Qout("///////////////////////////////////")
        Qout("Valor total do estoque da mem¢ria R$ " + Str(CalcularValorTotalEstoque(aEstoque), 12, 2))
    ENDIF

    Qout("///////////////////////////////////")
    Qout("Pressione qualquer tecla para voltar ao menu...")
    Inkey(0)

RETURN NIL