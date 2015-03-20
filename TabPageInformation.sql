SELECT t.[TabID]
      ,t.[PortalID]
      ,t.[TabName]
      ,t.[IsVisible]
      ,t.[IsDeleted]
      ,t.[TabPath]
      ,tm.ModuleTitle
      ,md.FriendlyName
FROM [Tabs] t
    JOIN TabModules tm on t.tabid = tm.tabid
    JOIN Modules m on tm.moduleid = m.moduleid
    JOIN ModuleDefinitions md on md.ModuleDefID = m.ModuleDefID
WHERE 1 = 1