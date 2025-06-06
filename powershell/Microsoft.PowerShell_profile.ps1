function l {
  $Global:GetChildItemColorVerticalSpace=0
  get-ChildItemColorFormatWide -HideHeader -RemoveTopBlankLine @args
  #(Get-ChildItem -Name) -join '  '
}
function la {
  $Global:GetChildItemColorVerticalSpace=0
  get-ChildItemColorFormatWide -Force -HideHeader -RemoveTopBlankLine @args
  #(Get-ChildItem -Force -Name) -join '  '
}
function ll {
  $Global:GetChildItemColorVerticalSpace=0
  Get-ChildItemColor -HideHeader @args
}
function ll {
  $Global:GetChildItemColorVerticalSpace=0
  Get-ChildItemColor -HideHeader @args
}
function q{exit}
function cmatrix{& "$HOME\Documents\PowerShell\Scripts\cmatrix.ps1"}
function upm{choco @args}
Set-Alias s gsudo
Set-Alias c Clear-Host
Set-Alias v vim
Set-Alias n nvim
Set-Alias g git
Set-Alias p python
Set-Alias k Get-Content

function sstoml{n $HOME\.config\starship.toml}

#Import-Module PSReadLine
#Set-PSReadLineOption -PredictionSource History

Set-PSReadLineOption -HistorySaveStyle SaveIncrementally
Set-PSReadLineOption -MaximumHistoryCount 5000

Set-PSReadLineOption -EditMode Emacs

Invoke-Expression (& { (zoxide init powershell | Out-String) })
Invoke-Expression (&starship init powershell)

& "$HOME\Documents\PowerShell\Scripts\unbloat.ps1"
