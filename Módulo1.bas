Attribute VB_Name = "Módulo1"
Sub Dashboard_Update()  ' macro name
    Dim trabajo As String   ' dim - declaring variables
    Dim scJob As SlicerCache
    Dim wsPodio As Worksheet
    Dim shp As Shape
    Dim si As SlicerItem
    Dim encontrado As Boolean
    
    ' read job type in ae38, deleting spaces (trim) in DB and store it as a value in trabajo
    trabajo = Trim(Sheets("DB").Range("AE38").Value)
    
    ' Reference
    Set scJob = ActiveWorkbook.SlicerCaches("SegmentaciónDeDatos_Job_Title") ' slicer (job)
    Set wsPodio = Sheets("DB") ' worksheet podio
    
    ' clean filter
    scJob.ClearManualFilter
    
    encontrado = False
    
    ' Filter slicer Job_Title if there is a value
    If trabajo <> "" Then
        For Each si In scJob.SlicerItems
            If si.Name = trabajo Then
                si.Selected = True
                encontrado = True
            Else
                si.Selected = False
            End If
        Next si
        
        
        ' don't show top 3 when there is no coincidence, CapaPodio - green square
        On Error Resume Next
        wsPodio.Shapes("CapaPodio").Visible = True
        On Error GoTo 0
        
    Else
        ' AE38 empty: show top 3 and clean filter
        On Error Resume Next
        wsPodio.Shapes("CapaPodio").Visible = False
        scJob.ClearManualFilter
        On Error GoTo 0
    End If
    
    
    
    ' Update pivots
    Dim pt As PivotTable
    Dim ws As Worksheet
    For Each ws In ThisWorkbook.Worksheets
        For Each pt In ws.PivotTables
            pt.RefreshTable
        Next pt
    Next ws
    
    ' Update graphics and KPIs
End Sub








