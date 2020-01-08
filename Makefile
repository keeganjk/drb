drb: drb.sh drb.awk drb.tsv
	cat drb.sh > $@

	echo 'exit 0' >> $@

	echo '#EOF' >> $@
	tar cz drb.awk drb.tsv >> $@

	chmod +x $@

test: drb.sh
	shellcheck -s sh drb.sh

.PHONY: test
