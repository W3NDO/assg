# Another Static Site Generator (ASSG pronounced ass-gee)
Takes a collection of text files (*.md) and generates HTML files and other assets that are needed to form a website. 

## concepts covered
- [ ] Reading and writing files on the system
- [ ] Parsing the input files
- [ ] Command line interface

## features
- [ ] Markdown in
- [ ] HTML out
- [ ] Layout with a templating language that the md for each page gets rendered in
- [ ] Ability to specify metadata

## Notes
I am only supporting a subset of markdown here, specifically
- level 1 to level 4 titles (#, ##, ###, ####)
- plain text (kinda obvious)
- links { [text](link) }
- links that become images { [img alt text](url/filepath) }(technically still links)
- unordered list items ( hyphenated )
- ordered list items ( numbers/alphabet )
- styling tags (asterisks, underscores)

### Grammar 
```
Heading_1 ::= (/#{1,4}/) Space Expr NewLine

Link ::= '[' Expr ']' '(' Expr ')'

UList ::= '-' Space Expr NewLine

OList ::= ([0-9|.]) Space Expr NewLine

Bold ::= (**|__) Expr (**|__)

Italics ::= (*|_) Expr (*|_)

Expr ::= Sentence NewLine

NewLine ::= Carriage Return

Sentence ::= word | punctuation | Space

Space ::= 0032 (ASCII Code for space)

Word ::= alphabet* | number*

Punctuation ::= . | , | ? | ! | @ | " | ' | & | ( | ) |
```

Alphabet ::= a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z|A|B|C|D|E|F|G|H|I|J|K|L|M|O|N|P|Q|R|S|T|U|V|W|X|Y|Z

Number ::= 0|1|2|3|45|6|7|8|9

