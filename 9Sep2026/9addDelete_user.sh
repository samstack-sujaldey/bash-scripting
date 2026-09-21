#!/bin/bash

add_user() {
  local username=$1

  if id "$username" &>/dev/null; then
    echo "User already exist"
    return 1
  fi

  if sudo useradd -m -s /bin/bash "$username" 2>/dev/null; then
    echo "User created successfully"
  else
    echo "Error: Failed to create user"
    return 1
  fi

}

remove_user() {
  local username=$1

  if ! id "$username" &>/dev/null; then
    echo "User do not exist"
    return 1
  fi

  if [[ "$username" == "root" ]]; then
    echo "Cannot remove the root user"
    return 1
  fi

  if sudo userdel -r "$username" 2>/dev/null; then
    echo "User removed successfully"
  else
    echo "Error: Failed to remove user"
    echo "User may have running processes or mail spool"
    return 1
  fi
}

if [[ $# -lt 2 ]]; then
  echo "Usage: $0 {add|remove} <username>"
  exit 1
fi

ACTION=$1
USERNAME=$2

case "$ACTION" in
add)
  add_user "$USERNAME"
  ;;
remove)
  remove_user "$USERNAME"
  ;;
*)
  echo "Invalid action. Please use a valid action."
  exit 1
  ;;
esac

# run : ./9addDelete_user.sh add test
#               or
# run : ./9addDelete_user.sh remove test
