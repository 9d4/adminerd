# adminerd

A service that wrap [adminer.php](https://github.com/vrana/adminer.git) on linux. By default it runs on port `9000`.

### Install
To install this service, follow:
```shell
$ git clone https://github.com/9d4/adminerd.git
$ cd adminerd
$ chmod +x install.sh
$ ./install.sh
```

You may need to grant the root access to run the `install.sh`.

### Run
Run service using systemctl
```shell
$ systemctl start adminerd

# want to stop it
$ sytemctl stop adminerd
```

If you want the adminerd run everytime on booting, exec
```shell
$ systemctl enable adminerd

# don't want to run it on boot
$ systemctl disable adminerd
```
