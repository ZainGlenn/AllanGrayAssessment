SELECT top 1 b.UserId,b.Name,b.Date,u.DisplayName,u.Location,u.Reputation FROM Badges AS b
  INNER JOIN Users AS u ON b.UserId = u.id
    WHERE u.Location = 'South Africa'
      AND b.Name = 'Enlightened'
        ORDER BY u.Reputation desc;
        
SELECT count(b.Name),u.Reputation,u.DisplayName FROM Badges AS b
  INNER JOIN Users AS u ON b.UserId = u.id
    WHERE Year(b.Date) = 2016
      AND b.Name = 'Enlightened'
        AND u.Location = 'South Africa'
        group by u.Reputation,u.DisplayName
        order by u.Reputation desc




