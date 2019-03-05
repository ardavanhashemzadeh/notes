# notes

# SSH Port Forarding

Access a remote resource on a local port
ssh -L LOCALPORT:RESOURCEHOST:RESOURCEPORT user@sshserver

Remote server listens on a port and forwards traffic to a local port
ssh -R LOCALBINDADDR:LOCALPORT:REMOTEBINDADDR:REMOTEPORT user@sshserver

Local Socks proxy forwards traffic through remote ssh server
ssh -D PORTNUMBER -f -C -q -N
f: Fork process to the background
C: Compress
q: Quet mode
N: No command

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
