#!/bin/bash

bin/bookkeeper shell metaformat
bin/pulsar-daemon start bookie
