#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.


# Function to get team ID from team name
get_team_id() {
  local team_name="$1"
  local team_id=$($PSQL "SELECT team_id FROM teams WHERE name='$team_name'")
  echo "$team_id"
}

# Main script
echo $($PSQL "TRUNCATE teams, games")
tail -n +2 games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS; do
  if [[ $YEAR != "year" ]]; then
    # Get or insert winner ID
    WINNER_ID=$(get_team_id "$WINNER")
    if [[ -z $WINNER_ID ]]; then
      $PSQL "INSERT INTO teams(name) VALUES('$WINNER') ON CONFLICT DO NOTHING"
      WINNER_ID=$(get_team_id "$WINNER")
    fi

    # Get or insert opponent ID
    OPPONENT_ID=$(get_team_id "$OPPONENT")
    if [[ -z $OPPONENT_ID ]]; then
      $PSQL "INSERT INTO teams(name) VALUES('$OPPONENT') ON CONFLICT DO NOTHING"
      OPPONENT_ID=$(get_team_id "$OPPONENT")
    fi

    # Insert game data
    $PSQL "INSERT INTO games(year, round, winner_goals, opponent_goals, winner_id, opponent_id) VALUES($YEAR, '$ROUND', $WINNER_GOALS, $OPPONENT_GOALS, $WINNER_ID, $OPPONENT_ID)"
  fi
done
