# Script pulls all enabled AD users, sorts by date password was last set, and exports to CSV.

Get-ADUser -filter 'enabled -eq $true' -properties passwordlastset, passwordneverexpires, msDS-UserPasswordExpiryTimeComputed | sort-object passwordlastset | select-object Name, passwordlastset, passwordneverexpires, @{Name="ExpiryDate";Expression={[datetime]::FromFileTime($_."msDS-UserPasswordExpiryTimeComputed")}} | Export-csv -path E:\Reports\\passwordreport.csv
