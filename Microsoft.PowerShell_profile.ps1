# Инициализируем posh
oh-my-posh init pwsh --config 'C:\Users\artix\scoop\apps\oh-my-posh\current\themes\spaceship.omp.json' | Invoke-Expression

Import-Module z

Import-Module -Name Terminal-Icons

Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

Set-Alias v nvim
