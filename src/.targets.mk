TARGETS_DRAFTS := draft-oran-icnrg-pathsteering
TARGETS_TAGS := 
draft-oran-icnrg-pathsteering-00.xml: draft-oran-icnrg-pathsteering.xml
	sed -e 's/draft-oran-icnrg-pathsteering-latest/draft-oran-icnrg-pathsteering-00/g' $< >$@
