# Firewall Configuration Project

This project demonstrates how to configure firewalls on web servers using `ufw` (Uncomplicated Firewall).

## Tasks 📃

### 0. Block All Incoming Traffic Except Specific Ports

**Script:** `0-block_all_incoming_traffic_but`

This Bash script installs and configures a `ufw` firewall to block all incoming traffic except for ports 22 (SSH), 443 (HTTPS), and 80 (HTTP) on a web server.

### 1. Port Forwarding

**Configuration File:** `100-port_forwarding`

This `ufw` configuration file sets up a firewall rule to redirect traffic from port 8080/TCP to port 80/TCP.

## How to Use

1. **Block All Incoming Traffic Except Specific Ports:**
   - Run the `0-block_all_incoming_traffic_but` script on your web server.
   
   ```bash
   bash 0-block_all_incoming_traffic_but
   ```

2. **Configure Port Forwarding:**
   - Apply the `100-port_forwarding` configuration file using `ufw` on your web server.
   
   ```bash
   ufw allow from any to any port 8080 proto tcp
   ufw route allow proto tcp from any to any port 80
   ```

## Prerequisites

- Ensure `ufw` is installed on your web server.
- You have sufficient privileges to modify firewall settings.

## Conclusion

By following these tasks, you can enhance the security of your web servers by controlling incoming traffic and configuring necessary port forwarding rules.

Feel free to customize the scripts and configuration files to fit your specific requirements.
