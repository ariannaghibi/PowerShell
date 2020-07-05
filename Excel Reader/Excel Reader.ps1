#This script reads an Excel file and outputs each Name by their respective color. Total numbers of all objects will also be shown. 

Set-Location "C:\Users\Arian\Desktop\Programming\PowerShell\Excel Reader"
Import-Csv File.csv
$OurObjectArray = Import-Csv File.csv
$TotalOfNumberColumn = 0
$OurObjectArray | ForEach-Object{
    Write-Host "The name of the object is:" $_.objectpropertyname -ForegroundColor $_.objectpropertycolor 
    $TotalOfNumberColumn += $_.objectpropertynumber
}

Write-Host ""; Write-Host "Total number: " $TotalOfNumberColumn

