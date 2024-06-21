#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
  echo "$($PSQL "TRUNCATE games, teams")"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != "year" ]]
  then
# get winner id
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER';")
# if not found
    if [[ -z $WINNER_ID ]]
    then
# insert team
      INSERT_TEAM=$($PSQL "INSERT INTO teams (name) VALUES ('$WINNER');")

      if [[ $INSERT_TEAM == "INSERT 0 1" ]]
      then
# get new winner id
        WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER';")
      fi
    fi
# get opponent id
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';")
# if not found
    if [[ -z $OPPONENT_ID ]]
    then
# insert team
      INSERT_TEAM=$($PSQL "INSERT INTO teams (name) VALUES ('$OPPONENT');")

      if [[ $INSERT_TEAM == "INSERT 0 1" ]]
      then
# get new opponent id
        OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';")      
      fi
    fi
# insert into games
    INSERT_GAME=$($PSQL "INSERT INTO games (year, winner_id, opponent_id, winner_goals, opponent_goals, round) VALUES ($YEAR, $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS, '$ROUND');")
      if [[ $INSERT_GAME == "INSERT 0 1" ]]
      then
        echo "Inserted $ROUND match between $WINNER and $OPPONENT for the year $YEAR!"
      fi
  fi
done
