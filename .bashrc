### vi $HOME/.bashrc
### Append the following code:
### Save and close the file. Source ~/.bashrc again, enter:
### $ source ~/.bashrc
 
genpasswd() {
	local l=$1
       	[ "$l" == "" ] && l=16
      	tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${l} | xargs
}
