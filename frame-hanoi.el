;; -*- Lisp-Interaction -*-

; (frame-geometry)

; pixels
;(display-pixel-height)
;900
;(display-pixel-width)
;1440

; chars
; (frame-height)
; (frame-width)


(defvar fh--frame-sizes '((50 20) (30 10) (60 30))
  "(WIDTH HEIGHT) character dimensions of each frame (disk)")

(defvar fh--pole-locations (let ((x (/ (display-pixel-width) 4))
				 (y (/ (display-pixel-height) 3)))
		    (list
		     (cons x y)
		     (cons (* 2 x) y)
		     (cons (* 3 x) y)))
  "List of (X Y) pixel locations of each pole.")

(defun fh--make-frame (name x y h w)
  (let ((newframe (make-frame (list (cons 'name name)
				    (cons 'width w)
				    (cons 'height h)
				    (cons 'minibuffer nil))))
	(newbuf (get-buffer-create (format "*frame-hanoi-%s*" name))))
    (set-frame-position (window-frame) x y)))



(fh--make-frame "foo" 10 20 30 40)



(defun fh--make-frames ()
  (mapcar #'fh--make-frame



(loop for x from 1 to 3700 by 100
      do (progn
	   (set-frame-position (window-frame) x 100)
	   (sleep-for 0 100)))
