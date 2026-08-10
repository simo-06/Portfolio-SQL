SELECT a.id 
       ,a.[name]
       ,o.total
FROM [parch_and_poesy]. [dbo].[accounts] a
LEFT JOIN [parch_and_poesy].[dbo].[orders] o
on a.id = o.account_id
WHERE account_id = 1001