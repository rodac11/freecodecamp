#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
 
cat games.csv | while IFS="," read YEAR ROUND WINNER OPP GWIN GOPP
do
  if [[ $YEAR != 'year' ]]
  then
    $PSQL "INSERT INTO teams(name) VALUES('$WINNER')"
    $PSQL "INSERT INTO teams(name) VALUES('$OPP')" 
    fi
done


cat games.csv | while IFS="," read YEAR ROUND WINNER OPP GWIN GOPP
do
  if [[ $YEAR != 'year' ]]
  then
  W_ID="$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")"
  O_ID="$($PSQL "SELECT team_id FROM teams WHERE name='$OPP'")"
  $PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $W_ID, $O_ID, $GWIN, $GOPP)"
  fi
done
