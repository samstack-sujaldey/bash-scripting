#!/bin/bash

read -p "Enter date : " DATE

date -d "$DATE" +%A
