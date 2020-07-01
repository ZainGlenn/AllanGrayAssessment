SELECT count(id) AS Users,year(CreationDate) AS YearCreated FROM Users 
  where year(CreationDate) > 2009
    group by year(CreationDate)
      order by year(CreationDate) ASC;




