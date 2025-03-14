# Define the parent directory containing the subfolders
$parentDir = "C:\Path\To\Parent\Directory"

# Retrieve all PDF files from subdirectories
$files = Get-ChildItem -Path $parentDir -Recurse -Filter *.pdf -File

# Move each PDF to the parent directory
foreach ($file in $files) {
    Move-Item -Path $file.FullName -Destination $parentDir -Force
}

# Optionally, remove empty subdirectories
Get-ChildItem -Path $parentDir -Recurse -Directory | Where-Object { $_.GetFiles().Count -eq 0 } | Remove-Item -Force
