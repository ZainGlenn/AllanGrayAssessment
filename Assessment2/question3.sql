
SELECT count(pt.Name) as QuestionPostCount 
  FROM Posts AS p 
    INNER JOIN PostTypes AS pt ON p.PostTypeId = pt.id 
      WHERE p.OwnerDisplayName = 'Mat Mannion' 
        AND pt.Name= 'Question';

