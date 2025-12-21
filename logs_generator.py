import random
import argparse
from datetime import datetime


LEVELS = ["INFO", "WARN", "ERROR"]
SERVICES = ["systemd", "sshd", "kernel", "nginx", "db_service", "cron"]
MESSAGES = {
    "INFO": [
        "User logged in successfully",
        "Session started for user 'admin'",
        "Periodic backup task completed",
        "Resource usage within normal parameters",
        "Service started on port 8080"
    ],
    "WARN": [
        "Disk usage exceeded 80%",
        "Connection timeout from IP 192.168.1.45",
        "High memory usage detected",
        "Multiple failed login attempts detected",
        "Configuration file has deprecated syntax"
    ],
    "ERROR": [
        "Failed to bind to port 80: Permission denied",
        "Database connection lost: Connection refused",
        "Segmentation fault in worker process",
        "Out of memory: Kill process 1234 (nginx)",
        "Critical system failure: kernel panic"
    ]
}

def generate_log_line():
    now = datetime.now().strftime("%b %d %H:%M:%S")
    hostname = "web-prod-01"
    level = random.choices(LEVELS, weights=[0.5, 0.2, 0.3])[0]  # More INFO than ERROR
    service = random.choice(SERVICES)
    pid = random.randint(100, 9999)
    msg = random.choice(MESSAGES[level])
    
    return f"{now} {hostname} {service}[{pid}]: [{level}] {msg}\n"

def main(count, target_dir, filename):
    file_path = target_dir + filename
    import os
    os.makedirs(os.path.dirname(file_path), exist_ok=True)
    
    with open(file_path, "w") as f:
        for _ in range(count):
            f.write(generate_log_line())
    print(f"Successfully generated {count} logs in {filename}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--count", type=int, default=50, help="Number of log lines to generate")
    parser.add_argument("--target-dir", type=str, default="logs/", help="Directory to save the log file")
    parser.add_argument("--filename", type=str, default=f"test_{random.randint(1000,9999)}.log", help="Name of the log file to generate")
    args = parser.parse_args()
    main(args.count, args.target_dir, args.filename)
