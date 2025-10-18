
# New-Item -path $profile -type file -force


Set-Alias g git
Set-Alias c cls
Set-Alias cat Get-Content
Set-Alias rm Remove-Item
Set-Alias grep Select-String


function dots { git --git-dir=$HOME\.dots --work-tree=$HOME @args }
function ll { Get-ChildItem }
function la { Get-ChildItem -Force }
function lla { Get-ChildItem -Force }
