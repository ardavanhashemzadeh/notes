# Disable Hibernation and Sleep
sudo pmset -a sleep 0
sudo pmset -a disablesleep 1
sudo pmset -a hibernatemode 0
sudo rm /var/vm/sleepimage

# Do before resetting SMC
Clean Slate > Sleep > Wake > Restart > Shutdown

# SMC Reset
LEFT (control + option + shift) + Power

# PRAM Reset
LEFT (option + command) + P + R
