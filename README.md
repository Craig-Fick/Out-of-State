# Out-of-State
Project contains a write-up on variables to consider when moving out-of-state and a few tools for analyzing. Written in R markdown and published as HTML. The tool linked in the end is to Tableau Public which is a interactive map that allows users to set specific ranges for different variables where the states that fit the ranges are highlighted for you.

Overall project can be viewed here.
https://rpubs.com/Cfick/Out-of-State

Data was collected via web scrape and tidyCensus API. Variables explored and sources can be viewed below.

 __API__

* __tidycensus__: This is a great api that consist of census information for the united states including race percentages, age, and population (key required).         
 https://api.census.gov/data/key_signup.html                                                                                                                 

 __Web Scrape__

* __U.S. Bureau of Labor Statistics__: This data contains the amount of civilian labor force, number of unemployed, and percentage unemployed by state.                        
https://www.bls.gov/news.release/laus.t01.htm

* __usabynumbers.com__: This data contains the cost of living index ranks by state.                                                                                                        
https://usabynumbers.com/states-ranked-by-cost-of-living/

* __currentresults.com__: This data contains the average temperature by state.                                                   
https://www.currentresults.com/Weather/US/average-annual-state-temperatures.php

* __worldpopulationreview.com__: This data contains amount of average snowfall in inches by state.                                                                             
https://worldpopulationreview.com/state-rankings/snowiest-states

* __worldpopulationreview.com__: This data contains air quality by state.                                                                                                              
https://worldpopulationreview.com/state-rankings/air-quality-by-state

* __U.S. Bureau of Labor Statistics__: This data contains the states public school overall ranking.                                                                               
https://worldpopulationreview.com/state-rankings/public-school-rankings-by-state

* __en.wikipedia.org__: This data contains crime rates for each state.                                                                                                          
https://en.wikipedia.org/wiki/List_of_U.S._states_and_territories_by_violent_crime_rate

* __en.wikipedia.org__: This data contains political views for each state from the last presidential election.                                                                
https://en.wikipedia.org/wiki/Political_party_strength_in_U.S._states

* __thrillist.com__: This data contains state ranks for scenery.                                                                                                         
https://www.thrillist.com/travel/nation/most-beautiful-states-in-america


## __Data Definitions__

* __GEOID__: This gives each state a unique id number.
* __NAME__: Name of the state.
* __population__: Population per state.
* __Income__: Average income per state.
* __geometry__: A spatial feature that helps with mapping.
* __labor_force__: Amount of people in the state that can work, both employed and unemployed.
* __unempl__: Amount of people unemployed in the state.
* __unempl_perc__: Percentage of people unemployed in the state.
* __avg_temp_f__: Average temperature for each state in Fahrenheit. 
* __avg_snow_in__: Average amount of snowfall in inches per year by state.
* __cost_index__: The cost of living index by state. The higher it is the more expensive.
* __air_quality__: The air quality rating per state. The lower the number the better.
* __school_rank__: The overall quality of public schools by state rankings. The lower the value the better the school systems.
* __crime_rate__: The amount of crime by state. The higher the number the worse the crime rates.
* __diversity__: Created value combining the number of races present in the state and proportions. The higher the score, the more diverse the state is.
* __median_age__: The median age for each state.
* __politic__: The political stance in the previous presidential elections. Republican is represented as "0" and democratic as "1".
* __scenery__: This is the ranking for each states scenery. The lower the number, the better the state scored for scenery.

Link to Tableau Public Dashboard Tool:
https://public.tableau.com/app/profile/craig.scott.fick/viz/shared/ZSMCTNWK9
