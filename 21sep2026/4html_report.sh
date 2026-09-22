#!/bin/bash

HTML_FILE=$1

cat <<EOF >"$HTML_FILE"
<!DOCTYPE html>
<html>
<head>
  <title>Automated Disk Usage Report</title>
  <style>
    body { font-family: Arial, sans-serif; margin: 40px; background-color: #f4f4f9; }
    h2 { color: #333; }
    table { width: 100%; border-collapse: collapse; background: #fff; box-shadow: 0 2px 5px rgba(0,0,0,0.1); }
    th, td { padding: 12px; text-align: left; border-bottom: 1px solid #ddd; }
    th { background-color: #007BFF; color: white; }
    tr:hover { background-color: #f1f1f1; }
  </style>
</head>
<body>
  <h2>System  Disk Usage Report</h2>
    <table>
EOF

df -h | while read -r line; do
  echo "      <tr>" >>"$HTML_FILE"

  if [[ "$line" =~ ^Filesystem ]]; then
    echo "        <th>Filesystem</th>" >>"$HTML_FILE"
    echo "        <th>Size</th>" >>"$HTML_FILE"
    echo "        <th>Used</th>" >>"$HTML_FILE"
    echo "        <th>Avail</th>" >>"$HTML_FILE"
    echo "        <th>Use%</th>" >>"$HTML_FILE"
    echo "        <th>Mounted on</th>" >>"$HTML_FILE"
  else
    for col in $line; do
      echo "        <td>$col</td>" >>"$HTML_FILE"
    done
  fi
  echo "      </tr>" >>"$HTML_FILE"
done

cat <<EOF >>"$HTML_FILE"
  </table>
</body>
</html>
EOF

# run : ./4html_report.sh 4report.html
