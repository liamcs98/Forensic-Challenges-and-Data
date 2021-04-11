
## Hints for Challenges
For the forensics challenges you are looking at a Jenkins Server Data folder! No timestamp conversion required! Here is a road map that will help you out! 

```
JENKINS_HOME
 +- config.xml     (jenkins root configuration)
 +- *.xml          (other site-wide configuration files)
 +- userContent    (files in this directory will be served under your http://server/userContent/)
 +- fingerprints   (stores fingerprint records)
 +- nodes          (node configurations)
 +- plugins        (stores plugins)
 +- secrets        (secretes needed when migrating credentials to other servers)
 +- workspace (working directory for the version control system)
     +- [JOBNAME] (sub directory for each job)
 +- jobs
     +- [JOBNAME]      (sub directory for each job)
         +- config.xml     (job configuration file)
         +- latest         (symbolic link to the last successful build)
         +- builds
             +- [BUILD_ID]     (for each build)
                 +- build.xml      (build result summary)
                 +- log            (log file)
                 +- changelog.xml  (change log)
```

Two:

Next!

```
Since one person asked for help I'm sure many else are wondering. Jenkins is 'secure' ™️ and you might need to do some decrypting.
https://www.jenkins.io/doc/developer/security/secrets/ 
```


Three:

``` 
Hey all, we just heard back from an admin of that jenkins box. Turns out they have never heard of the job 1234? Looks pretty sus. something about dumping? dont remember. Maybe take a look at the build logs there and see what the attacker did. Maybe think like the attacker too? They must have dumped something somehow https://lmgtfy.app/?q=stealing+creds+jenkins
```

Four:

```
[1:45 PM] so is it possible to do the dump it flag in notepad. All I'm seeing is using jenkins ui. Are the other challenges reliant on this challenge?
[1:45 PM] Challenges are independent
[1:45 PM] And no
[1:46 PM] you need to find a tool online that will allow you to take the creds xml and the encryption keys and dump the cred store
[1:47 PM] but you can move on to other challenges and its not required to complete this one
```


## Flag Facts

```
/ Did you know... @CTF That the US flag   \
| has had over 27 versions? And the       |
| current one is the only version to have |
\ lasted over 50 years?                   /
  ---------------------------------------
         \   ^__^ 
          \  (oo)\_______
             (__)\       )\/\
                 ||----w |
                 ||     ||
```


```
In the mean time! I hope you all are ready for more FLAG FACTS!! ™️ patent pending
I bet you wanted to know the world's oldest continuously used flag? You sure do! The answer might surprise you! :flag_dk:
Denmark! https://www.oldest.org/wp-content/uploads/2018/06/Flag-of-Denmark.png
```


```
  ________________________________________
/ Did you know that the current US flag    \
| was designed by a competition? The       |
| winner was made by a 17-year-old high    |
| school student, Robert G. Heft, of       |
| Lancaster, Ohio who submitted the design |
| in the contest in 1958. It was chosen    |
| out of over 1,500 submissions by         |
\ President Dwight Eisenhower.             /
  ----------------------------------------
         \   ^__^ 
          \  (oo)\_______
             (__)\       )\/\
                 ||----w |
                 ||     ||
```


```
  ________________________________________
/ Did you know that the current US flag    \
| was designed by a competition? The       |
| winner was made by a 17-year-old high    |
| school student, Robert G. Heft, of       |
| Lancaster, Ohio who submitted the design |
| in the contest in 1958. It was chosen    |
| out of over 1,500 submissions by         |
\ President Dwight Eisenhower.             /
  ----------------------------------------
         \   ^__^ 
          \  (oo)\_______
             (__)\       )\/\
                 ||----w |
                 ||     ||
```


```
Did you know that not all flags have the same design front and back?? Crazy! There are 3 main ones active today!
  
  --------------------------------------------------------------
 / Moldova – Only the front displays the Coat of Arms            \
 | Paraguay – The reverse side contains the treasury seal        |
 | Saudi Arabia – has a sword and the Arabic inscription         |
 | for “There is no God but Allah and Muhammad is the            |
 | messenger of Allah.” Since the flag contains sacred writing,  |
 | the reverse side of the flag is a duplicate of the front and  |
 | two flags are usually sewn together                           /
 \--------------------------------------------------------------

     \   
      \
       ( )_( )
       (='.'=)
       (^)_(^)
More here! https://en.wikipedia.org/wiki/Flags_whose_reverse_differs_from_the_obverse
```


```
  _________________________________
/ There Is Only One Non Rectangular \
\ National Flag - Nepal             /
  ---------------------------------
         \   ^__^ 
          \  (oo)\_______
             (__)\       )\/\
                 ||----w |
                 ||     ||

:flag_np:  <- even discord likes that one!
```



