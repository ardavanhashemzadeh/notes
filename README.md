# notes

# Reset group policy objects from command line
RD /S /Q "%WinDir%\System32\GroupPolicyUsers"  
RD /S /Q "%WinDir%\System32\GroupPolicy"  
gpupdate /force  

# Reset security policy from command line
secedit /configure /cfg %windir%\inf\defltbase.inf /db defltbase.sdb /verbose 

# Deleting AzureAD Domain
A guest user (not native to the domain) cannot delete the domain, and the portal's error is misleading (it complains about enterprise applications, not about the guest user) 
It will take upto and beyond 90 days for the onmicrosoft.com domain name to be released 

# Remote App without joining a domain
https://ryanmangansitblog.com/2013/10/30/deploying-a-rdsh-server-in-a-workgroup-rds-2012-r2/

# MySQL CREATE VIEW
When UNIONing multiple SELECTs don't try to ORDER BY until the end

# Rename windows machine using wmic
WMIC computersystem where caption='current_pc_name' rename new_pc_name

# Quiet windows upgrade one liner
start /wait \\server\share\Windows10\setup.exe /Quiet /compat IgnoreWarning /auto upgrade /migratedrivers all /dynamicupdate enable /showoobe none

# Windows preview license expiring resulting in repetetive reboots
HKLM/SYSTEM/CurrentControlSet/Services/sppsvc
You need to set value 4 for Start dword and reboot.
Source: https://superuser.com/questions/933754/why-does-windows-10-shut-down-hourly-with-initiated-power-off-on-behalf-of-nt-a


# SSH Port Forarding

## Access a remote resource on a local port

ssh -L LOCALPORT:RESOURCEHOST:RESOURCEPORT user@sshserver

## Remote server listens on a port and forwards traffic to a local port
ssh -R LOCALBINDADDR:LOCALPORT:REMOTEBINDADDR:REMOTEPORT user@sshserver

## Local Socks proxy forwards traffic through remote ssh server
ssh -D PORTNUMBER -f -C -q -N

f: Fork process to the background
C: Compress
q: Quet mode
N: No command

# Forgot to screen
Open another session and start screen then reptyr the process

# Quickly itterate over some files in bash and do something
for file in /var/backups/*2019*; do echo $file; done

# Potential Alternatives to LogMeIn
1) DWService: Information is scarce
2) InstaTech: Interesting opensource project

# Cisco Linksys RV Advanced VPN settings
1) With the exception of the following, all advanced settings disabled
2) Keep-Alive enabled
3) NAT-Traversal enabled
4) Dead Peer Detection Enabled at 30 second intervals

# eco
root/519070

# tdsrp
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Safer

# tdsrp, install, then reenable 
reg copy HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Safer HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Safer.old && reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Safer /f && start cmd /c setup.bat & reg copy HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Safer.old HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Safer && reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Safer.old /f

# tested
reg copy HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Safer HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Safer.old && reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Safer /f && cmd /c setup.bat & reg copy HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Safer.old HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Safer && reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Safer.old /f
