#!/bin/bash
for i in `seq 1 50`;
do
        http --ignore-stdin https://faas.srv.locational.io/function/sleepy delay_s:=5 &
done 
