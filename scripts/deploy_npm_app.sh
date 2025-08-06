#! /bin/bash
source ./utils.sh

print 'Deploy npm app'

run_cmd 'npm install -g @llmindset/mcp-miro'
run_cmd 'npm install -g @anthropic-ai/claude-code'
