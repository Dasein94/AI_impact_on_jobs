Attribute VB_Name = "Módulo3"
Sub Reset_Experience()

    On Error Resume Next
    ActiveWorkbook.SlicerCaches("SegmentaciónDeDatos_Experience_category2").ClearManualFilter
    On Error GoTo 0

End Sub

