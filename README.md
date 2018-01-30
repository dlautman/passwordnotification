# passwordnotification

Collection of scripts to check password status in Active Directory and to notify users when passwords are about to expire. Compiled by Dan Lautman, DelCor Technology Solutions. Sources for specific scripts are cited in the comments for each script. 

## Why do I need this?
Your envrionment may have set GPO to make passwords expire on a regular basis.  Your users may rely on AD but not regularly monitor when their passwords expire.  Windows 7+ does not do a great job of alerting users (compared to Windows XP) and you may have users that rely on AD but are not on the LAN or are not on Windows (remote users, MacOS users).  These scripts ensure your users are alerted  in a timely fashion about upcoming password expirations.

## Script directory and variables

* ```PWChangeNotif-OnPremExchange.ps1``` - script to notify users their password is expiring via email sent using Exchange On-Prem.  This script works with Exchange 2010, 2013, 2016.  Variables to set:


* ```PWChangeNotif-o365.ps1``` - script to notify users their password is expiring via email sent from Exchange Online (Office 365).

* ```PWChangeNotif-Balloon.ps1``` - script to notify users their password is expiring via "Balloon" notification in Windows.

* ```get-passwordstatus.ps1``` - tool for Windows administrators to determine password status of each AD user, including when password was last set and when the password will expire (if ever).

## How to use these scripts
Clone the appropriate script. For the email notification scripts, adjust the necessary variables (don't forget logfile location). Run the script on any machine with the AD PowerShell module.  


