# -------------------------------
# PowerShell script to run Netdata
# -------------------------------

# 1️⃣ Pull & run Netdata container
docker run -d --name netdata -p 19999:19999 netdata/netdata

# 2️⃣ Check running containers
docker ps

# 3️⃣ Access instructions (comments)
# Open your browser:
# - Local machine: http://localhost:19999
# - VM/EC2: http://<Public-IP>:19999

