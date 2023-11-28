#!/usr/bin/env ruby
# Sample data (you'll need to replace this with actual data retrieval logic)
# Assume messages are stored in a list of dictionaries or any appropriate data structure
# Function to process and extract statistics

SENDER = ARGV[0].scan(/from:\+*\w*/).join[5..-1]
RECEIVER = ARGV[0].scan(/to:\+*\w*/).join[3..-1]
FLAGS = ARGV[0].scan(/flags:(.*?)\]/).join

msg = SENDER + "," + RECEIVER + "," + FLAGS
puts msg
