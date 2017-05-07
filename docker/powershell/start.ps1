[xml]$Config = Get-Content "config.xml"
Set-Location $PSScriptRoot/$Config.Settings.DockerComposeLocation

$Containers = $Config.Settings.Containers.Container | ForEach-Object {
    $_
}
# Write-Output "Starting containers";
docker-compose up -d $Containers

Set-Location $PSScriptRoot/$Config.Settings.AfterDoneLocation