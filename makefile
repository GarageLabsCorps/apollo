pre=/usr/local/bin/

install:
	mkdir -p $(pre)
	cp apollo $(pre)apollo
	chmod +x $(pre)apollo
	if test -d /usr/share/applications/; \
	then cp apollo.desktop /usr/share/applications/; \
	chmod +x /usr/share/applications/apollo.desktop; \
	mkdir /usr/local/share/apollo/; \
	cp apollo.png /usr/local/share/apollo/; \
	cp apollo.xbm /usr/local/share/apollo/; \
	fi

uninstall:
	rm $(pre)apollo
	if test -d /usr/share/applications/; \
	then rm /usr/share/applications/apollo.desktop; \
	rm -rf /usr/local/share/apollo/; \
	fi

reinstall:
	rm $(pre)apollo
	if test -d /usr/share/applications/; \
	then rm /usr/share/applications/apollo.desktop; \
	cp apollo.desktop /usr/share/applications/; \
	chmod +x /usr/share/applications/apollo.desktop; \
	rm -rf /usr/local/share/apollo/; \
	mkdir /usr/local/share/apollo/; \
	cp apollo.png /usr/local/share/apollo/; \
	cp apollo.xbm /usr/local/share/apollo/; \
	fi
	cp apollo $(pre)apollo
	chmod +x $(pre)apollo
