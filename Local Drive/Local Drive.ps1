#This script lists out all drives on the local machine along with their used, free, and capacity for each. The total free space of all drives will also be shown.

Get-PSDrive | ?{$_.Free -gt 1} | %{
    $Count = 0
    Write-Host ""
    } {$_.Name + ": Used(GB): " + ("{0:N2}" -f ($_.Used/1gb)) + "  Free(GB): " + ("{0:N2}" -f ($_.free/1gb)) + "  Capacity(GB): " + ("{0:N2}" -f (($_.Used + $_.Free/1gb)/1gb))
    $Count = $Count + $_.Free
    }{
Write-Host"";Write-Host "Total Free Space(GB): " ("{0:N2}" -f ($Count/1gb)) -backgroundcolor magenta
}

