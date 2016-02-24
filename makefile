# Flags for latexmk
Q := -quiet
R := -r latexmkrc

L := latexmk $R $Q

all : proposal

sweep :
	@$L -c

clean :
	@$L -C

proposal : 
	@$L proposal
	@$(MAKE) sweep
