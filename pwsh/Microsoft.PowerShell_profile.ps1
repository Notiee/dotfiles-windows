## MODULES	------------------------------
# Icons for list views etc..
# Import-Module -Name Terminal-Icons

# Git completions and status for powershell
# Import-Module posh-git


## CONFIG	------------------------------
# Shows navigable menu of all options when hitting Tab
#Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadlineKeyHandler -Key Tab -Function Complete

## Autocompletion for arrow keys
# Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
# Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward


## THEMING	------------------------------
# Invoke-Expression (&starship init powershell)
# oh-my-posh init pwsh --config ~'\Programs\oh-my-posh\nota.yaml' | Invoke-Expression
oh-my-posh --init --shell pwsh --config ~'\Programs\oh-my-posh\nice.yaml' | Invoke-Expression
