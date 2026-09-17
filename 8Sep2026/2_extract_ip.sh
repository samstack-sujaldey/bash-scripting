#!/bin/bash

filepath=$1

grep -E -i -o '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' $filepath
