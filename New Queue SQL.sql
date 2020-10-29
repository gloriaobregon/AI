Select DISTINCT(c.[Queue ID]) as [Queue ID] ,c.[Queue Name] as [Queue Name] from
 
 
(Select a.[Queue ID] [Queue ID],
a.[Queue Name] [Queue Name],
b.[Queue Name] ID
 from [CDS.30]  a
left join
[CDS.30 Hierarchy] b
on a.[Queue ID] = b.[Queue ID]
) c
where c.ID  is null 
ORDER BY c.[Queue Name]


