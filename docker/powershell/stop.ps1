Set-Location $PSScriptRoot/../../server/laradock

Write-Output "Stopping containers";
docker-compose stop

Set-Location $PSScriptRoot/$Config.Settings.AfterDoneLocation