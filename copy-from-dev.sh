
# MANUALLY CHECK COMMITS ARE EQUAL
# AND YOU'RE IN THE DEV SHELL

DEV_USR=lb-dev
DEV_IP=192.168.1.120

# COPY LINUX BINARIES TO LOCAL
FROM="$DEV_USR@$DEV_IP:/home/lb-dev/Documents/Github/basic-webserver/platform/"
TO="/Users/luke/Documents/GitHub/basic-webserver/"

scp -r $FROM $TO

echo -e "COPY\nFROM DEV: $FROM\nTO LOCAL: $TO\n"

# COPY ROC LINUX BINARY TO LOCAL
FROM="$DEV_USR@$DEV_IP:/nix/store/gbppy34hfrp5116b93d7cljyx98nqjy9-roc_cli-0.0.1/bin/roc"
TO="/Users/luke/Documents/GitHub/basic-webserver/platform/roc-linux-x64"

scp -r $FROM $TO

echo -e "COPY\nFROM DEV: $FROM\nTO LOCAL: $TO\n"

# BUNDLE ROC
roc build --bundle .tar.br platform/main.roc

open ./platform
