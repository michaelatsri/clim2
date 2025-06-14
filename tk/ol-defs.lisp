;; -*- mode: common-lisp; package: tk -*-
;; See the file LICENSE for the full license governing this code.
;;

;;
;; This file contains compile time only code -- put in clim-debug.fasl.
;;

(in-package :tk)

(provide :clim-debugol)

#+:ignore
(def-c-type (ol-callback-struct :no-defuns) :struct
	    (reason :int))

(def-foreign-type ol-callback-struct 
    (:struct
     (reason :int)))

#+:ignore
(def-c-type (ol-expose-callback-struct :no-defuns) :struct
	    (reason :int)
	    (event * x11:xevent))

(def-foreign-type ol-expose-callback-struct 
    (:struct
     (reason :int)
     (event (* x11:xevent))))

#+:ignore
(def-c-type (ol-resize-callback-struct :no-defuns) :struct
	    (reason :int)
	    (x xt-position)
	    (y xt-position)
	    (width xt-dimension)
	    (height xt-dimension))

(def-foreign-type ol-resize-callback-struct 
    (:struct
     (reason :int)
     (x xt-position)
     (y xt-position)
     (width xt-dimension)
     (height xt-dimension)))


#+:ignore
(def-c-type (ol-wm-protocol-verify :no-defuns) :struct
	    (message-type :int)
	    (event * x11:xevent))

(def-foreign-type ol-wm-protocol-verify 
    (:struct
     (message-type :int)
     (event (* x11:xevent))))

#+:ignore
(def-c-typedef ol-define :short)

(def-foreign-type ol-define :short)

#+:ignore
(def-c-typedef ximage :long)

(def-foreign-type ximage :long)

#+:ignore
(def-c-typedef ol-bit-mask :unsigned-long)

(def-foreign-type ol-bit-mask :unsigned-long)

#+:ignore
(def-c-type (ol-list-item :no-defuns) :struct
	    (label-type ol-define)
	    (label xt-pointer)
	    (glyph * ximage)
	    (attr ol-bit-mask)
	    (user-data xt-pointer)
	    (mnemonic :unsigned-char))

(def-foreign-type ol-list-item 
    (:struct
	    (label-type ol-define)
	    (label xt-pointer)
	    (glyph (* ximage))
	    (attr ol-bit-mask)
	    (user-data xt-pointer)
	    (mnemonic :unsigned-char)))

(defconstant ol-string 63)

(defconstant ol_b_list_attr_appl	(byte 16 0))
(defconstant ol_b_list_attr_current	(byte 1 17))
(defconstant ol_b_list_attr_selected	(byte 1 18))
(defconstant ol_b_list_attr_focus	(byte 1 19))
(defconstant ol_widget_help 73)
(defconstant ol_transparent_source 69)

#+:ignore
(def-c-type (ol-sw-geometries :no-defuns) :struct
	    (sw * xt-widget)
	    (vsb * xt-widget)
	    (hsb * xt-widget)
	    (bb-border-width xt-dimension)
	    (vsb-width xt-dimension)
	    (vsb-min-height xt-dimension)
	    (hsb-height xt-dimension)
	    (hsb-min-width xt-dimension)
	    (sw-view-width xt-dimension)
	    (sw-view-height xt-dimension)
	    (bbc-width xt-dimension)
	    (bbc-height xt-dimension)
	    (bbc-real-width xt-dimension)
	    (bbc-real-height xt-dimension)
	    (force-hsb boolean)
	    (force-vsb boolean)
	    )

(def-foreign-type ol-sw-geometries 
    (:struct
	    (sw (* xt-widget))
	    (vsb (* xt-widget))
	    (hsb (* xt-widget))
	    (bb-border-width xt-dimension)
	    (vsb-width xt-dimension)
	    (vsb-min-height xt-dimension)
	    (hsb-height xt-dimension)
	    (hsb-min-width xt-dimension)
	    (sw-view-width xt-dimension)
	    (sw-view-height xt-dimension)
	    (bbc-width xt-dimension)
	    (bbc-height xt-dimension)
	    (bbc-real-width xt-dimension)
	    (bbc-real-height xt-dimension)
	    (force-hsb boolean)
	    (force-vsb boolean)
	    ))

#+:ignore
(def-c-type (ol-scroll-bar-verify :no-defuns) :struct
	    (new-location :int)
	    (new-page :int)
	    (ok boolean)
	    (slider-min :int)
	    (slider-max :int)
	    (delta :int))

(def-foreign-type ol-scroll-bar-verify 
    (:struct
     (new-location :int)
     (new-page :int)
     (ok boolean)
     (slider-min :int)
     (slider-max :int)
     (delta :int)))
