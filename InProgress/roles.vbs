Set objWMIService = GetObject("winmgmts:{impersonationLevel=impersonate}!\\.\root\cimv2")
Set colRoleFeatures = objWMIService.ExecQuery ("Select * from Win32_ServerFeature")
For Each objRoleFeatures in colRoleFeatures
    Wscript.Echo objRoleFeatures.Name
Next