
;; Defined Parameters:

;; Contact Sets:
(sdegeo:define-contact-set "Gate" 4 (color:rgb 1 0 0 )"##" )
(sdegeo:define-contact-set "Source" 4 (color:rgb 0 1 0 )"##" )
(sdegeo:define-contact-set "Drain" 4 (color:rgb 0 0 1 )"##" )
(sdegeo:define-contact-set "Body" 4 (color:rgb 1 1 0 )"##" )

;; Work Planes:
(sde:workplanes-init-scm-binding)

;; Defined ACIS Refinements:
(sde:refinement-init-scm-binding)

;; Reference/Evaluation Windows:
(sdedr:define-refeval-window "Ref_Source" "Rectangle" (position -0.5 0 0) (position -0.05 1 0))
(sdedr:define-refeval-window "Ref_Drain" "Rectangle" (position 0.05 0 0) (position 0.5 1 0))
(sdedr:define-refeval-window "Ref_Channel" "Rectangle" (position -0.05 0 0) (position 0.05 0.01 0))
(sdedr:define-refeval-window "Ref_BelowChannel" "Rectangle" (position -0.05 0.01 0) (position 0.05 1 0))
(sdedr:define-refeval-window "Ref_Body" "Rectangle" (position -0.5 1 0) (position 0.5 5 0))
(sdedr:define-refeval-window "Ref_Oxide" "Rectangle" (position -0.05 0 0) (position 0.05 -0.01 0))

;; Restore GUI session parameters:
(sde:set-window-position 0 54)
(sde:set-window-size 840 800)
(sde:set-window-style "Windows")
(sde:set-background-color 0 127 178 204 204 204)
(sde:scmwin-set-prefs "Liberation Sans" "Normal" 8 168 )
