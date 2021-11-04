#!/bin/bash

[-n "$SSH\_AGENT\_PID"] || eval "$(ssh-agent -s)"
