function copy-Dis_logs($to){
    $pc_name=$env:COMPUTERNAME
    $folderName= "LogsFromPC-" + "$pc_name"

    $pd_lan_log= "C:\programData\LANDesk\log"
    $pd_v= "C:\programData\vulscan"
    $pf_ld_ldc_d = "C:\Program Files (x86)\LANDesk\LDClient\Data"

test-path $pd_lan_log, $pd_v, $pf_ld_ldc_d

    $to_folder = "$to\$folderName"
    New-Item -path $to_folder -ItemType directory
    New-Item -path "$to_folder\ProgramData\vulscan", "$to_folder\programData\LANDesk\log", "$to_folder\Program Files (x86)\LANDesk\LDClient\Data" -ItemType directory
     

    $files1= gci -Path $pd_lan_log | where-object {$_.name -like "vulscan*" -or $_.name -like "ldreboot*"}
    $files2= gci -Path $pd_v | where-object {$_.name -like "RebootBehavior*"}
    $files3= gci -path  $pf_ld_ldc_d | where-object {$_.name -like "sdclient*"}

    $files1 | ForEach-Object {Copy-Item $_.fullName -destination "$to_folder\programData\LANDesk\log" -Recurse}
    $files2 | ForEach-Object {Copy-Item $_.fullName -destination "$to_folder\programData\vulscan" -Recurse}
    $files3 | ForEach-Object {Copy-Item $_.fullName -destination "$to_folder\Program Files (x86)\LANDesk\LDClient\Data" -Recurse}
    
}

copy-Dis_logs -to "c:\"



