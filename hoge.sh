#!/bin/sh

OUTPUT=$(expect -c '
set timeout 5
spawn env LANG=C sleep 60
expect {
  \"Do you want to continue (Y/n)? \" {
    exit 0
  }
}
exit 1
')

exit $?
