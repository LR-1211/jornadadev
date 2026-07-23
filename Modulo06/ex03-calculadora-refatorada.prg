REQUEST HB_CODEPAGE_PT850

FUNCTION main()

    LOCAL nNum1      := 0
    LOCAL nNum2      := 0
    LOCAL nOpcao     := 0
    LOCAL nResultado := 0

    hb_cdpSelect("PT850") // Config para acentua‡Æo

    nNum1  := LerNumero("Digite o primeiro numero: ")
    nNum2  := LerNumero("Digite o segundo numero: ")
    nOpcao := LerOpcao()

    nResultado := Calcular(nNum1, nNum2, nOpcao)

    MostrarResultado(nResultado)

RETURN NIL

FUNCTION LerNumero(cMensagem)
    LOCAL nValor := 0
    INPUT cMensagem TO nValor
RETURN nValor

FUNCTION LerOpcao()
    LOCAL nModo := 0

    Qout("")
    Qout("/////////////////////////////")
    Qout("Escolha a operacao desejada:")
    Qout("1 - Soma")
    Qout("2 - Subtracao")
    Qout("3 - Multiplicacao")
    Qout("4 - Divisao")
    Qout("5 - Potencia")
    Qout("6 - Raiz quadrada do primeiro numero")
    INPUT "Opcao: " TO nModo

RETURN nModo


FUNCTION Calcular(n1, n2, nOpcao)

    DO CASE
        CASE nOpcao == 1
            RETURN n1 + n2

        CASE nOpcao == 2
            RETURN n1 - n2

        CASE nOpcao == 3
            RETURN n1 * n2

        CASE nOpcao == 4
            IF n2 == 0
                RETURN .F.
            ENDIF
            RETURN n1 / n2

        CASE nOpcao == 5
            RETURN n1 ^ n2

        CASE nOpcao == 6
            RETURN Sqrt(n1)

    ENDCASE

RETURN .F. 

FUNCTION MostrarResultado(nResultado)

    Qout("")
    Qout("///////////////////////////////////")
    
    IF ValType(nResultado) == "L" .AND. nResultado == .F.
        Qout("Erro: Operacao invalida ou divisao por zero")
    ELSE
        Qout("Resultado do calculo: " + Str(nResultado, 10, 2))
    ENDIF

    Qout("///////////////////////////////////")

RETURN NIL