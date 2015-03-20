SELECT ps.[PortalID]
      ,ps.[SettingName]
      ,ps.[SettingValue]
      ,ps.[CreatedByUserID]
      ,ps.[CreatedOnDate]
      ,ps.[LastModifiedByUserID]
      ,ps.[LastModifiedOnDate]
      ,pa.HTTPAlias
FROM [PortalSettings] ps
    JOIN PortalAlias pa on ps.PortalID = pa.PortalID
WHERE 1 = 1
    AND ps.SettingName in ('DefaultPortalAlias')