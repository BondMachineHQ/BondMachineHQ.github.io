#!/bin/bash

rm -rf Example
reset -Q


# Pre-Command wait
read -n 1 -s -r

# Command header
echo -en "[32m[11D[ Command > [0m"

# Command display
cat << EndOfBlock
mkdir Example
EndOfBlock

# Output not shown
(
mkdir Example
) > /dev/null 2>&1


# Pre-Command wait
read -n 1 -s -r

# Command header
echo -en "[32m[11D[ Command > [0m"

# Command display
cat << EndOfBlock
cd Example
EndOfBlock

# Output not shown
cd Example > /dev/null 2>&1


# Pre-Command wait
read -n 1 -s -r

# Command header
echo -en "[32m[11D[ Command > [0m"

# Command display
cat << EndOfBlock
cat <<EOF > program.asm
clr r0
inc r0
r2o r0 o0
j 1
EOF
EndOfBlock

# Post-Command wait
read -n 1 -s -r

# Pre-output wait
read -n 1 -s -r

# Output not shown
(
cat <<EOF > program.asm
clr r0
inc r0
r2o r0 o0
j 1
EOF
) > /dev/null 2>&1


# Pre-Command wait
read -n 1 -s -r

# Command header
echo -en "[32m[11D[ Command > [0m"

# Command display
cat << EndOfBlock
procbuilder -register-size 8 -registers 2 -inputs 0 -outputs 1 -opcodes clr,cpy,inc,j,r2o,rset -save-machine cp.json -input-assembly program.asm
EndOfBlock

# Post-Command wait
read -n 1 -s -r

# Pre-output wait
read -n 1 -s -r

# Output not shown
(
procbuilder -register-size 8 -registers 2 -inputs 0 -outputs 1 -opcodes clr,cpy,inc,j,r2o,rset -save-machine cp.json -input-assembly program.asm
) > /dev/null 2>&1


# Pre-Command wait
read -n 1 -s -r

# Command header
echo -en "[32m[11D[ Command > [0m"

# Command display
cat << EndOfBlock
ls
EndOfBlock

# Post-Command wait
read -n 1 -s -r

# Pre-output wait
read -n 1 -s -r

# Output header
echo -e "[31m[11D[ Output  > [0m"

# Output display
ls


# Pre-Command wait
read -n 1 -s -r

# Command header
echo -en "[32m[11D[ Command > [0m"

# Command display
cat << EndOfBlock
procbuilder -load-machine cp.json -show-program-disassembled
EndOfBlock

# Post-Command wait
read -n 1 -s -r

# Pre-output wait
read -n 1 -s -r

# Output header
echo -e "[31m[11D[ Output  > [0m"

# Output display
procbuilder -load-machine cp.json -show-program-disassembled


# Pre-Command wait
read -n 1 -s -r

# Command header
echo -en "[32m[11D[ Command > [0m"

# Command display
cat << EndOfBlock
procbuilder -load-machine cp.json -show-program-binary
EndOfBlock

# Post-Command wait
read -n 1 -s -r

# Pre-output wait
read -n 1 -s -r

# Output header
echo -e "[31m[11D[ Output  > [0m"

# Output display
procbuilder -load-machine cp.json -show-program-binary


# Pre-Command wait
read -n 1 -s -r

# Command header
echo -en "[32m[11D[ Command > [0m"

# Command display
cat << EndOfBlock
procbuilder -load-machine cp.json -create-verilog
EndOfBlock

# Post-Command wait
read -n 1 -s -r

# Output not shown
(
procbuilder -load-machine cp.json -create-verilog
) > /dev/null 2>&1


# Pre-Command wait
read -n 1 -s -r

# Command header
echo -en "[32m[11D[ Command > [0m"

# Command display
cat << EndOfBlock
ls
EndOfBlock

# Pre-output wait
read -n 1 -s -r

# Output header
echo -e "[31m[11D[ Output  > [0m"

# Output display
ls

cd ..
rm -rf Example

# Final wait
read -n 1 -s -r
