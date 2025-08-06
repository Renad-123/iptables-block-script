# iptables-block-script

##  Description
This is a simple Bash script that automates the process of blocking a domain using iptables.  
The script takes a domain name as input, resolves it to its corresponding IP address using `dig`, and adds firewall rules to block both incoming and outgoing traffic to/from that IP address.

---

## Usage

```bash
chmod +x block_domain.sh
./block_domain.sh
