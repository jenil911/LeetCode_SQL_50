-- Calculate Total Number of Players
DECLARE @TotalPlayers int;
SET @TotalPlayers = (
    SELECT
        COUNT(*)
    FROM (
        SELECT
            player_id
        FROM
            Activity
        GROUP BY
            player_id
    ) AS Tmp
)

--  Calculate Player who logged in again on the next day after their first login
DECLARE @PlayerLoggedInAgain int;
SET @PlayerLoggedInAgain = (
    SELECT
        COUNT(*)
    FROM (
        SELECT
            a1.player_id
        FROM
            Activity a1 INNER JOIN Activity a2 ON a1.player_id = a2.player_id
            AND a1.event_date < a2.event_date
        GROUP BY
            a1.player_id
        HAVING
            MIN(a1.event_date) = MIN(DATEADD(DAY, -1, a2.event_date))
    ) AS Tmp
)

-- Simply Divide Them and get answer
SELECT
    ROUND(1.0 * @PlayerLoggedInAgain/@TotalPlayers, 2) AS fraction