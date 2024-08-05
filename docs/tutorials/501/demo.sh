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
cat <<EOF > circuit.bmq
%block code1 .sequential
	qbits	q0,q1
	zero	q0,q1
	h	q0
	cx	q0,q1
%endblock

%meta bmdef global main:code1
EOF
EndOfBlock

# Post-Command wait
read -n 1 -s -r

# Pre-output wait
read -n 1 -s -r

# Output not shown
(
cat <<EOF > circuit.bmq
%block code1 .sequential
qbits	q0,q1
zero	q0,q1
h	q0
cx	q0,q1
%endblock
%meta bmdef global main:code1
EOF
) > /dev/null 2>&1

cd ..
rm -rf Example

# Final wait
read -n 1 -s -r
