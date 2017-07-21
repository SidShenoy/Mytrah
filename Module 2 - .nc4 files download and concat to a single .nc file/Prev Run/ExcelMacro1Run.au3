#include <Excel.au3>
#include <MsgBoxConstants.au3>

; Create application object
Local $oExcel = _Excel_Open()

Local $oWorkbook = _Excel_BookOpen($oExcel,"C:\Users\Siddhanth\Documents\JSPProjectDocuments/NetCDF4Excel_2007.xlsm")

WinWaitActive("NetCDF4Excel_2007 - Excel")
WinActivate ("NetCDF4Excel_2007 - Excel")
Send("!x")
Send("n")
Send("{ENTER}")
Send('"C:\Users\Siddhanth\Documents\JSPProjectDocuments\parametersandstuff\SomeFiles\Final\20.5_77.5.nc"');
Send("{ENTER}")
WinWaitActive("NetCDF4Excel_2007 - Excel")
WinClose("NetCDF4Excel_2007 - Excel")
_Excel_Close($oExcel)