#!/bin/sh

kill $(pidof polybar)
polybar mainbar &
