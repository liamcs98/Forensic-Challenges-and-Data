## challenge-id
2021-Access-Granted

## challenge-name
Access Granted

### challenge-description
Hey Player1, take a few minutes and get used to that data I sent over. Should be an interesting case, something about a travel or spy agency? Something like that.
Anyway can you figure out what that Jenkis Authorization Strategy was? should be in a config attribute in there or something. 

Flag format - flag{something.like.this}

## flag
flag{hudson.security.FullControlOnceLoggedInAuthorizationStrategy}

## difficulty-rating
Select One: 
Easy

## Solution 
>
> To do this, players need to get comfortable with the data presented to them. 
>
> This is a Jenkins Data Directory.
>
> In here is a config.xml which contains the information they need.
>
> Line 8 show the following ->   <authorizationStrategy class="hudson.security.FullControlOnceLoggedInAuthorizationStrategy">
>
> This means that any logged in user can be a full admin.