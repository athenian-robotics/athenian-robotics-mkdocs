# SSH 

## Useful Posts
* [SSH Examples, Tips & Tunnels](https://hackertarget.com/ssh-examples-tunnels/)

## Using SSH without a password

Run `ssh-keygen` on the Mac, and hit return when asked for file in which to save the key and the passphrase.
This will generate a public and private keys stored in *~/.ssh/id_rsa* and *~/.ssh/id_rsa.pub*.

```bash
$ ssh-keygen
```

Add the contents of *~/.ssh/id_rsa.pub* on the Mac (using copy and paste) 
into *~/.ssh/authorized_keys* on the Raspi.

```bash
$ sudo nano ~/.ssh/authorized_keys
```

Set the proper permissions for *~/.ssh/authorized_keys* with:

```bash
$ chmod 600 ~/.ssh/authorized_keys
```

You should now be able to ssh to the Raspi without a password.
