#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE teams, games")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != "year" ]]
  then
    # find all country names and insert into teams
    # get winner team_id
    WIN_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    # if not found
    if [[ -z $WIN_TEAM_ID ]]
    then 
      INSERT_WIN_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      if [[ $INSERT_WIN_RESULT == "INSERT 0 1" ]]
      then
        echo Inserted into teams, $WINNER
      fi
    fi

    # get opponent team_id
    OPP_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    # if not found
    if [[ -z $OPP_TEAM_ID ]]
    then
      INSERT_OPP_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      if [[ $INSERT_OPP_RESULT == "INSERT 0 1" ]]
      then
        echo Inserted into teams, $OPPONENT
      fi
    fi

  fi
done


cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != "year" ]]
  then
    # get winner_id
    WINNER_ID=$($PSQL "SELECT winner_id FROM games INNER JOIN teams ON games.winner_id = teams.team_id WHERE name='$WINNER'")
    # if not found
    if [[ -z $WINNER_ID ]]
    then 
      TEAM_WIN_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    # if found
    else 
      TEAM_WIN_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    fi
    
    
    # get opponent_id
    OPPONENT_ID=$($PSQL "SELECT opponent_id FROM games INNER JOIN teams ON games.opponent_id = teams.team_id WHERE name='$OPPONENT'")
     # if not found
    if [[ -z $OPPONENT_ID ]]
    then 
      TEAM_OPP_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    # if found
    else 
      TEAM_OPP_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    fi

    # insert data from csv file into the database
    INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $TEAM_WIN_ID, $TEAM_OPP_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
    if [[ $INSERT_GAME_RESULT == "INSERT 0 1" ]]
    then 
      echo Inserted into games, $YEAR, $ROUND, $WINNER, $OPPONENT, $WINNER_GOALS, $OPPONENT_GOALS
    fi
  fi
  
done