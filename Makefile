lightbug:
	cd docker && \
	docker compose up --build

# Install dependencies, 
pixi-install:
	pixi install

pixi-activate:
	pixi shell

pixi-deactivate:
	exit

# Call this with `make package filepath=../path/to/my_project_root`
package:
	mojo package lightbug_http -o $(filepath)
