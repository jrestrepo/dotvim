Vim Config install file

	Repository:
		git clone git@github.com:jrestrepo/dotvim.git ~/.vim
        	git clone https://github.com/jrestrepo/dotvim.git ~/.vim

	Create symlinks:
		ln -s ~/.vim/vimrc ~/.vimrc

    	Install/Update plugins:
        	git submodule init
        	git submodule update

Thesaurus search plugin 

	Must be installed

    		1. readlink
    		2. elinks
				set protocol.http.proxy.host = "proxy.fi.uner.edu.ar:8080"
				set protocol.https.proxy.host = "proxy.fi.uner.edu.ar:8080"
				set protocol.ftp.proxy.host = "proxy.fi.uner.edu.ar:8080"
    		3. dump
