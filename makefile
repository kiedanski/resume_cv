
all: pdf

pdf: build/out.html
	chromium --headless --disable-gpu --print-to-pdf build/out.html
	mv output.pdf build/

clean:
	rm build/out.md build/out.html build/output.pdf
build/out.html: build/out.md style.css
	pandoc build/out.md -f markdown -t html --standalone -c ../style.css -o build/out.html
build/out.md: data.yaml main.md template.md
	pandoc --metadata-file=data.yaml --template=template.md main.md -o build/out.md


