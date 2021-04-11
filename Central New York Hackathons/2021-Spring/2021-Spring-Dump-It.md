## challenge-id
2021-Spring-Dump-It

## challenge-name
Dump it.

### challenge-description
The attacker might have gotten access to a secret UUID we stored on the machine. I cant remember where exactly we used it, but it was some credential. Can you recover it?

Flag format - flag{UUID}

## flag
flag{e8fc0d6e-944c-43a9-b8c5-59f8f4404b31}

## difficulty-rating
Select One: 
Medium


## Solution 
>
> For this challenge knowing what a UUID is helpful https://en.wikipedia.org/wiki/Universally_unique_identifier
>
> Players should also learn that Jenkins has a credentials store. Which encrypts secrets.
>
> This store can be dumped. In this senario it has been dumpped by the attacker however the players must do it aswell to get the secret.
>
> A tool to do this can be found here - https://github.com/hoto/jenkins-credentials-decryptor
