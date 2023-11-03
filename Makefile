# Basic Makefile

GSCHEMAS := ./yaru-flatpak-colors@olddesklamp/schemas/gschemas.compiled

$(GSCHEMAS):
	glib-compile-schemas --strict --targetdir=./yaru-flatpak-colors@olddesklamp/schemas ./yaru-flatpak-colors@olddesklamp/schemas

install: $(GSCHEMAS)
	install -d $(HOME)/.local/share/gnome-shell/extensions
	cp -a ./yaru-flatpak-colors@olddesklamp $(HOME)/.local/share/gnome-shell/extensions

clean:
	rm -rf $(HOME)/.local/share/gnome-shell/extensions/yaru-flatpak-colors@olddesklamp
	rm -f $(GSCHEMAS)
