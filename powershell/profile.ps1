Set-Theme Paradox

# Git helpers
Function st { git st $args }
Function stand { git stand $args }
Function ci { git ci $args }
Function cia { git ci --amend $args }
Function lol { git lol $args }
Function rsh { git reset --hard $args }
Function p { git pr $args }
Function ri { git rebase -i $args }
Function sd { npm run start:devserver }
Function nr { npm run $args }
Function sncu { ncu "/^$args[1]-.*$/" $args[2] }
Function gconf { code ~/.gitconfig }
Function c { code --disable-gpu }
Function yd { youtube-dl $args }
Function dr {
    cd ..
    dotnet watch run
}

Function getProjectRootPath { git rev-parse --show-toplevel }
Function gitemail { git config user.email "bp@brandonpugh.com" }
function dam {
    git branch --merged |
    ForEach-Object { $_.Trim() } |
    Where-Object { $_ -NotMatch "^\*" } |
    Where-Object { -not ( $_ -Like "*master" ) } |
    ForEach-Object { git branch -d $_ }
}

# refresh env vars without restarting process
# pasted from here: http://stackoverflow.com/a/22670892/1715138
function rvars {
    foreach ($level in "Machine", "User") {
        [Environment]::GetEnvironmentVariables($level).GetEnumerator() | % {
            # For Path variables, append the new values, if they're not already in there
            if ($_.Name -match 'Path$') {
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
