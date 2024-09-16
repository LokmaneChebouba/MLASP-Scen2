#!/bin/bash
#$ -S /bin/bash
#$ -cwd
#$ -M lchebouba@gmail.com
#$ -N java-test
#$ -V
#$ -q max-7d.q
%#$ -pe smp 8

source /etc/profile.d/modules.sh


javac -cp weka.jar Classification_Application.java
java -cp ".:./weka.jar" Classification_Application

