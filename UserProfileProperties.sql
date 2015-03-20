SELECT u.[UserID]
      ,u.[Username]
      ,u.[FirstName]
      ,u.[LastName]
	  , ppd.PropertyName
	  , up.PropertyValue
FROM [Users] u
JOIN UserProfile up on up.UserID = u.UserID
JOIN ProfilePropertyDefinition ppd on up.PropertyDefinitionID = ppd.PropertyDefinitionID