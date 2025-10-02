# Start Netdata container
docker run -d --name netdata -p 19999:19999 netdata/netdata

# Check if Netdata container is running
docker ps

# Instructions:
# - Access the dashboard at http://localhost:19999
# - If running on a VM or EC2, use http://<Public-IP>:19999
