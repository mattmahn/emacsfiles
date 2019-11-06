(defun my/whatthecommit ()
  "Gets a random commit message from whatthecommit.com"
  (with-current-buffer (url-retrieve-synchronously "http://whatthecommit.com/index.txt" t t 3)
    (point-max)
    (thing-at-point 'line)))

(defun my/yolo-message ()
  "Replaces the current line with a message from `my/whatthecommit'"
  (interactive)
  (delete-region (point-at-bol) (point-at-eol))
  (insert (my/whatthecommit)))

(defun my/yolo-commit ()
  "Performs a Git commit using a random message from whatthecommit.com"
  (interactive)
  (magit-commit-create `("-m" ,(my/whatthecommit))))

(defun my/yolo-commit-editor ()
  "Create a commit initialized with a message from `my/whatthecommit'"
  (interactive)
  (magit-run-git-with-editor `("commit" "-e" "-m" ,(my/whatthecommit))))

(provide 'yolo)
