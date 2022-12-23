

# Non-dynamic example
# Moves files from downloads to the folder you're in if the files were downloaded in the last 15 min.
# Get-ChildItem C:\Users\qaust\Downloads |  Where-Object {$_.LastWriteTime -gt (Get-Date).AddMinutes(-15)} | Move-Item -Destination .

# Functional version
function Copy-RecentDownloads {
    param(
        $NumMinutes
    )
    Get-ChildItem C:\Users\$env:UserName\Downloads |  Where-Object {$_.LastWriteTime -gt (Get-Date).AddMinutes(-$NumMinutes)} | Copy-Item -Destination .
}


