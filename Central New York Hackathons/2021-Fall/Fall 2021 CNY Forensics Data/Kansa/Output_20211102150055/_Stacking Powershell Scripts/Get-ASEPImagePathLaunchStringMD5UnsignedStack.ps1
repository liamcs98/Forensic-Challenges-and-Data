<#
.SYNOPSIS
Get-ASEPImagePathLaunchStringStack.ps1
Requires logparser.exe in path

Pulls frequency of autoruns based on ImagePath, LaunchString and MD5 tuple
where the publisher is not verified (unsigned code) and the ImagePath is
not 'File not found'

This script expects files matching the *autorunsc.txt pattern to be in the
current working directory.
.NOTES
DATADIR Autorunsc
#>


if (Get-Command logparser.exe) {
    $lpquery = @"
    SELECT
        COUNT([Image Path], [Launch String], MD5) as ct,
        [Image Path],
        [Launch String],
        MD5,
	Signer
    FROM
        *autorunsc.csv
    WHERE
        Signer not like '(Verified)%' and
        ([Image Path] not like 'File not found%')
    GROUP BY
        [Image Path],
        [Launch String],
        MD5,
	Signer
    ORDER BY
        ct ASC
"@

    & logparser -stats:off -i:csv -dtlines:0 -rtp:-1 "$lpquery"

} else {
    $ScriptName = [System.IO.Path]::GetFileName($MyInvocation.ScriptName)
    "${ScriptName} requires logparser.exe in the path."
}

