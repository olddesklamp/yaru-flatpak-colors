# Basic Makefile

GSCHEMAS := ./ubuntu-colors@taiwbi/schemas/gschemas.compiled

$(GSCHEMAS):
	glib-compile-schemas --strict --targetdir=./ubuntu-colors@taiwbi/schemas ./ubuntu-colors@taiwbi/schemas

install: $(GSCHEMAS)
	install -d $(HOME)/.local/share/gnome-shell/extensions
	cp -a ./ubuntu-colors@taiwbi $(HOME)/.local/share/gnome-shell/extensions

clean:
	rm -rf $(HOME)/.local/share/gnome-shell/extensions/ubuntu-colors@taiwbi
	rm -f $(GSCHEMAS)
