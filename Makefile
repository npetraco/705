# Handy Makefile tocleanup and push changes out to MAT301 website 

default:
	cp 705.html index.html
	./copyscripts.sh
	git add --all
	git commit -m "update"
	git push -u origin main

copy:
	cp 705.html index.html
	./copyscripts.sh
