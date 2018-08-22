# Disable Hibernation and Sleep
sudo pmset -a hibernatemode 0
sudo rm /var/vm/sleepimage

# Do before resetting SMC
Clean Slate > Sleep > Wake > Restart > Shutdown

# SMC Reset
LEFT (control + option + command) + Power

# PRAM Reset
LEFT (option + command) + P + R
