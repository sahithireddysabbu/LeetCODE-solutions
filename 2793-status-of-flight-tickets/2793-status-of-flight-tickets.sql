# Write your MySQL query statement below

# Write your MySQL query statement below

WITH CTE AS (SELECT passenger_id,booking_time,f.flight_id,capacity,ROW_NUMBER() OVER(PARTITION BY flight_id ORDER BY booking_time) rn FROM Passengers p
    JOIN
    Flights f USING(flight_id)
)
SELECT t.passenger_id,(CASE WHEN t.rn<=t.capacity THEN "Confirmed" 
                        ELSE "Waitlist" END ) Status
FROM CTE t
ORDER BY 1;
