# HowTo_Linux_Random_Password_Generator_Command

in BASH Shell, Commands, Linux

How do I generate random passwords on the Linux command line using the bash shell? How to create random password using Linux command line options?

You can use the following shell function to generate random password. The function use the combination of the following commands and files:

Bash function to create random password

Edit ~/.bashrc file, enter:
$ vi $HOME/.bashrc

Append the following code:

 
genpasswd() {
	local l=$1
       	[ "$l" == "" ] && l=16
      	tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${l} | xargs
}
 

Save and close the file. Source ~/.bashrc again, enter:
$ source ~/.bashrc

To generate random password, enter:
$ genpasswd

Sample outputs:

WGtkhETPJFZ2mtZk

To generate 8 character long random password, enter:
$ genpasswd 8

Sample outputs:

oj7Wqvb

Source: http://www.cyberciti.biz/faq/linux-random-password-generator/
