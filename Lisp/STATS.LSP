; File: STATS.LSP (c)		    03/06/91		Soft Warehouse, Inc.


;	* * *	Data Space Size Statistics Display   * * *

(TERPRI 2)
(WRITE-STRING "  Symbol table size:  ")
(PRINT (* 4 (- (DSMEMORY 0 NIL T) 256)))
(WRITE-STRING "  Number table size:  ")
(PRINT (* 4 (- (DSMEMORY 4 NIL T) (DSMEMORY 2 NIL T))))
(WRITE-STRING "    Cons space size:  ")
(PRINT (* 2 (- (DSMEMORY 6 NIL T) (DSMEMORY 4 NIL T))))
(WRITE-STRING "  String space size:  ")
(PRINT (DSMEMORY 40 NIL T))
(WRITE-STRING "  Vector space size:  ")
(PRINT (- 65536 (DSMEMORY 44 NIL T)))
(SETQ NUM 1)
(LOOP
  (WRITE-STRING (PACK* "D-code space " NUM " size:  "))
  ((OR (>= NUM 6) (ZEROP (DSMEMORY (+ 148 (* 2 NUM)) NIL T)))
    (PRINT (- (DSMEMORY 36 NIL T) (DSMEMORY 34 NIL T))) )
  (PRINT (- (DSMEMORY (+ 146 (* 2 NUM)) NIL T) (DSMEMORY 34 NIL T)))
  (INCQ NUM) )
(SETQ NUM 'NUM)
