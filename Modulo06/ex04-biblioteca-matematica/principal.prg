REQUEST HB_CODEPAGE_PT850

// Carrega o arquivo da biblioteca externa
SET PROCEDURE TO matematica.prg

FUNCTION main()

    hb_cdpSelect("PT850") // Configura‡Æo de acentua‡Æo

    Qout("Teste da biblioteca 'matematica.prg'")
    Qout("")

    // Teste 1: fatorial
    Qout("1. Testando FatorialN():")
    Qout("Fatorial de 5 (5!): " + AllTrim(Str(FatorialN(5))))
    Qout("Fatorial de 0 (0!): " + AllTrim(Str(FatorialN(0))))
    Qout("/////////////////////////")

    // Teste 2: numero primo
    Qout("2. Testando EhPrimo():")
    Qout("O n£mero 7 ‚ primo:  " + iif(EhPrimo(7), "Sim", "NÆo"))
    Qout("O n£mero 10 ‚ primo: " + iif(EhPrimo(10), "Sim", "NÆo"))
    Qout("/////////////////////////")

    // Teste 3: MDC
    Qout("3. Testando MDC():")
    Qout("MDC entre 24 e 36: " + AllTrim(Str(MDC(24, 36))))
    Qout("/////////////////////////")

    // Teste 4: MMC
    Qout("4. Testando MMC():")
    Qout("MMC entre 12 e 18: " + AllTrim(Str(MMC(12, 18)))) 
    Qout("/////////////////////////")

RETURN NIL