# OPSEC-GUIDE-SETUP:
Operational security essentials for everyone. This repository collects materials on personal security practices to mitigate the risk of tracking and surveillance in daily life.

## CHOOSING AN OS:
For top-tier Operational Security (OPSEC), choose security-hardened or ephemeral operating systems designed to minimize footprints and maximize anonymity. Choosing an Operating System (OS) is the most critical decision in your security stack. Your OS is the "root of trust"; if the OS is compromised or poorly designed, no amount of VPNs, encrypted apps, or strong passwords can save your data. Following are the list of OS that can help you create an anonymous connection to the internet. Following are the list of security hardening purpose based OS compatible for different devices:

### Qubes OS
**The Concept:** "Security by Isolation." It turns one computer into dozens of tiny, isolated computers.

**Use Case:** Your "Daily Driver" for high-risk work.

[Download through here](https://www.qubes-os.org/downloads/)

### Tails
**The Concept:** "The Amnesic System." It lives on a USB stick and leaves zero trace on the computer's hard drive.

**Use Case:** Emergency communications, whistleblowing, or using public computers.

[Download through here](https://tails.net/install/download/)

### Whonix
**The Concept:** "The Privacy Gateway." It separates the "networking" from the "user apps" so your real IP address can never leak.

**Use Case:** Maximum anonymity while browsing or hosting onion services.

[Download through here](https://www.whonix.org/wiki/Download)

### GrapheneOS (Mobile)
**The Concept:** "Hardened Android." It takes the world's most popular mobile OS and strips out all Google tracking while adding massive hardware-level protection.

**Use Case:** Secure mobile communication.

[Download through here](https://grapheneos.org/install/)

### Debian GNU/Linux
**The Concept:** "The Universal Operating System." It is the gold standard for stability and freedom. Most other secure OSs (Tails, Whonix, Kali) are built on top of Debian.

**Use Case:** A clean, minimal "Daily Driver" that you can harden yourself.

[Download through here](https://www.debian.org/download)

### Parrot Security OS
**The Concept:** A Debian-based OS designed for security experts. It includes "AnonSurf," which can route your entire system traffic through Tor with one click.

**Use Case:** Privacy-conscious users who also want built-in tools for security testing.

[Download through here](https://parrotsec.org/download/)


### TOR BROWSER OR TOR+PROXYCHAINS:
  After downloading an OS of your choice it is recommended to setup TOR or TOR+PROXYCHAINS for acheving total anonymity while browsing or 
  using tools such as nmap or running browsers such as firefox with proxychains and tor.

### TOR BROWSER:
  setting up tor browser is as easy as it can be you can download it using the link below 
  [Download through here](https://www.torproject.org/download/.)

  ### TOR+PROXYCHAINS:
   Proxychains is a tool that forces any application (like Nmap, SSH, or curl) to follow a specific path through a proxy server.
   When youpair it with Tor, you are essentially telling your software:"Don't go to the internet directly; go through the Tor 
   doorway first."

   ### HOW TO SETUP:
   To setup TOR+PROCHAINS for linux see the tor-proxychains-setup.sh file:
    
  [tor-proxychains-setup.sh](https://github.com/basimpookie01-rgb/OPSEC-GUIDE-SETUP/blob/main/tor-proxychains-setup.sh)


  ### VPN + KILL SWITCH (OPTIONAL):
   The VPN hides your IP from your ISP and encrypts all system traffic (updates, background apps).
   Think of it as "Onion of defences".
   The UFW Kill Switch ensures that if the VPN app crashes, your real IP isn't accidentally exposed for even a millisecond.
   This firewall kill switch will cut your wifi if your vpn breaks or somehow your connection gets lost it protects you from getting
   expose.

   ### SETUP:
  [see this setup file](https://github.com/basimpookie01-rgb/OPSEC-GUIDE-SETUP/blob/main/vpn-ks.sh)

  ### EXPLANATION OF THE STACK:
  The "Chain of Trust"
Your PC → UFW (Gatekeeper) → VPN (ISP Privacy) → Tor (Anonymity) → Proxychains (App Control) → The Internet
This setup ensures that even if one layer is compromised (e.g., a malicious Tor Exit Node), they only see the VPN IP, not your real IP.
     
