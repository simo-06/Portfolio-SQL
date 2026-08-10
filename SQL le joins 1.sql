
SELECT o.*, a.*
    FROM [parch_and_poesy ].[dbo].[orders] o 
    JOIN [parch_and_poesy ].[dbo].[accounts] a    
    ON o.account_id=a.id


SELECT distinct id FROM [parch_and_poesy ].[dbo].[accounts]  
