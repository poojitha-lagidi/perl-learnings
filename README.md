# All about Perl - Practical Extraction & Reporting Language
Perl is a high-level, interpreted language that allows for faster development time. It is well-suited for performing automation tasks, and powerful code can be written in just a few lines using Perl.
## Writing a Perl Program 
1. Shebang line (or Interpreter line) is the first line of the file, starting with **#!**, followed by the path to the Perl interpreter. Its primary purpose is to tell the operating system which interpreter should be used to execute the script.
2. **-w** or **use warnings;** is used to enable warnings.
3. **use strict;** enforces strict programming rules, encourages better coding practices and helping prevent common errors. This stops the execution of the script instead of just giving warnings. _For better practice, combine warnings with use strict._
4. It is considered best practice to include a Description (providing information about the program) and the author's name in a Perl program.
5. **#** is used for single line comment.
6. **=identifier ...multi-line comments... =cut** is used for block comments. Always end the block comment with **=cut**. Identifiers can be anything but it is best to give standard identifiers such as =begin comment, =for comment, etc.
7. All the statemnets end in **;**
8. Always mention scope when using use strict;. **my** is lexical scope which is accessible only within the block or file. **our** or without my (gives error if _use strict;_ is in the code) is a global scope which can accessible throughout the entire program.
