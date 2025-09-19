
all: build/out.html


build:
	mkdir -p build
clean:
	rm build/out.md build/out.html build/output.pdf
build/out.html: build/out.md style.css
	pandoc build/out.md -f markdown -t html --standalone -c ../style.css -o build/out.html
build/out.md: build data_honest.yaml template.md my_articles.yaml
	pandoc -C --metadata-file=my_articles.yaml --metadata-file=data_honest.yaml --template=template.md main.md -o build/out.md 


