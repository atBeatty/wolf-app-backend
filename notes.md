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