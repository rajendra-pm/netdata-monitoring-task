# netdata-monitoring-task

# Task 7: Monitor System Resources Using Netdata

## 📌 Objective
Install **Netdata** using Docker and visualize system & app performance metrics in real time.

---

## 🚀 Steps Performed

### 1. Run Netdata with Docker (PowerShell)
```powershell
docker run -d --name netdata -p 19999:19999 netdata/netdata
