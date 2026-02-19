Attribute VB_Name = "Módulo2"
Sub Reset_Education()

    On Error Resume Next
    ActiveWorkbook.SlicerCaches("SegmentaciónDeDatos_Education_Level2").ClearManualFilter
    On Error GoTo 0

End Sub

