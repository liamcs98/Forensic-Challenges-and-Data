<#
.SYNOPSIS
Get-ASEPImagePathLaunchStringStack.ps1
Requires logparser.exe in path
Pulls frequency of autoruns based on ImagePath and LaunchString tuple where
for unsigned code and where the ImagePath is not 'File not found'

This script expects files matching the pattern *autorunsc.txt to be in the
current working directory.
.NOTES
DATADIR Autorunsc
#>

if (Get-Command logparser.exe) {

    $lpquery = @"
    SELECT
        COUNT([Image Path], [Launch String]) as ct,
        [Image Path],
        [Launch String]
    FROM
        *autorunsc.csv
    WHERE
        Signer not like '(Verified)%' and
        ([Image Path] not like 'File not found%')
    GROUP BY
        [Image Path],
        [Launch String]
    ORDER BY
        ct ASC
"@

    & logparser -stats:off -i:csv -dtlines:0 -rtp:-1 "$lpquery"

} else {
    $ScriptName = [System.IO.Path]::GetFileName($MyInvocation.ScriptName)
    "${ScriptName} requires logparser.exe in the path."
}

