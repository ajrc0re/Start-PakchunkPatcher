# Start-PakchunkPatcher.ps1
## Explanation of the Script

This PowerShell script, Start-PakchunkPatcher.ps1, is designed to automate the process of launching a tool called `FF7R2PakChunkPatcher.exe` with specific arguments. It provides flexibility through parameters to customize the directories and files used in the patching process. Here's a breakdown of the script:

### **Parameters**:
   - `$DirHelper`: A file (`DirHelper.txt`) that may contain the path to the game directory. If this file exists in the current directory, its content is used as the game directory. Otherwise, a default path (`C:\Program Files (x86)\Steam\steamapps\common\FINAL FANTASY VII REBIRTH`) is used.
   - `$gameDir`: The directory where the game is installed. This is determined dynamically based on the presence of `DirHelper.txt` or defaults to the Steam installation path.
   - `$mods`: The directory where mod files are located. Defaults to `$gameDir\End\Content\Paks\~mods`.
   - `$logicMods`: The directory where logic mod files are located. Defaults to `$gameDir\End\Content\Paks\LogicMods`.
   - `$pakPatcher`: The path to the executable file `FF7R2PakChunkPatcher.exe`. Defaults to the script's directory (`$PSScriptRoot`).

### **Execution**:
   - The script launches `FF7R2PakChunkPatcher.exe` with `$mods` and `$logicMods` as arguments.
   - After execution, it prevents the console from closing immediately by waiting for user input (`Press any key to continue...`).

---

## Overview of the Parameter Arguments

1. **`$DirHelper`**:
   - Default: `DirHelper.txt`.
   - Purpose: If this file exists in the current directory, its content is used as the game directory path.

2. **`$gameDir`**:
   - Default: The content of `DirHelper.txt` (if it exists) or `C:\Program Files (x86)\Steam\steamapps\common\FINAL FANTASY VII REBIRTH`.
   - Purpose: Specifies the game installation directory.

3. **`$mods`**:
   - Default: `$gameDir\End\Content\Paks\~mods`.
   - Purpose: Specifies the directory containing mod files.

4. **`$logicMods`**:
   - Default: `$gameDir\End\Content\Paks\LogicMods`.
   - Purpose: Specifies the directory containing logic mod files.

5. **`$pakPatcher`**:
   - Default: `$PSScriptRoot\FF7R2PakChunkPatcher.exe`.
   - Purpose: Specifies the path to the patcher executable.

---

## How to Use the Script

1. **Basic Usage**:
   - Run the script without any arguments to use the default values:
     ```powershell
     .\Start-PakchunkPatcher.ps1
     ```

2. **Customizing Parameters**:
   - Provide custom values for parameters as needed. For example:
     ```powershell
     .\Start-PakchunkPatcher.ps1 -DirHelper "CustomDirHelper.txt" -gameDir "D:\Games\FF7R" -mods "D:\Mods" -logicMods "D:\LogicMods"
     ```

3. **Using `DirHelper.txt`**:
   - Place a `DirHelper.txt` file in the same directory as the script and include the path to the game directory inside it. The script will automatically use this path.

4. **Specifying a Custom Patcher**:
   - If the patcher executable is located elsewhere, specify its path:
     ```powershell
     .\Start-PakchunkPatcher.ps1 -pakPatcher "C:\Tools\CustomPatcher.exe"
     ```

---

## Variations of Input Parameters

1. **Default Behavior**:
   - If no `DirHelper.txt` exists and no parameters are provided, the script uses the default Steam path for the game directory `C:\Program Files (x86)\Steam\steamapps\common\FINAL FANTASY VII REBIRTH`.

2. **Custom Game Directory**:
   - Specify a custom game directory directly:
     ```powershell
     .\Start-PakchunkPatcher.ps1 -gameDir "E:\MyGames\FF7R"
     ```

3. **Custom Mods and LogicMods Directories**:
   - Provide custom paths for mods and logic mods:
     ```powershell
     .\Start-PakchunkPatcher.ps1 -mods "E:\Mods" -logicMods "E:\LogicMods"
     ```

4. **Custom Patcher Executable**:
   - Use a different patcher executable:
     ```powershell
     .\Start-PakchunkPatcher.ps1 -pakPatcher "D:\Tools\AnotherPatcher.exe"
     ```

5. **Combining Parameters**:
   - Combine multiple custom parameters:
     ```powershell
     .\Start-PakchunkPatcher.ps1 -DirHelper "MyDirHelper.txt" -gameDir "F:\Games\FF7R" -mods "F:\Mods" -logicMods "F:\LogicMods" -pakPatcher "F:\Tools\CustomPatcher.exe"
     ```

By customizing these parameters, you can adapt the script to different setups and workflows.