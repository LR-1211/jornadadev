REQUEST HB_CODEPAGE_PT850

#define PI 3.14159

FUNCTION main()
    
    LOCAL nRaio := 0
    LOCAL nAreaCircunferencia := 0
    //Sobre a Pergunta A
    LOCAL nCatetoA := 0
    LOCAL nCatetoB := 0
    LOCAL nHipotenusa := 0
    //Sobre a Pergunta B
    LOCAL nPeso := 0
    LOCAL nAltura := 0
    LOCAL nIMC := 0
    //Sobre a Pergunta C

    Qout("A) Calculo da area de um circulo")
    Qout("Informe o valor do raio: ")
    INPUT TO nRaio

    nAreaCircunferencia := PI * (nRaio ^ 2)
    Qout("Area do Circulo: " + Str(nAreaCircunferencia, 10, 2))
    Qout("////////////////////////////////////")

    // Ex B

    Qout("B) Calculo da hipotenusa de um triƒngulo retƒngulo")
    Qout("Informe o valor do cateto A: ")
    INPUT TO nCatetoA
    Qout("Informe o valor do cateto B: ")
    INPUT TO nCatetoB

    nHipotenusa := Sqrt((nCatetoA ^ 2) + (nCatetoB ^ 2))
    Qout("A Hipotenusa ‚: " + Str(nHipotenusa, 10, 2))
    Qout("////////////////////////////////////")

    // EX C

    Qout("C) Calculo do ¡ndice de massa corporal")
    Qout("Informe o Peso (em kilo gramas): ")
    INPUT TO nPeso
    Qout("Informe a Altura (em metros): ")
    INPUT TO nAltura

    nIMC := nPeso / (nAltura ^ 2)
    Qout("IMC: " + Str (nIMC, 10, 2))
    Qout("////////////////////////////////////")
    

RETURN NIL