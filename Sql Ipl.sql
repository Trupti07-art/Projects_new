use ipl;
desc deliveries;
desc matches;
select * from deliveries;
select * from matches;
select count(*) from deliveries;
select count(*) from matches;

######## who is the player of thematch for Id
select player_of_match from matches where id=1;

######## city delhi toss decision batting #########
select count(id) from matches
where city ="Delhi" and toss_decision ="bat";

############ cities name where matches played ###########3
select distinct city from matches;

########### cities name starts who has U #########
select distinct city from matches
where city like "u%"; 

select distinct city from matches
where city like "u_"; 

####### Rising pune . take out pune 
select substr("Rising Pune Supergiant",8,4) city;

########## replace name pune to andheri #########
select replace("Rising Pune Supergiant","Pune","Andheri")Team;

######### average win by runs #######
select min(win_by_runs), avg(win_by_runs),max(win_by_runs) from matches ;

######### which match who won by 146 runs
select *from matches where win_by_runs=146;

 ## ------ another method to find with subquery  #######
 select *from matches where win_by_runs=
       (select max(win_by_runs) from matches);
       
######## give me the value of umpire not null ########
select count( coalesce(umpire3)) from matches;

select *from matches
 where umpire3 is not null;
 
 ####### no. of matches is 14 
 select count(*) from matches where win_by_runs=14;
 select count(*) from matches where win_by_runs<14;
 select count(*) from matches where win_by_runs>14;
 
 ######### case clause id return and match 
 select id,win_by_runs,
 case 
 when win_by_runs>14 then "Won above average"
 when win_by_runs=14 then "Won by average"
 when win_by_runs<14 then "Won below average"
 else "Tie"
 end as Result
 from matches;
 
 ######### highest no.of times player of the match that are Top 5 ##########
 select player_of_match , count(*) Awards_count
 from matches 
 group by player_of_match
 order by Awards_count desc 
 limit 5 ;
 
 ############ how many matches where won by each team in each season #######
 select season , winner , count(*) RESULT 
 from matches 
 group by season , winner;
 
 ########################################### QUERIES ASKED AND ANSWERED ############################ 
 
# 1.  How many total deliveries are recorded?
# SQL Query: SELECT COUNT(*) FROM deliveries;
# Answer: Returns the total number of ball-by-ball delivery records in the dataset.

# 2️.  How many total matches are recorded?
# SQL Query:  SELECT COUNT(*) FROM matches;
# Answer: Returns the total number of IPL matches in the matches table.

# 3.  Who was the Player of the Match for match ID = 1?
# SQL Query: SELECT player_of_match FROM matches WHERE id = 1;
# Answer: Shows the player who received the "Player of the Match" award in match ID 1.

#4.  How many matches were played in Delhi where the toss decision was 'bat'?
#SQL Query: SELECT COUNT(id) FROM matches WHERE city = 'Delhi' AND toss_decision = 'bat';
# Answer: Returns the number of matches in Delhi where the toss-winning team chose to bat.

# 5.  What are the distinct cities where IPL matches were played?
# SQL Query : SELECT DISTINCT city FROM matches;
# Answer: Displays all unique cities where IPL matches have been hosted.

# 6 . Which cities have names starting with the letter 'U'?
# SQL Query: SELECT DISTINCT city FROM matches WHERE city LIKE 'U%';
# Answer: Returns city names that start with 'U' (e.g., Uppal).

# 7 .Extract the word "Pune" from "Rising Pune Supergiant".
#SQL Query :SELECT SUBSTR('Rising Pune Supergiant', 8, 4) AS city;
#Answer: Extracts 'Pune' from the team name using substring.

# 8.Replace "Pune" with "Andheri" in the team name.
# SQL Query: SELECT REPLACE('Rising Pune Supergiant', 'Pune', 'Andheri') AS Team;
# Answer: Change  the name to "Rising Andheri Supergiant".

#9. What are the minimum, average, and maximum values of win_by_runs?
#SQL Query: SELECT MIN(win_by_runs), AVG(win_by_runs), MAX(win_by_runs) FROM matches;
# Answer: Returns the lowest, average, and highest win margins by runs.

#10 .  Which match was won by 146 runs?
# SQL Query: SELECT * FROM matches WHERE win_by_runs = 146;
# Answer: Displays the match details where the win margin was exactly 146 runs (highest in IPL history).
 
 


 
 
       
 
