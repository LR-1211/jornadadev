FUNCTION main()
    
    LOCAL nNota1 := 0
    LOCAL nNota2 := 0
    LOCAL nNota3 := 0
    LOCAL nNota4 := 0
    LOCAL nMedia := 0

    Qout("Digite a primeira nota: ")
    INPUT TO nNota1
    Qout("Digite a segunda nota: ")
    INPUT TO nNota2
    Qout("Digite a terceira nota: ")
    INPUT TO nNota3
    Qout("Digite a quarta nota: ")
    INPUT TO nNota4

    nMedia := (nNota1 * 1 + nNota2 * 2 + nNota3 * 3 + nNota4 * 4) / (1 + 2 + 3 + 4)

    Qout("A m‚dia ponderada ‚: " + Str(nMedia, 10, 2))

RETURN NIL