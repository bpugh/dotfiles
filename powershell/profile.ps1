# Git helpers
Function st { git st $args }
Function stand { git stand $args }
Function ci { git ci $args }
Function cia { git ci --amend $args }
Function lol { git lol $args }
Function rsh { git reset --hard $args }
Function ri { git rebase -i $args }
Function lz { node C:\projects\lazyspec\src\cli.js $args }
Function sd { npm run start:devserver }
Function nr { npm run $args }
Function gconf { code C:\Users\brandon.pugh\.gitconfig }
Function gitemail { git config user.email "bp@brandonpugh.com" }

# refresh env vars without restarting process
# pasted from here: http://stackoverflow.com/a/22670892/1715138
function rvars {
  foreach($level in "Machine","User") {
     [Environment]::GetEnvironmentVariables($level).GetEnumerator() | % {
        # For Path variables, append the new values, if they're not already in there
        if($_.Name -match 'Path$') {
           $_.Value = ($((Get-Content "Env:$($_.Name)") + ";$($_.Value)") -split ';' | Select -unique) -join ';'
        }
        $_
     } | Set-Content -Path { "Env:$($_.Name)" }
  }
}

function bjl {
  Write-Host "backing up jump-location file"
  cp ~\jump-location.txt ~\jump-location.bak.txt
}

function fixjl {
  Write-Host "fixing jump-location file"
  cp ~\jump-location.bak.txt ~\jump-location.txt
  rm ~\jump-location.txt.tmp
}

#For deleting dir/files with really long paths
function scrub {
mkdir empty_temp
robocopy empty_temp $args /s /mir /NFL /NDL /NJH /NJS /nc /ns /np
rmdir empty_temp
rmdir $args
}
