#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=worldcup --no-align --tuples-only -c"

# Do not change code above this line. Use the PSQL variable above to query your database.

echo -e "\nTotal number of goals in all games from winning teams:"
echo "$($PSQL "SELECT SUM(winner_goals) FROM games")"

echo -e "\nTotal number of goals in all games from both teams combined:"
echo "$($PSQL "SELECT sum(winner_goals + opponent_goals) AS total_goals FROM games;")"

echo -e "\nAverage number of goals in all games from the winning teams:"
echo "$($PSQL " SELECT AVG(winner_goals) as average_winning_goals FROM games;")"

echo -e "\nAverage number of goals in all games from the winning teams rounded to two decimal places:"
echo "$($PSQL "SELECT ROUND(AVG(winner_goals),2) as average_winning_goals FROM games;")"

echo -e "\nAverage number of goals in all games from both teams:"
echo "$($PSQL "SELECT AVG(winner_goals+opponent_goals)
as average_game_goals FROM games;")"

echo -e "\nMost goals scored in a single game by one team:"
echo "$($PSQL "SELECT MAX(winner_goals) AS most_goals FROM games;")"

echo -e "\nNumber of games where the winning team scored more than two goals:"
echo "$($PSQL "SELECT count(*) total_games FROM games WHERE winner_goals > 2;")"

echo -e "\nWinner of the 2018 tournament team name:"
echo "$($PSQL "SELECT t.name FROM games as g FULL JOIN teams as t ON t.team_id = g.winner_id WHERE g.year = 2018 AND g.round = 'Final';")"

echo -e "\nList of teams who played in the 2014 'Eighth-Final' round:"
echo "$($PSQL "SELECT t.name FROM games as g FULL JOIN teams as t ON (t.team_id = g.winner_id) OR (t.team_id = g.opponent_id)  WHERE round = 'Eighth-Final' and year = 2014 ORDER BY name;")"

echo -e "\nList of unique winning team names in the whole data set:"
echo "$($PSQL "SELECT DISTINCT(t.name)  FROM games as g LEFT JOIN teams as t ON t.team_id = g.winner_id ORDER BY name;")"

echo -e "\nYear and team name of all the champions:"
echo "$($PSQL "SELECT g.year, t.name FROM games as g FULL JOIN teams as t ON t.team_id = g.winner_id WHERE g.round = 'Final' ORDER BY year;")"

echo -e "\nList of teams that start with 'Co':"
echo "$($PSQL "SELECT name FROM teams WHERE name LIKE 'Co%';")"
