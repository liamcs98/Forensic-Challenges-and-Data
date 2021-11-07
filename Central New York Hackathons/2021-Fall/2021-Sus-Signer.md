## challenge-id
2021-Sus-Signer

## challenge-name
Sus Signer!

### challenge-description
Good job finding that back door, but there are probably more! That signer is pretty strange, how many persistence items do we have with that signer?

Flag Example:
flag{17}

## flag
flag{3}

## difficulty-rating
Select One: 
Medium


## Solution 
>
> For this challenge players need to unzip the Kansa output.
>
> Players need to find Kansa\Output_20211102150055\Autorunsc\Stacks\Autorunsc_stacked.csv
> 
> This is where timeline explorer comes in handy. Grouping by the Signer and looking for 'Signer: (Not verified) Apache Software Foundation  (Count: 3)' shows the count.
>
> Players can also use the MD5.
> 


