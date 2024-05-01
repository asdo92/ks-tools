ks-upr - Upload recursively file(s) to server with scp or rsync.
================================================================

### Syntax:

```shell
$ ks-upr -i  - Start upload
$ ks-upr -g  - Create configuration
$ ks-upr -r  - Remove configuration
$ ks-upr -c  - Show configuration
$ ks-upr -e  - Edit configuration
$ ks-upr -p  - Generate certificate
$ ks-upr -v  - Show version
$ ks-upr -h  - Show help
```

### Initialize common file(s) upload:

  * For initialize recursively upload only run the following command:
  
    ```shell
    $ ks-upr -i
    ````
    
  * The first time you run the command, you will be asked for the necessary connection information:

    ```shell
    * Enter the server user: anonymous
    * Enter the server password (type 'pem' for use pem certificate): *******
    * Enter the server URL (or IP): mypersonaldomain.es
    * Enter the path on the server: /home/anonymous
    * Enter the local path to scan: /home/local/videos
    * Setting 'scp' as the default tool
    * Setting port 22 as the default port
    ````

  * Once the connection data has been entered, the local directory will be scanned to upload recursively them to the server directory.
    
### Remove configuration:

  * If you want to clear the connection settings, you just need to run the following command:
  
    ```shell
    $ ks-upr -r
    ````
    
### Show configuration:

  * You can check the configuration with the following command:
  
    ```shell
    $ ks-upr -c
    ````
    
  * When consulting the configuration, we will see something like this:

    ```shell
    * Server User: anonymous
    * Server Password/PEM: *******
    * URL (or IP) Server: mypersonaldomain.es
    * Destination Path (Server): /home/anonymous
    * Scan Path (Local): /home/local/videos
    * Upload Tool: scp
    * Port Connection: 22
    ````
    
### Edit configuration:

  * To edit any section of the configuration, the following command would be executed:

    ```shell
    $ ks-upr -e
    ````
    
  * After its execution, we will see a menu like the following one to be able to edit the desired section:

    ```shell
    1 - Edit User (anonymous)
    2 - Edit Password/PEM (*******)
    3 - Edit Server (mypersonaldomain.es)
    4 - Edit Dest. Path (/home/anonymous)
    5 - Edit Local Path (/home/local/videos)
    6 - Edit Upload Tool (scp)
    7 - Edit Port Connection (22))

    8 - Exit

    * Choose an option: 
    ````

### Generate certificate (on remote machine):

  * To generate certificate for connect to remote machine, run the following command:

    ```shell
    $ ks-upr -p
    ````
    
  * Copy the file [user]-[hostname].pem to your machine.

### Show version:

  * You can check the version with the command:
   
    ```shell
    $ ks-upr -v
    ````
    
### Back to README.md
    
* [Go back](https://git.q3aql.dev/q3aql/ks-tools/src/branch/main/README.md)
  
