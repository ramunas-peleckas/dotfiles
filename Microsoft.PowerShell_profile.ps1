Function startChrome
{
    start chrome
}

Function sshFunc ($name)
{
    if ($name -eq $null) {
        D:\programs\putty\putty_tray.exe
    } else {
        D:\programs\putty\putty_tray.exe -ssh -load $name
    }   
}

Set-Alias ll ls
Set-Alias subl "D:\programs\sublime_text_3\sublime_text.exe"
Set-Alias putty "D:\programs\putty\putty_tray.exe"
Set-Alias chrome startChrome
Set-Alias ssh sshFunc
Set-Alias reboot Restart-Computer
Set-Alias poweroff Stop-Computer