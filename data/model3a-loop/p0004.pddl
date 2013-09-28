(DEFINE (PROBLEM CELL-ASSEMBLY-MODEL3A-4) (:DOMAIN CELL-ASSEMBLY)
 (:OBJECTS A1 A2 A3 - ARM B-0 B-1 B-2 B-3 - BASE P1 P2 P3 - COMPONENT T1 T2 T3
  - TRAY TB-FOR-P1 TB-FOR-P2 TB-FOR-P3 TB13 TB23 TB12 - TABLE M1 M2 M3 M4 M5 M6
  - MACHINE J1 - MACHINE-JOB J2 - JOB J3 - MACHINE-JOB J4 - MACHINE-JOB J5 -
  JOB J6 - MACHINE-JOB J7 - JOB J8 - MACHINE-JOB J9 - MACHINE-JOB)
 (:INIT (= (TOTAL-COST) 0) (= (LOADING-COST) 1) (REACHABLE A1 TABLE-IN)
  (REACHABLE A1 T1) (REACHABLE A1 TB-FOR-P1) (REACHABLE A1 TB12)
  (REACHABLE A1 TB13) (REACHABLE A1 M3) (REACHABLE A1 M5) (REACHABLE A2 T2)
  (REACHABLE A2 TB-FOR-P2) (REACHABLE A2 TB12) (REACHABLE A2 TB23)
  (REACHABLE A2 M1) (REACHABLE A2 M4) (REACHABLE A3 TABLE-OUT)
  (REACHABLE A3 T3) (REACHABLE A3 TB-FOR-P3) (REACHABLE A3 TB13)
  (REACHABLE A3 TB23) (REACHABLE A3 M2) (REACHABLE A3 M6)
  (= (MOVE-COST M3 M3) 1000) (= (MOVE-COST M3 M1) 3) (= (MOVE-COST M3 T2) 4)
  (= (MOVE-COST M3 TB-FOR-P2) 5) (= (MOVE-COST M3 M4) 4)
  (= (MOVE-COST M3 TB12) 2) (= (MOVE-COST M3 TB23) 3) (= (MOVE-COST M3 M2) 4)
  (= (MOVE-COST M3 TABLE-OUT) 5) (= (MOVE-COST M3 T3) 5)
  (= (MOVE-COST M3 TB-FOR-P3) 4) (= (MOVE-COST M3 M6) 3)
  (= (MOVE-COST M3 TB13) 2) (= (MOVE-COST M3 T1) 2) (= (MOVE-COST M3 M5) 3)
  (= (MOVE-COST M3 TB-FOR-P1) 3) (= (MOVE-COST M3 TABLE-IN) 2)
  (= (MOVE-COST M1 M3) 3) (= (MOVE-COST M1 M1) 1000) (= (MOVE-COST M1 T2) 2)
  (= (MOVE-COST M1 TB-FOR-P2) 3) (= (MOVE-COST M1 M4) 4)
  (= (MOVE-COST M1 TB12) 2) (= (MOVE-COST M1 TB23) 3) (= (MOVE-COST M1 M2) 4)
  (= (MOVE-COST M1 TABLE-OUT) 5) (= (MOVE-COST M1 T3) 6)
  (= (MOVE-COST M1 TB-FOR-P3) 6) (= (MOVE-COST M1 M6) 5)
  (= (MOVE-COST M1 TB13) 4) (= (MOVE-COST M1 T1) 4) (= (MOVE-COST M1 M5) 5)
  (= (MOVE-COST M1 TB-FOR-P1) 5) (= (MOVE-COST M1 TABLE-IN) 4)
  (= (MOVE-COST T2 M3) 4) (= (MOVE-COST T2 M1) 2) (= (MOVE-COST T2 T2) 1000)
  (= (MOVE-COST T2 TB-FOR-P2) 2) (= (MOVE-COST T2 M4) 3)
  (= (MOVE-COST T2 TB12) 3) (= (MOVE-COST T2 TB23) 4) (= (MOVE-COST T2 M2) 5)
  (= (MOVE-COST T2 TABLE-OUT) 6) (= (MOVE-COST T2 T3) 7)
  (= (MOVE-COST T2 TB-FOR-P3) 7) (= (MOVE-COST T2 M6) 6)
  (= (MOVE-COST T2 TB13) 5) (= (MOVE-COST T2 T1) 5) (= (MOVE-COST T2 M5) 6)
  (= (MOVE-COST T2 TB-FOR-P1) 6) (= (MOVE-COST T2 TABLE-IN) 5)
  (= (MOVE-COST TB-FOR-P2 M3) 5) (= (MOVE-COST TB-FOR-P2 M1) 3)
  (= (MOVE-COST TB-FOR-P2 T2) 2) (= (MOVE-COST TB-FOR-P2 TB-FOR-P2) 1000)
  (= (MOVE-COST TB-FOR-P2 M4) 2) (= (MOVE-COST TB-FOR-P2 TB12) 4)
  (= (MOVE-COST TB-FOR-P2 TB23) 3) (= (MOVE-COST TB-FOR-P2 M2) 4)
  (= (MOVE-COST TB-FOR-P2 TABLE-OUT) 5) (= (MOVE-COST TB-FOR-P2 T3) 6)
  (= (MOVE-COST TB-FOR-P2 TB-FOR-P3) 6) (= (MOVE-COST TB-FOR-P2 M6) 5)
  (= (MOVE-COST TB-FOR-P2 TB13) 4) (= (MOVE-COST TB-FOR-P2 T1) 6)
  (= (MOVE-COST TB-FOR-P2 M5) 7) (= (MOVE-COST TB-FOR-P2 TB-FOR-P1) 7)
  (= (MOVE-COST TB-FOR-P2 TABLE-IN) 6) (= (MOVE-COST M4 M3) 4)
  (= (MOVE-COST M4 M1) 4) (= (MOVE-COST M4 T2) 3)
  (= (MOVE-COST M4 TB-FOR-P2) 2) (= (MOVE-COST M4 M4) 1000)
  (= (MOVE-COST M4 TB12) 3) (= (MOVE-COST M4 TB23) 2) (= (MOVE-COST M4 M2) 3)
  (= (MOVE-COST M4 TABLE-OUT) 4) (= (MOVE-COST M4 T3) 5)
  (= (MOVE-COST M4 TB-FOR-P3) 5) (= (MOVE-COST M4 M6) 4)
  (= (MOVE-COST M4 TB13) 3) (= (MOVE-COST M4 T1) 5) (= (MOVE-COST M4 M5) 6)
  (= (MOVE-COST M4 TB-FOR-P1) 6) (= (MOVE-COST M4 TABLE-IN) 5)
  (= (MOVE-COST TB12 M3) 2) (= (MOVE-COST TB12 M1) 2) (= (MOVE-COST TB12 T2) 3)
  (= (MOVE-COST TB12 TB-FOR-P2) 4) (= (MOVE-COST TB12 M4) 3)
  (= (MOVE-COST TB12 TB12) 1000) (= (MOVE-COST TB12 TB23) 2)
  (= (MOVE-COST TB12 M2) 3) (= (MOVE-COST TB12 TABLE-OUT) 4)
  (= (MOVE-COST TB12 T3) 5) (= (MOVE-COST TB12 TB-FOR-P3) 5)
  (= (MOVE-COST TB12 M6) 4) (= (MOVE-COST TB12 TB13) 3)
  (= (MOVE-COST TB12 T1) 3) (= (MOVE-COST TB12 M5) 4)
  (= (MOVE-COST TB12 TB-FOR-P1) 4) (= (MOVE-COST TB12 TABLE-IN) 3)
  (= (MOVE-COST TB23 M3) 3) (= (MOVE-COST TB23 M1) 3) (= (MOVE-COST TB23 T2) 4)
  (= (MOVE-COST TB23 TB-FOR-P2) 3) (= (MOVE-COST TB23 M4) 2)
  (= (MOVE-COST TB23 TB12) 2) (= (MOVE-COST TB23 TB23) 1000)
  (= (MOVE-COST TB23 M2) 2) (= (MOVE-COST TB23 TABLE-OUT) 3)
  (= (MOVE-COST TB23 T3) 4) (= (MOVE-COST TB23 TB-FOR-P3) 4)
  (= (MOVE-COST TB23 M6) 3) (= (MOVE-COST TB23 TB13) 2)
  (= (MOVE-COST TB23 T1) 4) (= (MOVE-COST TB23 M5) 5)
  (= (MOVE-COST TB23 TB-FOR-P1) 5) (= (MOVE-COST TB23 TABLE-IN) 4)
  (= (MOVE-COST M2 M3) 4) (= (MOVE-COST M2 M1) 4) (= (MOVE-COST M2 T2) 5)
  (= (MOVE-COST M2 TB-FOR-P2) 4) (= (MOVE-COST M2 M4) 3)
  (= (MOVE-COST M2 TB12) 3) (= (MOVE-COST M2 TB23) 2)
  (= (MOVE-COST M2 M2) 1000) (= (MOVE-COST M2 TABLE-OUT) 2)
  (= (MOVE-COST M2 T3) 3) (= (MOVE-COST M2 TB-FOR-P3) 4)
  (= (MOVE-COST M2 M6) 4) (= (MOVE-COST M2 TB13) 3) (= (MOVE-COST M2 T1) 5)
  (= (MOVE-COST M2 M5) 6) (= (MOVE-COST M2 TB-FOR-P1) 6)
  (= (MOVE-COST M2 TABLE-IN) 5) (= (MOVE-COST TABLE-OUT M3) 5)
  (= (MOVE-COST TABLE-OUT M1) 5) (= (MOVE-COST TABLE-OUT T2) 6)
  (= (MOVE-COST TABLE-OUT TB-FOR-P2) 5) (= (MOVE-COST TABLE-OUT M4) 4)
  (= (MOVE-COST TABLE-OUT TB12) 4) (= (MOVE-COST TABLE-OUT TB23) 3)
  (= (MOVE-COST TABLE-OUT M2) 2) (= (MOVE-COST TABLE-OUT TABLE-OUT) 1000)
  (= (MOVE-COST TABLE-OUT T3) 2) (= (MOVE-COST TABLE-OUT TB-FOR-P3) 3)
  (= (MOVE-COST TABLE-OUT M6) 4) (= (MOVE-COST TABLE-OUT TB13) 4)
  (= (MOVE-COST TABLE-OUT T1) 6) (= (MOVE-COST TABLE-OUT M5) 7)
  (= (MOVE-COST TABLE-OUT TB-FOR-P1) 7) (= (MOVE-COST TABLE-OUT TABLE-IN) 6)
  (= (MOVE-COST T3 M3) 5) (= (MOVE-COST T3 M1) 6) (= (MOVE-COST T3 T2) 7)
  (= (MOVE-COST T3 TB-FOR-P2) 6) (= (MOVE-COST T3 M4) 5)
  (= (MOVE-COST T3 TB12) 5) (= (MOVE-COST T3 TB23) 4) (= (MOVE-COST T3 M2) 3)
  (= (MOVE-COST T3 TABLE-OUT) 2) (= (MOVE-COST T3 T3) 1000)
  (= (MOVE-COST T3 TB-FOR-P3) 2) (= (MOVE-COST T3 M6) 3)
  (= (MOVE-COST T3 TB13) 4) (= (MOVE-COST T3 T1) 6) (= (MOVE-COST T3 M5) 7)
  (= (MOVE-COST T3 TB-FOR-P1) 7) (= (MOVE-COST T3 TABLE-IN) 6)
  (= (MOVE-COST TB-FOR-P3 M3) 4) (= (MOVE-COST TB-FOR-P3 M1) 6)
  (= (MOVE-COST TB-FOR-P3 T2) 7) (= (MOVE-COST TB-FOR-P3 TB-FOR-P2) 6)
  (= (MOVE-COST TB-FOR-P3 M4) 5) (= (MOVE-COST TB-FOR-P3 TB12) 5)
  (= (MOVE-COST TB-FOR-P3 TB23) 4) (= (MOVE-COST TB-FOR-P3 M2) 4)
  (= (MOVE-COST TB-FOR-P3 TABLE-OUT) 3) (= (MOVE-COST TB-FOR-P3 T3) 2)
  (= (MOVE-COST TB-FOR-P3 TB-FOR-P3) 1000) (= (MOVE-COST TB-FOR-P3 M6) 2)
  (= (MOVE-COST TB-FOR-P3 TB13) 3) (= (MOVE-COST TB-FOR-P3 T1) 5)
  (= (MOVE-COST TB-FOR-P3 M5) 6) (= (MOVE-COST TB-FOR-P3 TB-FOR-P1) 6)
  (= (MOVE-COST TB-FOR-P3 TABLE-IN) 5) (= (MOVE-COST M6 M3) 3)
  (= (MOVE-COST M6 M1) 5) (= (MOVE-COST M6 T2) 6)
  (= (MOVE-COST M6 TB-FOR-P2) 5) (= (MOVE-COST M6 M4) 4)
  (= (MOVE-COST M6 TB12) 4) (= (MOVE-COST M6 TB23) 3) (= (MOVE-COST M6 M2) 4)
  (= (MOVE-COST M6 TABLE-OUT) 4) (= (MOVE-COST M6 T3) 3)
  (= (MOVE-COST M6 TB-FOR-P3) 2) (= (MOVE-COST M6 M6) 1000)
  (= (MOVE-COST M6 TB13) 2) (= (MOVE-COST M6 T1) 4) (= (MOVE-COST M6 M5) 5)
  (= (MOVE-COST M6 TB-FOR-P1) 5) (= (MOVE-COST M6 TABLE-IN) 4)
  (= (MOVE-COST TB13 M3) 2) (= (MOVE-COST TB13 M1) 4) (= (MOVE-COST TB13 T2) 5)
  (= (MOVE-COST TB13 TB-FOR-P2) 4) (= (MOVE-COST TB13 M4) 3)
  (= (MOVE-COST TB13 TB12) 3) (= (MOVE-COST TB13 TB23) 2)
  (= (MOVE-COST TB13 M2) 3) (= (MOVE-COST TB13 TABLE-OUT) 4)
  (= (MOVE-COST TB13 T3) 4) (= (MOVE-COST TB13 TB-FOR-P3) 3)
  (= (MOVE-COST TB13 M6) 2) (= (MOVE-COST TB13 TB13) 1000)
  (= (MOVE-COST TB13 T1) 3) (= (MOVE-COST TB13 M5) 4)
  (= (MOVE-COST TB13 TB-FOR-P1) 4) (= (MOVE-COST TB13 TABLE-IN) 3)
  (= (MOVE-COST T1 M3) 2) (= (MOVE-COST T1 M1) 4) (= (MOVE-COST T1 T2) 5)
  (= (MOVE-COST T1 TB-FOR-P2) 6) (= (MOVE-COST T1 M4) 5)
  (= (MOVE-COST T1 TB12) 3) (= (MOVE-COST T1 TB23) 4) (= (MOVE-COST T1 M2) 5)
  (= (MOVE-COST T1 TABLE-OUT) 6) (= (MOVE-COST T1 T3) 6)
  (= (MOVE-COST T1 TB-FOR-P3) 5) (= (MOVE-COST T1 M6) 4)
  (= (MOVE-COST T1 TB13) 3) (= (MOVE-COST T1 T1) 1000) (= (MOVE-COST T1 M5) 2)
  (= (MOVE-COST T1 TB-FOR-P1) 3) (= (MOVE-COST T1 TABLE-IN) 3)
  (= (MOVE-COST M5 M3) 3) (= (MOVE-COST M5 M1) 5) (= (MOVE-COST M5 T2) 6)
  (= (MOVE-COST M5 TB-FOR-P2) 7) (= (MOVE-COST M5 M4) 6)
  (= (MOVE-COST M5 TB12) 4) (= (MOVE-COST M5 TB23) 5) (= (MOVE-COST M5 M2) 6)
  (= (MOVE-COST M5 TABLE-OUT) 7) (= (MOVE-COST M5 T3) 7)
  (= (MOVE-COST M5 TB-FOR-P3) 6) (= (MOVE-COST M5 M6) 5)
  (= (MOVE-COST M5 TB13) 4) (= (MOVE-COST M5 T1) 2) (= (MOVE-COST M5 M5) 1000)
  (= (MOVE-COST M5 TB-FOR-P1) 2) (= (MOVE-COST M5 TABLE-IN) 3)
  (= (MOVE-COST TB-FOR-P1 M3) 3) (= (MOVE-COST TB-FOR-P1 M1) 5)
  (= (MOVE-COST TB-FOR-P1 T2) 6) (= (MOVE-COST TB-FOR-P1 TB-FOR-P2) 7)
  (= (MOVE-COST TB-FOR-P1 M4) 6) (= (MOVE-COST TB-FOR-P1 TB12) 4)
  (= (MOVE-COST TB-FOR-P1 TB23) 5) (= (MOVE-COST TB-FOR-P1 M2) 6)
  (= (MOVE-COST TB-FOR-P1 TABLE-OUT) 7) (= (MOVE-COST TB-FOR-P1 T3) 7)
  (= (MOVE-COST TB-FOR-P1 TB-FOR-P3) 6) (= (MOVE-COST TB-FOR-P1 M6) 5)
  (= (MOVE-COST TB-FOR-P1 TB13) 4) (= (MOVE-COST TB-FOR-P1 T1) 3)
  (= (MOVE-COST TB-FOR-P1 M5) 2) (= (MOVE-COST TB-FOR-P1 TB-FOR-P1) 1000)
  (= (MOVE-COST TB-FOR-P1 TABLE-IN) 2) (= (MOVE-COST TABLE-IN M3) 2)
  (= (MOVE-COST TABLE-IN M1) 4) (= (MOVE-COST TABLE-IN T2) 5)
  (= (MOVE-COST TABLE-IN TB-FOR-P2) 6) (= (MOVE-COST TABLE-IN M4) 5)
  (= (MOVE-COST TABLE-IN TB12) 3) (= (MOVE-COST TABLE-IN TB23) 4)
  (= (MOVE-COST TABLE-IN M2) 5) (= (MOVE-COST TABLE-IN TABLE-OUT) 6)
  (= (MOVE-COST TABLE-IN T3) 6) (= (MOVE-COST TABLE-IN TB-FOR-P3) 5)
  (= (MOVE-COST TABLE-IN M6) 4) (= (MOVE-COST TABLE-IN TB13) 3)
  (= (MOVE-COST TABLE-IN T1) 3) (= (MOVE-COST TABLE-IN M5) 3)
  (= (MOVE-COST TABLE-IN TB-FOR-P1) 2) (= (MOVE-COST TABLE-IN TABLE-IN) 1000)
  (CONNECTED CARRY-IN TABLE-IN) (CONNECTED TABLE-OUT CARRY-OUT)
  (= (JOB-COST J9) 3) (DEPENDS J8 J9) (JOB-AVAILABLE-AT J9 M6)
  (= (JOB-COST J8) 2) (DEPENDS J7 J8) (JOB-AVAILABLE-AT J8 M5) (AT P3 T3)
  (USES J7 P3) (= (JOB-COST J7) 2) (DEPENDS J6 J7)
  (JOB-AVAILABLE-AT J7 TB-FOR-P3) (= (JOB-COST J6) 3) (DEPENDS J5 J6)
  (JOB-AVAILABLE-AT J6 M4) (AT P2 T2) (USES J5 P2) (= (JOB-COST J5) 2)
  (DEPENDS J4 J5) (JOB-AVAILABLE-AT J5 TB-FOR-P2) (= (JOB-COST J4) 2)
  (DEPENDS J3 J4) (JOB-AVAILABLE-AT J4 M3) (= (JOB-COST J3) 2) (DEPENDS J2 J3)
  (JOB-AVAILABLE-AT J3 M2) (AT P1 T1) (USES J2 P1) (= (JOB-COST J2) 2)
  (DEPENDS J1 J2) (JOB-AVAILABLE-AT J2 TB-FOR-P1) (= (JOB-COST J1) 3)
  (DEPENDS NOTHING-DONE J1) (JOB-AVAILABLE-AT J1 M1)
  (= (JOB-COST NOTHING-DONE) 0) (AT B-0 CARRY-IN) (FINISHED NOTHING-DONE B-0)
  (AT B-1 CARRY-IN) (FINISHED NOTHING-DONE B-1) (AT B-2 CARRY-IN)
  (FINISHED NOTHING-DONE B-2) (AT B-3 CARRY-IN) (FINISHED NOTHING-DONE B-3)
  (FREE A1) (AT A1 T1) (ARM-PRESENT T1) (FREE A2) (AT A2 M4) (ARM-PRESENT M4)
  (FREE A3) (AT A3 TB23) (ARM-PRESENT TB23))
 (:GOAL
  (AND (AT B-0 CARRY-OUT) (FINISHED J9 B-0) (AT B-1 CARRY-OUT)
       (FINISHED J9 B-1) (AT B-2 CARRY-OUT) (FINISHED J9 B-2)
       (AT B-3 CARRY-OUT) (FINISHED J9 B-3)))
 (:METRIC MINIMIZE (TOTAL-COST)))