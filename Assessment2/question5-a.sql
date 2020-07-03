SELECT top 1 b.UserId,b.Name,b.Date,u.DisplayName,u.Location,u.Reputation FROM Badges AS b
  INNER JOIN Users AS u ON b.UserId = u.id
    WHERE u.Location = 'South Africa'
      AND b.Name = 'Enlightened'
        ORDER BY u.Reputation desc;




