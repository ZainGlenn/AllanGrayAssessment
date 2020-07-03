SELECT count(b.Name) as EnlightenedBanges, u.DisplayName
  FROM Badges AS b
    INNER JOIN USERS AS u 
        ON b.UserId = u.id 
          WHERE Name = 'Enlightened' 
             AND YEAR(Date) = 2016
                 AND UserId = (SELECT TOP 1 id FROM Users
                                  WHERE Location = 'South Africa' 
                                      ORDER BY Reputation DESC)
                   GROUP BY u.DisplayName 



