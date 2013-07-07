Vim Config install file

	Repository:
		    git clone git@github.com:jrestrepo/dotvim.git ~/.vim
        	git clone https://github.com/jrestrepo/dotvim.git ~/.vim

	Create symlinks:
		ln -s ~/.vim/vimrc ~/.vimrc

    	Init plugins:
        	git submodule init
        	git submodule update
        Add plugins 
            git submodule add http://github.com/x-plugin.git bundle/x-plugin
            git add .
            git commit -m "Install x-pluging bundle as a submodule."
            Once the submodule is add "ignore=dirty" in .gitsubmodules :
                [submodule "bundle/x-plugin"]
	            path = bundle/x-plugin
	            url = git://github.com/x-plugin.git
                ignore = dirty
            git push origin master    
        Remove plugins
            Delete the relevant section from the .gitmodules file.
            Stage the .gitmodules changes git add .gitmodules.
            Delete the relevant section from .git/config.
            Run git rm --cached path_to_submodule (no trailing slash).
            Run rm -rf .git/modules/submodule_name.
            Commit.
            Delete the now untracked submodule files.
            rm -rf path_to_submodule.
        Upgrade plugins
            cd ~/.vim/bundle/x-plugin
            git pull origin master
        Update to the latest version of each plugin bundle
            git submodule foreach git pull origin master


Thesaurus search plugin 
	Must be installed
    		1. readlink
    		2. elinks
				set protocol.http.proxy.host = "proxy.fi.uner.edu.ar:8080"
				set protocol.https.proxy.host = "proxy.fi.uner.edu.ar:8080"
				set protocol.ftp.proxy.host = "proxy.fi.uner.edu.ar:8080"
    		3. dump
