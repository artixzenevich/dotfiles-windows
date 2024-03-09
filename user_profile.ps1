# Инициализируем posh
oh-my-posh init pwsh --config 'C:\Users\artix\scoop\apps\oh-my-posh\current\themes\spaceship.omp.json' | Invoke-Expression


Import-Module z

# Иконки для файлов и папок
Import-Module -Name Terminal-Icons

# История терминала
Install-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

# PS-fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Алиасы

Set-Alias v nvim
