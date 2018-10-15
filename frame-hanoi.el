;; -*- Lisp-Interaction -*-

; (frame-geometry)


(display-pixel-height)

(defvar fh--frame-sizes '((20 20) (30 30) (40 40))
  "(WIDTH HEIGHT) of each frame (disk)")

(defvar fh--pole-locations (let ((w (display-pixel-width))
				 (h (display-pixel-height)))
		    (list (cons

(frame-width)


(defconst

(make-frame '((name . "one") (width . 50)  (height . 20) (minibuffer . nil)))

(loop for x from 1 to 3700 by 100
      do (progn
	   (set-frame-position (window-frame) x 100)
	   (sleep-for 0 100)))
