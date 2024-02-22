This directory contains tasks on Loops, Conditions and Parsing in BASH SCRIPTING.
The for loop is the first of the three shell looping constructs. This loop allows for specification of a list of values. A list of commands is executed for each value in the list.

The syntax for this loop is:

for NAME [in LIST ]; do COMMANDS; done

The while construct allows for repetitive execution of a list of commands, as long as the command controlling the while loop executes successfully (exit status of zero). The syntax is:

while CONTROL-COMMAND; do CONSEQUENT-COMMANDS; done

The until loop is very similar to the while loop, except that the loop executes until the TEST-COMMAND executes successfully. As long as this command fails, the loop continues. The syntax is the same as for the while loop:

until TEST-COMMAND; do CONSEQUENT-COMMANDS; done

ShellCheck is a static analysis tool for shell scripts. One can use it to find bugs in your shell scripts. It is written in Haskell. This tool provides warnings and suggestions for bash/sh shell scripts. Let us see how to install and use ShellCheck on a Linux or Unix-like system to enhance your shell scripts, avoid errors and increase productivity.

"#!/usr/bin/env As a Shebang
The #! is called a shebang. It consists of a number sign and an exclamation point character (#!), followed by the full path to the interpreter such as /bin/bash. All scripts under Linux, *BSD, macOS, and Unix-like system execute using the interpreter specified on a first line. However, there is a small problem. BASH or Perl is not always in the same location (PATH) such as /bin/bash or /usr/bin/perl. If you want to make sure that script is portable across different UNIX like operating systems you need to use /usr/bin/env command as shebang.
