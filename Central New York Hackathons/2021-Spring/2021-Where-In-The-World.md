## challenge-id
2021-Where-In-The-World

## challenge-name
Where in the world?

### challenge-description
Since the attacker had full access they likely gained access to where our operative is heading next. 

Can you figure out which flight number, and the destination/arrival weather, our operative can be found?

Example - flag{1234 - snow - heavy snow}

Note - ALL LOWER CASE.
Flag format - flag{integer - weather_type - condition}


## flag
flag{5110 - rain - light rain}

## difficulty-rating
Select One: 
Hard / Medium


## Solution 
>
> For this challenge players need to find Job output logs. These can be found in /jobs/<job>/builds/<number>/log
>
> Players need to recognize that there are two jobs that are interesting Flights and World Weather
>
> World Weather and Flights are scripts that return data for the current weather of some cities, and flight data.
>
> If players convert the iata airport codes in the Flight output data to the nearest city then,
>
> Compare the list of cities vs the light of weather data. They will find that only two match, Shagihi and Bejining 
>
> There is a flight from Bejing to Shangihi, with the flight number 5110 in the json ouput, which has rain - light rain as its weather.
 
