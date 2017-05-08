#!/bin/bash
emacsclient --eval "(let ((file \"$(pwd)/README.org\"))
    (with-current-buffer (find-file-noselect file)
      (org-md-export-to-markdown)))"
git add README.org README.md
git commit -m "Automatic push"
git push
