# Hisilicon Hi35xx sample Makefile
CFLAGS += -DSAMPLE_SVP_NNIE_PERF_STAT

include $(PWD)/../Makefile.param

CFLAGS += -I$(PWD)/sample
CFLAGS += -I$(PWD)/sample_nnie_software
CFLAGS += -O3
# CFLAGS += -O0 -g

SMP_SRCS := $(wildcard *.c)
SMP_SRCS += $(wildcard ./sample/*.c)
SMP_SRCS += $(wildcard ./sample_nnie_software/*.c)
SMP_SRCS += $(wildcard $(PWD)/../common/*.c)
TARGET := sample_nnie_main

TARGET_PATH := $(PWD)

# compile linux or HuaweiLite
include $(PWD)/../../$(ARM_ARCH)_$(OSTYPE).mak
