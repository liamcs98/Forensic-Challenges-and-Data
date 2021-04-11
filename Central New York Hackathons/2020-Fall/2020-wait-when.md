## challenge-id
2020-wait-when

## challenge-name
Wait when?

### challenge-description
The process name sure is strange. Actually any chance that you have the time the process started? Convert it into UTC ZULU time too so I can look at it from my end.

Flag format - flag{yyyy-mm-ddTHH:mm:SS.000Z}

## flag
flag{2020-10-12T02:45:50.445Z}

## difficulty-rating
Select One: 
2 - Easy

## challenge-files
forensics\FINAL_DRAFT_CTF_SERVER

## related-ksa-ids
# TODO

### ksa-context
# TODO

## notes
Marked as Easy since there is no processing needed, but you do need to have done the previous challenge, and convert timestamps.

## Solution 
>! Answer Location forensics\FINAL_DRAFT_CTF_SERVER\Processed\LiveResponse\PWSH-Get-ProcessList.csv
>! The process "C:\Windows\temp\xmrig.exe" has start time listed as 20201011194550.445425-420
>! Thats a bunch of mess and we need to give people a time frame so they can investigate.
>! To do this you need to figure out what that mess means, and what ZULU timestamps are.
>! Step by step - 
>! Participents should find this page https://docs.microsoft.com/en-us/windows/win32/wmisdk/cim-datetime?redirectedfrom=MSDN
>! Google "process windows creation timestamp" will get you here https://devblogs.microsoft.com/scripting/how-can-i-determine-the-date-and-time-that-a-process-started/
>! Which will get you to CIM datetime MSDN.
>! Now conversion is pretty simple. ZULU is UTC and looks like yyyy-mm-ddTHH:MM:SS.000Z
>! 20201011194550.445425-420 -> 2020-10-11T19:45:50.445425-420
>! But one thing that end is the offset in minutes from UTC so we need to convert. 
>! 420 minutes divided by 60 Seconds (to get hours) = 7
>! 20201011194550.445425-420 -> 2020-10-12T02:45:50.445Z
