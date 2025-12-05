:: KILL all useless bloat and go back to the 90's with ms-dos(like) UI
:: ctrl + shift + esc to open task manager
:: To launch this automatically on user level on boot
:: copy this .bat file to
:: C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp
:: or
:: %APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup
::

@echo off
taskkill /F /IM explorer.exe
taskkill /im SearchHost.exe
taskkill /im calc.exe
taskkill /im Photos.exe
taskkill /im HxOutlook.exe
taskkill /im Music.UI.exe
taskkill /im Video.UI.exe
taskkill /im SoundRecorder.exe
taskkill /im bingweather.exe
taskkill /im bingnews.exe
taskkill /im WinStore.App.exe
taskkill /im GameBar.exe
taskkill /im FeedbackHub.exe
taskkill /im Maps.exe
taskkill /im Microsoft.WindowsCamera.exe
taskkill /im Microsoft.WindowsAlarms.exe
taskkill /im Microsoft.Notes.exe
taskkill /im SnippingTool.exe
taskkill /im Microsoft.Windows.Photos.exe
taskkill /im mspaint.exe

taskkill /f /fi "imagename eq SearchHost.exe" /fi "windowtitle eq Search"
taskkill /f /fi "imagename eq SearchHost.exe" /fi "windowtitle eq Search" >nul 2>&1
taskkill /f /im StartMenuExperienceHost.exe >nul 2>&1
taskkill /f /im Widgets.exe >nul 2>&1
taskkill /f /im WidgetService.exe >nul 2>&1
taskkill /f /im PhoneExperienceHost.exe >nul 2>&1
taskkill /f /im GameBar.exe >nul 2>&1
taskkill /f /im GameBarFT.exe >nul 2>&1
taskkill /f /im ms-teams.exe >nul 2>&1
taskkill /f /fi "imagename eq TextInputHost.exe" /fi "windowtitle eq Copilot*" >nul 2>&1
taskkill /f /fi "imagename eq TextInputHost.exe" /fi "windowtitle eq Clipboard History*" >nul 2>&1
taskkill /f /fi "imagename eq TextInputHost.exe" /fi "windowtitle eq Emoji Panel*" >nul 2>&1
taskkill /f /im msedgewebview2.exe >nul 2>&1
taskkill /f /im Skype.exe
taskkill /f /im SkypeApp.exe
taskkill /f /im SkypeBackgroundHost.exe
taskkill /f /im MicrosoftEdgeUpdate.exe
taskkill /f /im MicrosoftEdgeSH.exe


::For stoppping windows antimalware for this spesific session use if you want less ram usage
REM net stop WinDefend
REM net stop WdNisSvc
REM taskkill /f /im MsMpEng.exe
REM taskkill /f /im MSASCuiL.exe

cls
::cmd as maximized
cmd.exe mode 1000,1000 /max
