param($installPath, $toolsPath, $package, $project)

# get the path of the project
$projectPath = Split-Path -Path $project.FullName

# append the file location
$appSettings = $projectPath + "\appsettings.json"

#convert app settings to object
$json = Get-Content $appSettings | Out-String | ConvertFrom-Json

# read default logging level
Write-Output $json.Logging.LogLevel.Default