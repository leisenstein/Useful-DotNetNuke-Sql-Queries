SELECT u.[UserID]
      ,u.[Username]
      ,u.[FirstName]
      ,u.[LastName]
      ,u.[IsSuperUser]
      ,u.[Email]
      ,u.[DisplayName]
      ,u.[IsDeleted]
      ,u.[CreatedOnDate]
      ,u.[LastModifiedOnDate]
	  ,r.RoleName
FROM [Users] u
JOIN UserRoles ur on u.UserID = ur.UserID
JOIN Roles r on ur.RoleID = r.RoleID