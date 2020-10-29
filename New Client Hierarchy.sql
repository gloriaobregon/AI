Select distinct(c.Hierarchy),c.consolidator,c.client from
(Select a.[Claim Number] ,a.[Consolidator] consolidator,a.[Client] client , CONCAT(a.[Consolidator],' ' ,a.[Client]) Hierarchy from
[CDS.E13 Union Staging] a


left join [CDS.E13 Client Hierarchy] b
on (b.[Consolidator] = a.[Consolidator] 
AND b.[Client] = a.[Client])

where b.client IS NULL) c