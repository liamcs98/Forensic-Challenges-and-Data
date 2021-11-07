## challenge-id
2021-Must-Persist

## challenge-name
Must Persist.

### challenge-description
Hey Player1! 

Thanks for finding that TeamViewer process. It’s not just enough to kill the process, that'll work for a bit (sometimes), but programs and malware that run without user interaction have a persistence mechanism. TeamViewer is legit software so it shouldn’t be too hard to find. 

Take a look in the Autoruns stack and see if you can find the full path of the binary it uses to persist.

Flag Example:
flag{c:\file\path all\lower\case.exe}

## flag
flag{c:\program files (x86)\teamviewer\teamviewer_service.exe}

## difficulty-rating
Select One: 
Easy


## Solution 
>
> For this challenge players need to unzip the Kansa output.
>
> Players need to find Kansa\Output_20211102150055\Autorunsc\Stacks\Autorunsc_stacked.csv
> 
> Players should review the output, and filter in the Image path column for 'TeamViewer' or 'C:\Program Files (x86)\TeamViewer\'
> 
> One result should appear - c:\program files (x86)\teamviewer\teamviewer_service.exe
>



