#!/bin/bash

sudo mkdir -p /opt/myservice

sudo tee /opt/myservice/run.sh <<'EOF'
#!/bin/bash
while true; do 
  echo "Running at $(date)"
  sleep 5
done
EOF

sudo chmod 700 /opt/myservice/run.sh

sudo tee /etc/systemd/system/myservice.service <<'EOF'
[Unit]
Description=My Custom Service
After=network.target

[Service]
Type=simple
ExecStart=/opt/myservice/run.sh
Restart=on-failure

[Install]
WantedBy=multi-user.target
EOF

sudo systemctl daemon-reload
sudo systemctl enable --now myservice

echo
echo "Status : $(systemctl is-active myservice)"

# run : ./5create_service.sh

# Revert back
# sudo systemctl disable --now myservice
# sudo rm /etc/systemd/system/myservice.service /opt/myservice/run.sh
# sudo systemctl daemon-reload
#
