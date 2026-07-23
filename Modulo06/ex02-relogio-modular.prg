REQUEST HB_CODEPAGE_PT850

FUNCTION main()

    LOCAL cHoraBruta     := ""
    LOCAL cHoraFormatada := ""
    LOCAL nSegundo       := 0

    hb_cdpSelect("PT850") // Config para acentua‡Æo

    FOR nSegundo := 1 TO 30

        cHoraBruta := ObterHora()
        cHoraFormatada := FormatHora(cHoraBruta)
        
        ExibirHora(cHoraFormatada)

        hb_IdleSleep(1)

    NEXT

    Qout("")

RETURN NIL

FUNCTION ObterHora()
RETURN Time()

FUNCTION FormatHora(cHora)
RETURN AllTrim(cHora)

FUNCTION ExibirHora(cHoraFormatada)
    ?? Chr(13) + "Hora Atual: " + cHoraFormatada
RETURN NIL