SELECT sl.[SiteLogId]
      ,sl.[DateTime]
      ,sl.[Referrer]
      ,sl.[Url]
      ,sl.[UserAgent]
      ,sl.[UserHostAddress]
	  ,u.FirstName
	  ,u.LastName
	  ,MAX(pa.HTTPAlias)
	  ,t.TabName
FROM [prod_20150224].[dbo].[SiteLog] sl
JOIN Users u on u.UserID = sl.UserId
JOIN PortalAlias pa on pa.PortalID = sl.PortalId
JOIN Tabs t on t.TabID = sl.TabId
GROUP BY sl.[SiteLogId]
        ,sl.[DateTime]
        ,sl.[Referrer]
        ,sl.[Url]
        ,sl.[UserAgent]
        ,sl.[UserHostAddress]
	    ,u.FirstName
	    ,u.LastName
	    ,t.TabName