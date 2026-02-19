VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Hoja1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True
    ' automatize everything if validation cell changes

Private Sub Worksheet_Change(ByVal Target As Range)  ' any time smth changes in this sheet, read this code
    If Not Intersect(Target, Me.Range("AE38")) Is Nothing Then  ' target - what changed, me.range(".."), the cell you expect changes, intersect(...) whether what changed is the same as what is written in the cell you expect changes, not...is nothing (whether there is a coincidence)
        Call Dashboard_Update
    End If
End Sub









