index.html: index.md style.css more.lua
	pandoc -s index.md -c style.css --lua-filter=more.lua -o index.html
