#!/bin/bash

# Run yosys to transform verilog RTL to smt2
yosys -ql design.log design.ys
