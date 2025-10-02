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
# Pull and run Netdata Docker container

docker pull netdata/netdata

# Run Netdata container
docker run -d --name=netdata -p 19999:19999 --cap-add=SYS_PTRACE \
  -v netdataconfig:/etc/netdata \
  -v netdatalib:/var/lib/netdata \
  -v netdatacache:/var/cache/netdata \
  -v /etc/passwd:/host/etc/passwd:ro \
  -v /etc/group:/host/etc/group:ro \
  -v /proc:/host/proc:ro \
  -v /sys:/host/sys:ro \
  netdata/netdata

