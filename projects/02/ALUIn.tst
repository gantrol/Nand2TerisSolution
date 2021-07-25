// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/02/ALUIn.tst

load ALUIn.hdl,
output-file ALUIn.out,
compare-to ALUIn.cmp,
output-list x%B1.16.1 zx%B1.1.1 nx%B1.1.1 out%B1.16.1;

set x %B0000000000000001,  // x = 1

// Compute 0
set zx 1,
set nx 0,
eval,
output;

// Compute -1
set zx 1,
set nx 1,
eval,
output;

// Compute x
set zx 0,
set nx 0,
eval,
output;