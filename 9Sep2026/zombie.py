import os, time

pid = os.fork()
if pid == 0:
    # Child exits immediately
    os._exit(0)
else:
    # Parent does NOT call os.wait() — child becomes zombie
    print(f"Parent PID: {os.getpid()}, Child PID: {pid}")
    time.sleep(60)  # Keep parent alive so zombie persists
