SUBDIRS = libmysyslog libmysyslog-text libmysyslog-json libmysyslog-client libmysyslog-daemon

all:
	@for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir; \
	done

clean:
	@for dir in $(SUBDIRS); do \
                $(MAKE) -C $$dir clean; \
        done

.PHONY: all clean



