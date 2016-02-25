# Flags for latexmk
Q := -quiet
R := -r .latexmkrc

L := latexmk $R $Q

all : proposal personal.statement rec.letter

sweep :
	@$L -c

clean :
	@$L -C

proposal : 
	@$L proposal
	@$(MAKE) sweep

personal.statement :
	@$L personal.statement
	@$(MAKE) sweep

rec.letter :
	@$L rec.letter
	@$(MAKE) sweep
