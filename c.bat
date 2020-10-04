git add . && git commit -m "%* ~sahil"
:: %~1 refers to 1st argument with no surrounding quotes.
:: %* in a batch script refers to all the arguments (e.g. %1 %2 %3 %4 %5 ...%255)
:: Only arguments %1 to %9 can be referenced by number.
:: src: https://ss64.com/nt/syntax-args.html