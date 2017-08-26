function s
	if test -e $argv[1]
        # FIXME: use basename
		cp -f $argv[1] /tmp/$argv[1]-(date '+%Y%m%d_%H%M%S')
	end
	touch $argv[1]
	gvim $argv[1] > /dev/null 2> /dev/null &
end

function sr
    if [ (count $argv) -eq 0 ]
        echo "safe remove: no arguments were given"
        return
    end
    while [ (count $argv) -ne 0 ]
        echo "safe removing file $argv[1] ..."
        if test ! -e "$argv[1]"
            echo "safe remove: file $argv[1] does not exist."
        end
		mv -vf "$argv[1]" "/tmp/$argv[1]-(date '+%Y%m%d_%H%M%S')"
        shift
    end
end

function mdlynx
    if [ (count $argv) -eq 0 ]
        echo "markdown viewer: no arguments were given"
        return
    end
    pandoc $argv[1] | lynx -stdin
end

function mdv
    /usr/local/src/terminal_markdown_viewer/mdv.py $argv[1]
end

function mdless
    if [ (count $argv) -eq 0 ]
        echo "markdown viewer with less: no arguments were given"
        return
    end
    mdv $argv[1] | less -R
end

