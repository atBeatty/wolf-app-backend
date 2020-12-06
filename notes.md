### wolfGame

_teeTime_
_stakes_ 
_belongsTo_ golfer
_belongsTo_ course

### golfer
_initials_
_hasMany_ wolfGames
_hasMany_ courses, _through_ wolfGames


### course
_name_
_slope_
_rating_
_par_
_hasMany_ holes
_hasMany_ wolfGames


### hole
_number_
_yards_
_par_

_belongsTo_ course


#### Wolf Rules and Logic
Every hole

* Wolf is ALWAYS last golfer.
* Order of play is always shifted... use array.unshift(), pop().

* As golfer walks off tee, this is where they set the wolf game.
    * **Lone Wolf**
    * **Sidekick** (if there is one) 

* Now there are two teams.
    * 2 points to WOLFPACK if they win
    * 3 points to HUNTERS if they win

* If **Lone Wolf** scenario
    * 4 points if LW wins
    * 1 point to others if LW loses

##### Player input
    1. Onboarding
    
    1. Start of hole: Determine teams
    1. End of hole: put in scores
    1. Auto calculate game logic
    



