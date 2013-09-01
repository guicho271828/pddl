(DEFINE (PROBLEM CELL-ASSEMBLY-MODEL2A-1-STEADY-STATE-1-2-6-9-17)
 (:DOMAIN CELL-ASSEMBLY)
 (:OBJECTS BASE17-1400 - BASE
           BASE9-1399 - BASE
           BASE6-1398 - BASE
           BASE2-1397 - BASE
           BASE1-1396 - BASE
           BASE-NEW-1395 - BASE
           INSPECT-BASE - MACHINE-JOB
           SCREW-C - MACHINE-JOB
           ATTATCH-C - JOB
           ATTATCH-B - JOB
           OIL-CYLINDER - MACHINE-JOB
           SCREW-A - MACHINE-JOB
           ATTATCH-A - JOB
           INSERT-GASKET - MACHINE-JOB
           INSPECTION-MACHINE - MACHINE
           SCREW-MACHINE-C - MACHINE
           OILING-MACHINE - MACHINE
           SCREW-MACHINE-A - MACHINE
           GASKET-MACHINE - MACHINE
           TABLE2 - TABLE
           TABLE1 - TABLE
           TRAY-C - TRAY
           TRAY-B - TRAY
           TRAY-A - TRAY
           PART-C - COMPONENT
           PART-B - COMPONENT
           PART-A - COMPONENT
           ARM2 - ARM
           ARM1 - ARM)

 (:INIT
  (BASE-PRESENT TABLE-OUT)
  (FINISHED NOTHING-DONE BASE17-1400)
  (FINISHED INSERT-GASKET BASE17-1400)
  (FINISHED ATTATCH-A BASE17-1400)
  (FINISHED SCREW-A BASE17-1400)
  (FINISHED OIL-CYLINDER BASE17-1400)
  (FINISHED ATTATCH-B BASE17-1400)
  (FINISHED ATTATCH-C BASE17-1400)
  (FINISHED SCREW-C BASE17-1400)
  (FINISHED INSPECT-BASE BASE17-1400)
  (AT BASE17-1400 TABLE-OUT)
  (BASE-PRESENT TABLE2)
  (FINISHED NOTHING-DONE BASE9-1399)
  (FINISHED INSERT-GASKET BASE9-1399)
  (FINISHED ATTATCH-A BASE9-1399)
  (FINISHED SCREW-A BASE9-1399)
  (FINISHED OIL-CYLINDER BASE9-1399)
  (AT BASE9-1399 TABLE2)
  (FINISHED NOTHING-DONE BASE6-1398)
  (FINISHED INSERT-GASKET BASE6-1398)
  (FINISHED ATTATCH-A BASE6-1398)
  (FINISHED SCREW-A BASE6-1398)
  (HOLD ARM2 BASE6-1398)
  (FINISHED NOTHING-DONE BASE2-1397)
  (FINISHED INSERT-GASKET BASE2-1397)
  (HOLD ARM1 BASE2-1397)
  (BASE-PRESENT GASKET-MACHINE)
  (FINISHED NOTHING-DONE BASE1-1396)
  (AT BASE1-1396 GASKET-MACHINE)
  (AT BASE-NEW-1395 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-NEW-1395)
  (ARM-PRESENT OILING-MACHINE)
  (AT ARM2 OILING-MACHINE)
  (ARM-PRESENT TRAY-A)
  (AT ARM1 TRAY-A)
  (= (JOB-COST NOTHING-DONE) 0)
  (JOB-AVAILABLE-AT INSERT-GASKET GASKET-MACHINE)
  (DEPENDS NOTHING-DONE INSERT-GASKET)
  (= (JOB-COST INSERT-GASKET) 3)
  (JOB-AVAILABLE-AT ATTATCH-A TABLE1)
  (DEPENDS INSERT-GASKET ATTATCH-A)
  (= (JOB-COST ATTATCH-A) 3)
  (USES ATTATCH-A PART-A)
  (AT PART-A TRAY-A)
  (JOB-AVAILABLE-AT SCREW-A SCREW-MACHINE-A)
  (DEPENDS ATTATCH-A SCREW-A)
  (= (JOB-COST SCREW-A) 2)
  (JOB-AVAILABLE-AT OIL-CYLINDER OILING-MACHINE)
  (DEPENDS SCREW-A OIL-CYLINDER)
  (= (JOB-COST OIL-CYLINDER) 2)
  (JOB-AVAILABLE-AT ATTATCH-B TABLE2)
  (DEPENDS OIL-CYLINDER ATTATCH-B)
  (= (JOB-COST ATTATCH-B) 3)
  (USES ATTATCH-B PART-B)
  (AT PART-B TRAY-B)
  (JOB-AVAILABLE-AT ATTATCH-C TABLE2)
  (DEPENDS ATTATCH-B ATTATCH-C)
  (= (JOB-COST ATTATCH-C) 2)
  (USES ATTATCH-C PART-C)
  (AT PART-C TRAY-C)
  (JOB-AVAILABLE-AT SCREW-C SCREW-MACHINE-C)
  (DEPENDS ATTATCH-C SCREW-C)
  (= (JOB-COST SCREW-C) 2)
  (JOB-AVAILABLE-AT INSPECT-BASE INSPECTION-MACHINE)
  (DEPENDS SCREW-C INSPECT-BASE)
  (= (JOB-COST INSPECT-BASE) 3)
  (CONNECTED TABLE-OUT CARRY-OUT)
  (CONNECTED CARRY-IN TABLE-IN)
  (= (MOVE-COST TABLE-IN TABLE-IN) 1000)
  (= (MOVE-COST TABLE-IN TRAY-A) 2)
  (= (MOVE-COST TABLE-IN TABLE-OUT) 3)
  (= (MOVE-COST TABLE-IN INSPECTION-MACHINE) 4)
  (= (MOVE-COST TABLE-IN TABLE2) 5)
  (= (MOVE-COST TABLE-IN SCREW-MACHINE-C) 6)
  (= (MOVE-COST TABLE-IN TRAY-C) 7)
  (= (MOVE-COST TABLE-IN OILING-MACHINE) 6)
  (= (MOVE-COST TABLE-IN TRAY-B) 5)
  (= (MOVE-COST TABLE-IN SCREW-MACHINE-A) 4)
  (= (MOVE-COST TABLE-IN TABLE1) 3)
  (= (MOVE-COST TABLE-IN GASKET-MACHINE) 2)
  (= (MOVE-COST TRAY-A TABLE-IN) 2)
  (= (MOVE-COST TRAY-A TRAY-A) 1000)
  (= (MOVE-COST TRAY-A TABLE-OUT) 2)
  (= (MOVE-COST TRAY-A INSPECTION-MACHINE) 3)
  (= (MOVE-COST TRAY-A TABLE2) 4)
  (= (MOVE-COST TRAY-A SCREW-MACHINE-C) 5)
  (= (MOVE-COST TRAY-A TRAY-C) 6)
  (= (MOVE-COST TRAY-A OILING-MACHINE) 7)
  (= (MOVE-COST TRAY-A TRAY-B) 6)
  (= (MOVE-COST TRAY-A SCREW-MACHINE-A) 5)
  (= (MOVE-COST TRAY-A TABLE1) 4)
  (= (MOVE-COST TRAY-A GASKET-MACHINE) 3)
  (= (MOVE-COST TABLE-OUT TABLE-IN) 3)
  (= (MOVE-COST TABLE-OUT TRAY-A) 2)
  (= (MOVE-COST TABLE-OUT TABLE-OUT) 1000)
  (= (MOVE-COST TABLE-OUT INSPECTION-MACHINE) 2)
  (= (MOVE-COST TABLE-OUT TABLE2) 3)
  (= (MOVE-COST TABLE-OUT SCREW-MACHINE-C) 4)
  (= (MOVE-COST TABLE-OUT TRAY-C) 5)
  (= (MOVE-COST TABLE-OUT OILING-MACHINE) 6)
  (= (MOVE-COST TABLE-OUT TRAY-B) 7)
  (= (MOVE-COST TABLE-OUT SCREW-MACHINE-A) 6)
  (= (MOVE-COST TABLE-OUT TABLE1) 5)
  (= (MOVE-COST TABLE-OUT GASKET-MACHINE) 4)
  (= (MOVE-COST INSPECTION-MACHINE TABLE-IN) 4)
  (= (MOVE-COST INSPECTION-MACHINE TRAY-A) 3)
  (= (MOVE-COST INSPECTION-MACHINE TABLE-OUT) 2)
  (= (MOVE-COST INSPECTION-MACHINE INSPECTION-MACHINE) 1000)
  (= (MOVE-COST INSPECTION-MACHINE TABLE2) 2)
  (= (MOVE-COST INSPECTION-MACHINE SCREW-MACHINE-C) 3)
  (= (MOVE-COST INSPECTION-MACHINE TRAY-C) 4)
  (= (MOVE-COST INSPECTION-MACHINE OILING-MACHINE) 5)
  (= (MOVE-COST INSPECTION-MACHINE TRAY-B) 6)
  (= (MOVE-COST INSPECTION-MACHINE SCREW-MACHINE-A) 7)
  (= (MOVE-COST INSPECTION-MACHINE TABLE1) 6)
  (= (MOVE-COST INSPECTION-MACHINE GASKET-MACHINE) 5)
  (= (MOVE-COST TABLE2 TABLE-IN) 5)
  (= (MOVE-COST TABLE2 TRAY-A) 4)
  (= (MOVE-COST TABLE2 TABLE-OUT) 3)
  (= (MOVE-COST TABLE2 INSPECTION-MACHINE) 2)
  (= (MOVE-COST TABLE2 TABLE2) 1000)
  (= (MOVE-COST TABLE2 SCREW-MACHINE-C) 2)
  (= (MOVE-COST TABLE2 TRAY-C) 3)
  (= (MOVE-COST TABLE2 OILING-MACHINE) 4)
  (= (MOVE-COST TABLE2 TRAY-B) 5)
  (= (MOVE-COST TABLE2 SCREW-MACHINE-A) 6)
  (= (MOVE-COST TABLE2 TABLE1) 7)
  (= (MOVE-COST TABLE2 GASKET-MACHINE) 6)
  (= (MOVE-COST SCREW-MACHINE-C TABLE-IN) 6)
  (= (MOVE-COST SCREW-MACHINE-C TRAY-A) 5)
  (= (MOVE-COST SCREW-MACHINE-C TABLE-OUT) 4)
  (= (MOVE-COST SCREW-MACHINE-C INSPECTION-MACHINE) 3)
  (= (MOVE-COST SCREW-MACHINE-C TABLE2) 2)
  (= (MOVE-COST SCREW-MACHINE-C SCREW-MACHINE-C) 1000)
  (= (MOVE-COST SCREW-MACHINE-C TRAY-C) 2)
  (= (MOVE-COST SCREW-MACHINE-C OILING-MACHINE) 3)
  (= (MOVE-COST SCREW-MACHINE-C TRAY-B) 4)
  (= (MOVE-COST SCREW-MACHINE-C SCREW-MACHINE-A) 5)
  (= (MOVE-COST SCREW-MACHINE-C TABLE1) 6)
  (= (MOVE-COST SCREW-MACHINE-C GASKET-MACHINE) 7)
  (= (MOVE-COST TRAY-C TABLE-IN) 7)
  (= (MOVE-COST TRAY-C TRAY-A) 6)
  (= (MOVE-COST TRAY-C TABLE-OUT) 5)
  (= (MOVE-COST TRAY-C INSPECTION-MACHINE) 4)
  (= (MOVE-COST TRAY-C TABLE2) 3)
  (= (MOVE-COST TRAY-C SCREW-MACHINE-C) 2)
  (= (MOVE-COST TRAY-C TRAY-C) 1000)
  (= (MOVE-COST TRAY-C OILING-MACHINE) 2)
  (= (MOVE-COST TRAY-C TRAY-B) 3)
  (= (MOVE-COST TRAY-C SCREW-MACHINE-A) 4)
  (= (MOVE-COST TRAY-C TABLE1) 5)
  (= (MOVE-COST TRAY-C GASKET-MACHINE) 6)
  (= (MOVE-COST OILING-MACHINE TABLE-IN) 6)
  (= (MOVE-COST OILING-MACHINE TRAY-A) 7)
  (= (MOVE-COST OILING-MACHINE TABLE-OUT) 6)
  (= (MOVE-COST OILING-MACHINE INSPECTION-MACHINE) 5)
  (= (MOVE-COST OILING-MACHINE TABLE2) 4)
  (= (MOVE-COST OILING-MACHINE SCREW-MACHINE-C) 3)
  (= (MOVE-COST OILING-MACHINE TRAY-C) 2)
  (= (MOVE-COST OILING-MACHINE OILING-MACHINE) 1000)
  (= (MOVE-COST OILING-MACHINE TRAY-B) 2)
  (= (MOVE-COST OILING-MACHINE SCREW-MACHINE-A) 3)
  (= (MOVE-COST OILING-MACHINE TABLE1) 4)
  (= (MOVE-COST OILING-MACHINE GASKET-MACHINE) 5)
  (= (MOVE-COST TRAY-B TABLE-IN) 5)
  (= (MOVE-COST TRAY-B TRAY-A) 6)
  (= (MOVE-COST TRAY-B TABLE-OUT) 7)
  (= (MOVE-COST TRAY-B INSPECTION-MACHINE) 6)
  (= (MOVE-COST TRAY-B TABLE2) 5)
  (= (MOVE-COST TRAY-B SCREW-MACHINE-C) 4)
  (= (MOVE-COST TRAY-B TRAY-C) 3)
  (= (MOVE-COST TRAY-B OILING-MACHINE) 2)
  (= (MOVE-COST TRAY-B TRAY-B) 1000)
  (= (MOVE-COST TRAY-B SCREW-MACHINE-A) 2)
  (= (MOVE-COST TRAY-B TABLE1) 3)
  (= (MOVE-COST TRAY-B GASKET-MACHINE) 4)
  (= (MOVE-COST SCREW-MACHINE-A TABLE-IN) 4)
  (= (MOVE-COST SCREW-MACHINE-A TRAY-A) 5)
  (= (MOVE-COST SCREW-MACHINE-A TABLE-OUT) 6)
  (= (MOVE-COST SCREW-MACHINE-A INSPECTION-MACHINE) 7)
  (= (MOVE-COST SCREW-MACHINE-A TABLE2) 6)
  (= (MOVE-COST SCREW-MACHINE-A SCREW-MACHINE-C) 5)
  (= (MOVE-COST SCREW-MACHINE-A TRAY-C) 4)
  (= (MOVE-COST SCREW-MACHINE-A OILING-MACHINE) 3)
  (= (MOVE-COST SCREW-MACHINE-A TRAY-B) 2)
  (= (MOVE-COST SCREW-MACHINE-A SCREW-MACHINE-A) 1000)
  (= (MOVE-COST SCREW-MACHINE-A TABLE1) 2)
  (= (MOVE-COST SCREW-MACHINE-A GASKET-MACHINE) 3)
  (= (MOVE-COST TABLE1 TABLE-IN) 3)
  (= (MOVE-COST TABLE1 TRAY-A) 4)
  (= (MOVE-COST TABLE1 TABLE-OUT) 5)
  (= (MOVE-COST TABLE1 INSPECTION-MACHINE) 6)
  (= (MOVE-COST TABLE1 TABLE2) 7)
  (= (MOVE-COST TABLE1 SCREW-MACHINE-C) 6)
  (= (MOVE-COST TABLE1 TRAY-C) 5)
  (= (MOVE-COST TABLE1 OILING-MACHINE) 4)
  (= (MOVE-COST TABLE1 TRAY-B) 3)
  (= (MOVE-COST TABLE1 SCREW-MACHINE-A) 2)
  (= (MOVE-COST TABLE1 TABLE1) 1000)
  (= (MOVE-COST TABLE1 GASKET-MACHINE) 2)
  (= (MOVE-COST GASKET-MACHINE TABLE-IN) 2)
  (= (MOVE-COST GASKET-MACHINE TRAY-A) 3)
  (= (MOVE-COST GASKET-MACHINE TABLE-OUT) 4)
  (= (MOVE-COST GASKET-MACHINE INSPECTION-MACHINE) 5)
  (= (MOVE-COST GASKET-MACHINE TABLE2) 6)
  (= (MOVE-COST GASKET-MACHINE SCREW-MACHINE-C) 7)
  (= (MOVE-COST GASKET-MACHINE TRAY-C) 6)
  (= (MOVE-COST GASKET-MACHINE OILING-MACHINE) 5)
  (= (MOVE-COST GASKET-MACHINE TRAY-B) 4)
  (= (MOVE-COST GASKET-MACHINE SCREW-MACHINE-A) 3)
  (= (MOVE-COST GASKET-MACHINE TABLE1) 2)
  (= (MOVE-COST GASKET-MACHINE GASKET-MACHINE) 1000)
  (REACHABLE ARM2 TRAY-C)
  (REACHABLE ARM2 TRAY-B)
  (REACHABLE ARM2 TABLE2)
  (REACHABLE ARM2 TABLE1)
  (REACHABLE ARM2 SCREW-MACHINE-C)
  (REACHABLE ARM2 OILING-MACHINE)
  (REACHABLE ARM2 SCREW-MACHINE-A)
  (REACHABLE ARM1 TRAY-A)
  (REACHABLE ARM1 TABLE2)
  (REACHABLE ARM1 TABLE1)
  (REACHABLE ARM1 TABLE-OUT)
  (REACHABLE ARM1 TABLE-IN)
  (REACHABLE ARM1 INSPECTION-MACHINE)
  (REACHABLE ARM1 GASKET-MACHINE)
  (= (LOADING-COST) 1)
  (= (TOTAL-COST) 0))
 (:GOAL
  (AND (FINISHED INSPECT-BASE BASE17-1400)
       (AT BASE17-1400 CARRY-OUT)
       (FINISHED NOTHING-DONE BASE9-1399)
       (FINISHED INSERT-GASKET BASE9-1399)
       (FINISHED ATTATCH-A BASE9-1399)
       (FINISHED SCREW-A BASE9-1399)
       (FINISHED OIL-CYLINDER BASE9-1399)
       (FINISHED ATTATCH-B BASE9-1399)
       (FINISHED ATTATCH-C BASE9-1399)
       (FINISHED SCREW-C BASE9-1399)
       (FINISHED INSPECT-BASE BASE9-1399)
       (AT BASE9-1399 TABLE-OUT)
       (FINISHED NOTHING-DONE BASE6-1398)
       (FINISHED INSERT-GASKET BASE6-1398)
       (FINISHED ATTATCH-A BASE6-1398)
       (FINISHED SCREW-A BASE6-1398)
       (FINISHED OIL-CYLINDER BASE6-1398)
       (AT BASE6-1398 TABLE2)
       (FINISHED NOTHING-DONE BASE2-1397)
       (FINISHED INSERT-GASKET BASE2-1397)
       (FINISHED ATTATCH-A BASE2-1397)
       (FINISHED SCREW-A BASE2-1397)
       (HOLD ARM2 BASE2-1397)
       (FINISHED NOTHING-DONE BASE1-1396)
       (FINISHED INSERT-GASKET BASE1-1396)
       (HOLD ARM1 BASE1-1396)
       (FINISHED NOTHING-DONE BASE-NEW-1395)
       (AT BASE-NEW-1395 GASKET-MACHINE))))