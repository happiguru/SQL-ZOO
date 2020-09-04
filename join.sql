SELECT matchid, player FROM goal 
  WHERE teamid = 'GER'

SELECT id,stadium,team1,team2
  FROM game
WHERE id = 1012;

SELECT player,teamid,stadium,mdate
  FROM game JOIN goal ON (id=matchid) 
WHERE goal.teamid = 'GER';

SELECT team1,team2,player 
FROM game JOIN goal on (id=matchid) 
WHERE goal.player LIKE 'Mario%';

SELECT player, teamid, coach, gtime
  FROM goal JOIN eteam ON (teamid=id)
 WHERE gtime<=10;

SELECT mdate, teamname
FROM game JOIN eteam on (game.team1 = eteam.id)
WHERE coach = 'Fernando Santos';

SELECT player 
FROM goal JOIN game on (matchid = game.id)
where stadium = 'National Stadium, Warsaw';

SELECT DISTINCT player
FROM game JOIN goal ON matchid = id 
WHERE (team1='GER' OR team2='GER')
AND teamid!='GER';


SELECT teamname, COUNT(*)
  FROM eteam JOIN goal ON id=teamid
 GROUP BY teamname;

SELECT stadium, COUNT(*) FROM game 
JOIN goal 
ON id=matchid
GROUP BY stadium;

SELECT matchid, mdate, COUNT(*) FROM game 
JOIN goal ON goal.matchid = game.id 
WHERE (team1 = 'POL' OR team2 = 'POL')
GROUP BY matchid;

SELECT matchid, mdate, COUNT(teamid)
  FROM game JOIN goal ON matchid = id 
 WHERE teamid = 'GER' 
GROUP BY matchid;

SELECT DISTINCT mdate,
  team1,
  SUM(CASE WHEN teamid=team1 THEN 1 ELSE 0 END) score1,
  team2,
  SUM(CASE WHEN teamid=team2 THEN 1 ELSE 0 END) score2
  FROM game LEFT JOIN goal ON matchid = id
  GROUP BY mdate, matchid, team1, team2;
