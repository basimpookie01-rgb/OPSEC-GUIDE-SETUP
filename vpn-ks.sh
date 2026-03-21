# ---------------------------------------------------------
# UFW Kill Switch for Proton VPN (OpenVPN/IKEv2)
# ---------------------------------------------------------

# 1. Reset UFW to a clean state
sudo ufw --force reset

# 2. Set strict default policies (Deny All)
sudo ufw default deny incoming
sudo ufw default deny outgoing

# 3. Allow internal system communication (Loopback)
sudo ufw allow in on lo
sudo ufw allow out on lo

# 4. Allow traffic ONLY through the VPN interface (tun0)
# This is the core of the Kill Switch. 
# If 'tun0' is down, traffic cannot leave your PC.
sudo ufw allow out on tun0 from any to any

# 5. Allow initial handshake with Proton VPN Servers
# OpenVPN (UDP 1194, TCP 443) and IKEv2 (UDP 500, 4500)
sudo ufw allow out to any port 1194 proto udp
sudo ufw allow out to any port 443 proto tcp
sudo ufw allow out to any port 500 proto udp
sudo ufw allow out to any port 4500 proto udp

# 6. Allow DNS for the initial VPN connection
# (Switch to your Private DNS IP here for better security)
sudo ufw allow out to any port 53

# 7. Finalize and Enable
sudo ufw enable 
