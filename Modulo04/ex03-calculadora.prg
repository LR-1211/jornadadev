REQUEST HB_CODEPAGE_PT850

FUNCTION main()

    LOCAL nNum1 := 0
    LOCAL nNum2 := 0
    LOCAL nModo := 0

    hb_cdpSelect("PT850") //Config pra acentuaá∆o

    INPUT "Digite o primeiro n£mero: " TO nNum1
    INPUT "Digite o segundo n£mero: " TO nNum2 

    Qout("/////////////////////////////")
    Qout("Escolha a operaá∆o desejada:")
    Qout("1 - Soma")
    Qout("2 - Subtraá∆o")
    Qout("3 - Multiplicaá∆o")
    Qout("4 - Divis∆o")
    Qout("5 - Potància")
    Qout("6 - Raiz quadrada do primeiro n£mero")
    Qout(":")

    INPUT TO nModo

    DO CASE
        CASE nModo == 1
            Qout("A resposta da soma Ç: " + Str(nNum1 + nNum2, 10, 2))
            
        CASE nModo == 2
            Qout("A respostas da subtraá∆o Ç: " + Str(nNum1 - nNum2, 10, 2))
            
        CASE nModo == 3
            Qout("A resposta da multiplicaá∆o Ç: " + Str(nNum1 * nNum2, 10, 2))
            
        CASE nModo == 4
            IF nNum2 == 0
                Qout("Erro: N∆o Ç poss°vel dividir por zero")
            ELSE
                Qout("A resposta da divis∆o Ç: " + Str(nNum1 / nNum2, 10, 2))
            ENDIF
            
        CASE nModo == 5
            Qout("A resposta da potància Ç: " + Str(nNum1 ^ nNum2, 10, 2))
            
        CASE nModo == 6
            Qout("A raiz quadrada do primeiro n£mero Ç: " + Str(Sqrt(nNum1), 10, 2))
            
        OTHERWISE
            Qout("Opá∆o inv†lida!")
    ENDCASE

RETURN NIL