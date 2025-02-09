# Import Modules
Import-Module posh-git
Import-Module PSReadLine
Import-Module Terminal-Icons

# Init OhMyPosh
oh-my-posh init pwsh --config '~/theme.omp.json' | Invoke-Expression

# Autocomplete
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
volta completions powershell | Out-String | Invoke-Expression

# PS Style
$psstyle.fileinfo.directory = $psstyle.foreground.brightcyan
$psstyle.fileinfo.extension.add(".py", $psstyle.foreground.cyan)

# Disable VENV Prompt for OhMyPosh
$env:VIRTUAL_ENV_DISABLE_PROMPT = 1

# Yazi Shortener with Exit Set-Location
function y {
    $tmp = [System.IO.Path]::GetTempFileName()
    yazi $args --cwd-file="$tmp"
    $cwd = Get-Content -Path $tmp -Encoding UTF8
    if (-not [String]::IsNullOrEmpty($cwd) -and $cwd -ne $PWD.Path) {
        Set-Location -LiteralPath ([System.IO.Path]::GetFullPath($cwd))
    }
    Remove-Item -Path $tmp
}