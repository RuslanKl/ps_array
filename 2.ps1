function ArrayFromTextFiles {
$FileNames = 'a.txt','b.txt','c.txt','d.txt','e.txt'
foreach ($File in $FileNames) {    
    $RndText = Get-Random
    $LocalPath = "E:\Temp\PS1\ScriptFiles\"+$File
    if ((Test-Path -PathType Leaf -Path $LocalPath) -ne $File) {
    New-Item -Path "e:\Temp\PS1\ScriptFiles\" -Name "$File" -ItemType "file" -Value $RndText 
    }
    else {
      Write-Output ("File "+ $File +" exist")
    }
}
}

ArrayFromTextFiles