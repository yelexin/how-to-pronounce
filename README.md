# how-to-pronounce

A linux shell script that can grab the pronunciation mp3 file of an input word.

## Prerequisite

You have installed `grep`, `curl`, `sed` and `head` in your system.

## Usage

Simply run the following command to see the result:

```shell
$ chmod +x lookup.sh # give it exec permission
$ ./lookup.sh good
```

You'll get an mp3 file whose name is good.mp3 in the current path and you can play it.

## Add the script to your PATH

If you want to make this script a system command, you can add it to the PATH env.

You can do it like this on your computer:

Make a directory:

```shell
$ mkdir ~/bin
```

Copy the script to the directory:

```shell
$ cp lookup.sh ~/.bin
```

Add the following line to `~/.bashrc` or `~/.zshrc`(based on the shell you are using):

```shell
export PATH=$PATH:~/bin
```

Run the following command or restart your terminal:

```shell
$ source ~/.bashrc
```

If you are using zsh:

```shell
$ source ~/.zshrc
```

Now you can use this script globally:

```shell
$ lookup.sh test
```

Before you run the script globally, make sure you have given it exec permission with the command:

```
$ chmod +x lookup.sh
```

## Custom the download path

If you want to download the mp3 files to a specific path, you can change the script:

```shell
...
wget -O /path/to/your/folder/$1.mp3 $url 2> /dev/null
...
echo /path/to/your/folder/$1.mp3
```

Don't forget to create the folder for saving downloaded files before you run the script.
