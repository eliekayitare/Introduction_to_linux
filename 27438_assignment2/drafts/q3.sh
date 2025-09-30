 Commands used (no absolute paths, cd used 3 times or fewer):
# Starting dir was ~/projects/client_work/web/frontend
pwd       # prove starting location
cd ../../../../personal/experiments
pwd       # prove we are in ~/projects/personal/experiments
cd ../../shared/templates
pwd       # prove we are in ~/projects/shared/templates
cd ../../../client_work/web/frontend
pwd       # prove we are back to start

Alternative using pushd/popd is also valid.
EOF
log "Q3 commands written."