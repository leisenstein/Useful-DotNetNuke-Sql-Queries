SELECT e.[LogGUID]
      ,u.FirstName
	  ,u.LastName
      ,e.[LogUserName]
      ,e.[LogPortalName]
      ,e.[LogCreateDate]
      ,e.[LogServerName]
      ,e.[LogProperties]
	  ,t.LogTypeFriendlyName
FROM [EventLog] e
  JOIN EventLogTypes t on e.LogTypeKey = t.LogTypeKey
  JOIN Users u on u.UserID = e.LogUserID