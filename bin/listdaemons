#!/bin/bash

ps axo pid,ppid,pgrp,tty,tpgid,sess,comm |awk '$2==1' |awk '$1==$3'
