## challenge-id
2021-Shadow-IT-Bad

## challenge-name
Shadow IT Bad.

### challenge-description
Hey Player1! Welcome back glad you have you here.

We recently just completed a pentest and the group has left a bunch of backdoors with persistence mechanisms scattered accross the environment. Instead of killing them from thier end, I thought this would be a great chance to practice our own threat hunting and incident response!

I've provided you a archive of a Kansa run against our hosts. This gathered running processes and SysInternal's AutoRuns information from the hosts. For these I've also stacked (frequency analysis) the output. The lower the count the fewer instances of it we have in our environment. Just remember, malware is rare and should stick out when comparing across the environment.

First things first, one of our systems had Teamviewer running, and thats not allowed by corprate policy. 

Review the Stacked proccesses and the number of processes running from the C:\Program Files (x86)\TeamViewer\ directory.

Flag Example:
flag{17}

## flag
flag{4}

## difficulty-rating
Select One: 
Easy


## Solution 
>
> For this challenge players need to unzip the Kansa output.
>
> Players need to find Kansa\Output_20211102150055\ProcsWMI\Stack\ProcWMI-Stack.csv
> 
> Players should review the output, and filter in the caption column for 'TeamViewer' or 'C:\Program Files (x86)\TeamViewer\'
> 
> 4 processes should appear:
> 
> tv_x64.exe, tv_w32.exe, TeamViewer_Service.exe, TeamViewer.exe

 
