
TARGETS=draft-ietf-sshm-ssh-agent.txt draft-miller-ssh-ping.txt draft-miller-ssh-cert.txt

all: $(TARGETS)

.SUFFIXES: .xml .txt
.xml.txt:
	xml2rfc $< -o $@

clean:
	@rm -f $(TARGETS) *.core core
