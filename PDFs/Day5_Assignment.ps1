# Key Cmdlets Commands
show-command
Get-Service
Get-ComputerInfo
Get-Process
Get-Process -Name taskhostw
Start-Service -Name wscsvc
Restart-Service -Name wuauserv
Get-EventLog

#Get-Service -Name Wcmsvc
#Write-Verbose "Executing command: Start-Service -Name Wecsvc" -Verbose
#Start-Service -Name Wcmsvc
#Get-Service -Name Wecsvc
#Write-Verbose "Executing command: Stop-Service -Name Wecsvc" -Verbose
#Stop-Service -Name Wecsvc
#Get-Service -Name Wecsvc
#Write-Verbose "Executing command: Restart-Service -Name Wecsvc" -Verbose
#Restart-Service -Name Wecsvc
#Get-Service -Name Wecsvc
#Stop-Service -Name Wecsvc



#Input and Output Formatting
Get-Command | Out-File E:\demo\datafile.txt
Get-PSDrive -PSProvider FileSystem | Out-File E:\demo\datafile.txt -Append
Get-Command | Out-File E:\demo\datafile1.txt #extra
Get-NetIPConfiguration | Out-File E:\demo\datafile.txt -Append
Get-ChildItem | Out-File E:\demo\datafile.txt -Append
Get-Service | Out-File E:\demo\datafile.txt -Append
Get-Process | Out-File E:\demo\datafile.txt -Append


Get-Command | Out-File E:\wiprofiles\commandsfile.txt
Get-PSDrive -PSProvider FileSystem | Out-File E:\wiprofiles\commandsfile.txt -Append
Get-NetIPConfiguration | Out-File E:\wiprofiles\commandsfile.txt -Append
Get-ChildItem | Out-File E:\wiprofiles\commandsfile.txt -Append
Get-Service | Out-File E:\wiprofiles\commandsfile.txt -Append


Get-Process | Format-table -Property Name,CPU
Get-Process | Format-table -Property Name,CPU,StartTime
Get-Service | Format-List -Property Name,Status,DisplayName
Get-ChildItem | Format-Wide -Column 3


#Get-Process non_existent_process && Write-Host "Process found" || Write-Host "Process not found"



#Objects, Arrays, Variables, Scripting Constraints
[int]$num1= Read-Host "number 1"
[int]$num2= Read-Host "number 2"
$sum=$num1+$num2
Write-Host "Sum is $sum"


$arr=@(1,2,3,"Sid")
$x=$arr[1]
Write-Host " Array's second element is $x"
Write-Host "The full array is $arr"


$day="sun"
switch($day){
"mon" {Write-Host "Start of the week"}
"sun" {Write-Host "Holiday"}
"fri" {Write-Host "Day before weekend"}
default {Write-Host "Lalalalalaa"}
}


function greet{
param($name)
Write-Host "Hello, $name"
}
greet -name "Sid"
greet -name "Hehehehehehe"


$array=@()
for($i=0;$i -le 3; $i++){
$a=Read-Host "Enter anything"
$array+=$a
}


foreach($elem in $array){
Write-Host "$elem"
}
Write-Host "first element is $($array[0])"


for($i=-3;$i -le 0;$i++){
Write-Host "$i"
}


$count=0
while($count -lt 3){
Write-Host "Count: $count"
$count++
}


$a=9
do{
"Starting Loop $a"
$a
$a++
"Now `$a is $a"
}while($a -le 5)


$a=0
do{
"Starting Loop $a"
$a
$a++
"Now `$a is $a"
}while($a -le 5)