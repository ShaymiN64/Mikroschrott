# Create Files on Desktop
Set-Location C:\Users\$env:USERNAME\desktop\
$i = 0; $m = 2000
$quotes = ("You Suck", "Dont use Windows", "https://www.youtube.com/watch?v=dQw4w9WgXcQ", "lol internet")
$q = Get-Random -InputObject $quotes
while ($i -lt $m){Write-Output $q > Yackass${i}.txt; $i++; $q = Get-Random -InputObject $quotes}
