$jsons = Get-ChildItem *.json
foreach($json in $jsons){
    $packageName =  [System.IO.Path]::GetFileNameWithoutExtension($json.name)

    scoop install -a 64 $json.name
    scoop uninstall --purge $packageName
    scoop install -a 32 $json.name
    scoop uninstall --purge $packageName
}
