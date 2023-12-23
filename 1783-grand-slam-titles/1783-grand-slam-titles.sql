SELECT player_id,player_name,SUM(player_id=Wimbledon) +SUM(player_id=Fr_OPEN)+SUM(player_id=US_OPEN)+SUM(player_id=Au_OPEN) grand_slams_count
FROM Players p
JOIN Championships c ON c.Wimbledon=p.player_id OR c.Fr_open=p.player_id OR c.US_open=p.player_id OR c.Au_open=p.player_id
GROUP BY player_id

