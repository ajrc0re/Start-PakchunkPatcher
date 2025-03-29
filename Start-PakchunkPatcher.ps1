[CmdletBinding()]
param (
    [Parameter()]
    [string]$DirHelper = 'DirHelper.txt',

    [Parameter(Mandatory=$true)]
    # check for DirHelper.txt in the current directory and use its content as the game directory
    # if it exists, otherwise use the default steam path for the game directory
    [string]$gameDir = if ((Resolve-Path .\$DirHelper).ProviderPath) {Get-Content $DirHelper -Raw} else {'C:\Program Files (x86)\Steam\steamapps\common\FINAL FANTASY VII REBIRTH'}

    [Parameter()]
    [string]$mods = "$gameDir\End\Content\Paks\~mods",
    
    [Parameter()]
    [string]$logicMods = "$gameDir\End\Content\Paks\LogicMods",

    [Parameter()]
    [string]$pakPatcher = "$PSScriptRoot\FF7R2PakChunkPatcher.exe"
)

# launch the FF7R2PakChunkPatcher.exe with the provided arguments
& $pakPatcher $mods $logicMods

# prevent the console from closing immediately and waits for user input
Write-Host -NoNewLine 'Press any key to continue...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');