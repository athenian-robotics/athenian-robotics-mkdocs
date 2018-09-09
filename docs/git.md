# Git Notes

* [Git Tutorial](https://try.github.io/levels/1/challenges/1)
* [What is Git](https://codeburst.io/so-wtf-is-git-fa7daa0e0271)
* [Terminal & GitHub](https://medium.com/career-change-coder/command-line-terminal-github-lets-make-it-really-simple-b47280341354)
* [Git Hooked on Git Hooks](https://dev.to/rpalo/git-hooked-on-git-hooks)
* [Git Stash](https://medium.freecodecamp.org/useful-tricks-you-might-not-know-about-git-stash-e8a9490f0a1a)

## Installation

### OSX 

Install git on OSX with:
```bash
brew install git
```

### ev3dev and Raspi
````bash
sudo apt-get install git
````

## GitHub Desktop

Download and install [GitHub Desktop](https://desktop.github.com).

## Cloning a Repo

Clone a repo from [Athenian Robotics](https://github.com/athenian-robotics) with:
```bash
git clone https://github.com/athenian-robotics/ev3dev-python-intro.git
```

To find the URL for a particular repo, go to it's github page and 
click on the `Clone or download` button and copy the URL in the pop-up
window. If your firewall blocks port 22, make sure that the repo URL begins 
with `https://` and not `git@`. 
You can toggle between the two versions by clicking on `Use HTTPS` and `Use SSH`.

## Setting up a Host Repo

If a Raspi does not have access to github.com (like on an FRC robot), then 
creating a host repo will make it much easier to update code on the Raspi.

Create a bare repo and a directory for holding code on the Raspi for *myproject* :
```bash
mkdir git
cd git
mkdir myproject.git
git init --bare myproject.git
mkdir myproject
```

Add a *post-receive* git hook that will trigger a `git pull`   
into */home/pi/git/myproject* whenever a `git push` is done to */home/pi/git/myproject.git*. 
File changes in */home/pi/git/myproject* will not be committable because that directory is
not a cloned repo.

Edit */home/pi/git/myproject.git/hooks/post-receive* and add:
```bash
#!/bin/sh
git --work-tree=/home/pi/git/myproject --git-dir=/home/pi/git/myproject.git checkout -f
echo "*** Updated myproject ***" >&2
```

Output from `echo` will be sent back the user as part of the `git push` CLI response.

* Make the hook executable with:
```bash
chmod +x /home/pi/git/myproject.git/hooks/post-receive
```

On the development machine, clone *myproject* from github and add the Raspi *myproject.git* 
directory as a remote repo with:
```bash
cd ~/git
git clone https://github.com/username/myproject.git
cd myproject
git remote add raspi pi@raspberrypi.local:/home/pi/git/myproject.git
```

You can now push updates from your development machine to the Raspi with:
```bash
git push raspi master
```

In the case of FRC, you would push to *origin* when your development machine is 
connected to a network reaching github.com
and push to *raspi* when connected to your FRC robot network. 


