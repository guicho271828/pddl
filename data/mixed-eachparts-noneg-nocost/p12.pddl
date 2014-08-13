(DEFINE (PROBLEM CELL-ASSEMBLY-2A2B-MIXED-EACH-12)
 (:DOMAIN CELL-ASSEMBLY-EACHPARTS-NONEG-NOCOST)
 (:OBJECTS ARM1 ARM2 - ARM
           BASE-2A-0 BASE-2A-1 BASE-2A-2 BASE-2A-3 BASE-2A-4 BASE-2A-5 BASE-2A-6 BASE-2A-7 BASE-2A-8 BASE-2A-9 BASE-2A-10 BASE-2A-11 BASE-2B-0 BASE-2B-1 BASE-2B-2 BASE-2B-3 BASE-2B-4 BASE-2B-5 BASE-2B-6 BASE-2B-7 BASE-2B-8 BASE-2B-9 BASE-2B-10 BASE-2B-11 - BASE
           PART-2A-A-0 PART-2A-A-1 PART-2A-A-2 PART-2A-A-3 PART-2A-A-4 PART-2A-A-5 PART-2A-A-6 PART-2A-A-7 PART-2A-A-8 PART-2A-A-9 PART-2A-A-10 PART-2A-A-11 PART-2A-B-0 PART-2A-B-1 PART-2A-B-2 PART-2A-B-3 PART-2A-B-4 PART-2A-B-5 PART-2A-B-6 PART-2A-B-7 PART-2A-B-8 PART-2A-B-9 PART-2A-B-10 PART-2A-B-11 PART-2A-C-0 PART-2A-C-1 PART-2A-C-2 PART-2A-C-3 PART-2A-C-4 PART-2A-C-5 PART-2A-C-6 PART-2A-C-7 PART-2A-C-8 PART-2A-C-9 PART-2A-C-10 PART-2A-C-11 PART-2B-A-0 PART-2B-A-1 PART-2B-A-2 PART-2B-A-3 PART-2B-A-4 PART-2B-A-5 PART-2B-A-6 PART-2B-A-7 PART-2B-A-8 PART-2B-A-9 PART-2B-A-10 PART-2B-A-11 PART-2B-B-0 PART-2B-B-1 PART-2B-B-2 PART-2B-B-3 PART-2B-B-4 PART-2B-B-5 PART-2B-B-6 PART-2B-B-7 PART-2B-B-8 PART-2B-B-9 PART-2B-B-10 PART-2B-B-11 PART-2B-C-0 PART-2B-C-1 PART-2B-C-2 PART-2B-C-3 PART-2B-C-4 PART-2B-C-5 PART-2B-C-6 PART-2B-C-7 PART-2B-C-8 PART-2B-C-9 PART-2B-C-10 PART-2B-C-11 - COMPONENT
           TRAY-A TRAY-B TRAY-C - TRAY
           TABLE1 TABLE2 - TABLE
           GASKET-MACHINE SCREW-MACHINE-A OILING-MACHINE SCREW-MACHINE-C INSPECTION-MACHINE - MACHINE
           J2A-INSERT-GASKET - MACHINE-JOB
           J2A-ATTATCH-A - JOB
           J2A-SCREW-A - MACHINE-JOB
           J2A-OIL-CYLINDER - MACHINE-JOB
           J2A-ATTATCH-B - JOB
           J2A-ATTATCH-C - JOB
           J2A-SCREW-C - MACHINE-JOB
           J2A-INSPECT-BASE - MACHINE-JOB
           J2B-ATTATCH-A - JOB
           J2B-SCREW-A - MACHINE-JOB
           J2B-ATTATCH-B - JOB
           J2B-ATTATCH-C - JOB
           J2B-SCREW-C - MACHINE-JOB)

 (:INIT
  (IS-REACHABLE ARM1 GASKET-MACHINE)
  (IS-REACHABLE ARM1 INSPECTION-MACHINE)
  (IS-REACHABLE ARM1 TABLE-IN)
  (IS-REACHABLE ARM1 TABLE-OUT)
  (IS-REACHABLE ARM1 TABLE1)
  (IS-REACHABLE ARM1 TABLE2)
  (IS-REACHABLE ARM1 TRAY-A)
  (IS-REACHABLE ARM2 SCREW-MACHINE-A)
  (IS-REACHABLE ARM2 OILING-MACHINE)
  (IS-REACHABLE ARM2 SCREW-MACHINE-C)
  (IS-REACHABLE ARM2 TABLE1)
  (IS-REACHABLE ARM2 TABLE2)
  (IS-REACHABLE ARM2 TRAY-B)
  (IS-REACHABLE ARM2 TRAY-C)
  (ADJACENT TRAY-A TABLE-IN)
  (ADJACENT TABLE-IN TRAY-A)
  (ADJACENT TABLE-OUT TRAY-A)
  (ADJACENT TRAY-A TABLE-OUT)
  (ADJACENT INSPECTION-MACHINE TABLE-OUT)
  (ADJACENT TABLE-OUT INSPECTION-MACHINE)
  (ADJACENT TABLE2 INSPECTION-MACHINE)
  (ADJACENT INSPECTION-MACHINE TABLE2)
  (ADJACENT SCREW-MACHINE-C TABLE2)
  (ADJACENT TABLE2 SCREW-MACHINE-C)
  (ADJACENT TRAY-C SCREW-MACHINE-C)
  (ADJACENT SCREW-MACHINE-C TRAY-C)
  (ADJACENT OILING-MACHINE TRAY-C)
  (ADJACENT TRAY-C OILING-MACHINE)
  (ADJACENT TRAY-B OILING-MACHINE)
  (ADJACENT OILING-MACHINE TRAY-B)
  (ADJACENT SCREW-MACHINE-A TRAY-B)
  (ADJACENT TRAY-B SCREW-MACHINE-A)
  (ADJACENT TABLE1 SCREW-MACHINE-A)
  (ADJACENT SCREW-MACHINE-A TABLE1)
  (ADJACENT GASKET-MACHINE TABLE1)
  (ADJACENT TABLE1 GASKET-MACHINE)
  (ADJACENT TABLE-IN GASKET-MACHINE)
  (ADJACENT GASKET-MACHINE TABLE-IN)
  (CONNECTED CARRY-IN TABLE-IN)
  (CONNECTED TABLE-OUT CARRY-OUT)
  (DEPENDS J2A-SCREW-C J2A-INSPECT-BASE)
  (JOB-AVAILABLE-AT J2A-INSPECT-BASE INSPECTION-MACHINE)
  (DEPENDS J2A-ATTATCH-C J2A-SCREW-C)
  (JOB-AVAILABLE-AT J2A-SCREW-C SCREW-MACHINE-C)
  (AT PART-2A-C-11 TRAY-C)
  (USES J2A-ATTATCH-C PART-2A-C-11)
  (AT PART-2A-C-10 TRAY-C)
  (USES J2A-ATTATCH-C PART-2A-C-10)
  (AT PART-2A-C-9 TRAY-C)
  (USES J2A-ATTATCH-C PART-2A-C-9)
  (AT PART-2A-C-8 TRAY-C)
  (USES J2A-ATTATCH-C PART-2A-C-8)
  (AT PART-2A-C-7 TRAY-C)
  (USES J2A-ATTATCH-C PART-2A-C-7)
  (AT PART-2A-C-6 TRAY-C)
  (USES J2A-ATTATCH-C PART-2A-C-6)
  (AT PART-2A-C-5 TRAY-C)
  (USES J2A-ATTATCH-C PART-2A-C-5)
  (AT PART-2A-C-4 TRAY-C)
  (USES J2A-ATTATCH-C PART-2A-C-4)
  (AT PART-2A-C-3 TRAY-C)
  (USES J2A-ATTATCH-C PART-2A-C-3)
  (AT PART-2A-C-2 TRAY-C)
  (USES J2A-ATTATCH-C PART-2A-C-2)
  (AT PART-2A-C-1 TRAY-C)
  (USES J2A-ATTATCH-C PART-2A-C-1)
  (AT PART-2A-C-0 TRAY-C)
  (USES J2A-ATTATCH-C PART-2A-C-0)
  (DEPENDS J2A-ATTATCH-B J2A-ATTATCH-C)
  (JOB-AVAILABLE-AT J2A-ATTATCH-C TABLE2)
  (AT PART-2A-B-11 TRAY-B)
  (USES J2A-ATTATCH-B PART-2A-B-11)
  (AT PART-2A-B-10 TRAY-B)
  (USES J2A-ATTATCH-B PART-2A-B-10)
  (AT PART-2A-B-9 TRAY-B)
  (USES J2A-ATTATCH-B PART-2A-B-9)
  (AT PART-2A-B-8 TRAY-B)
  (USES J2A-ATTATCH-B PART-2A-B-8)
  (AT PART-2A-B-7 TRAY-B)
  (USES J2A-ATTATCH-B PART-2A-B-7)
  (AT PART-2A-B-6 TRAY-B)
  (USES J2A-ATTATCH-B PART-2A-B-6)
  (AT PART-2A-B-5 TRAY-B)
  (USES J2A-ATTATCH-B PART-2A-B-5)
  (AT PART-2A-B-4 TRAY-B)
  (USES J2A-ATTATCH-B PART-2A-B-4)
  (AT PART-2A-B-3 TRAY-B)
  (USES J2A-ATTATCH-B PART-2A-B-3)
  (AT PART-2A-B-2 TRAY-B)
  (USES J2A-ATTATCH-B PART-2A-B-2)
  (AT PART-2A-B-1 TRAY-B)
  (USES J2A-ATTATCH-B PART-2A-B-1)
  (AT PART-2A-B-0 TRAY-B)
  (USES J2A-ATTATCH-B PART-2A-B-0)
  (DEPENDS J2A-OIL-CYLINDER J2A-ATTATCH-B)
  (JOB-AVAILABLE-AT J2A-ATTATCH-B TABLE2)
  (DEPENDS J2A-SCREW-A J2A-OIL-CYLINDER)
  (JOB-AVAILABLE-AT J2A-OIL-CYLINDER OILING-MACHINE)
  (DEPENDS J2A-ATTATCH-A J2A-SCREW-A)
  (JOB-AVAILABLE-AT J2A-SCREW-A SCREW-MACHINE-A)
  (AT PART-2A-A-11 TRAY-A)
  (USES J2A-ATTATCH-A PART-2A-A-11)
  (AT PART-2A-A-10 TRAY-A)
  (USES J2A-ATTATCH-A PART-2A-A-10)
  (AT PART-2A-A-9 TRAY-A)
  (USES J2A-ATTATCH-A PART-2A-A-9)
  (AT PART-2A-A-8 TRAY-A)
  (USES J2A-ATTATCH-A PART-2A-A-8)
  (AT PART-2A-A-7 TRAY-A)
  (USES J2A-ATTATCH-A PART-2A-A-7)
  (AT PART-2A-A-6 TRAY-A)
  (USES J2A-ATTATCH-A PART-2A-A-6)
  (AT PART-2A-A-5 TRAY-A)
  (USES J2A-ATTATCH-A PART-2A-A-5)
  (AT PART-2A-A-4 TRAY-A)
  (USES J2A-ATTATCH-A PART-2A-A-4)
  (AT PART-2A-A-3 TRAY-A)
  (USES J2A-ATTATCH-A PART-2A-A-3)
  (AT PART-2A-A-2 TRAY-A)
  (USES J2A-ATTATCH-A PART-2A-A-2)
  (AT PART-2A-A-1 TRAY-A)
  (USES J2A-ATTATCH-A PART-2A-A-1)
  (AT PART-2A-A-0 TRAY-A)
  (USES J2A-ATTATCH-A PART-2A-A-0)
  (DEPENDS J2A-INSERT-GASKET J2A-ATTATCH-A)
  (JOB-AVAILABLE-AT J2A-ATTATCH-A TABLE1)
  (DEPENDS NOTHING-DONE J2A-INSERT-GASKET)
  (JOB-AVAILABLE-AT J2A-INSERT-GASKET GASKET-MACHINE)
  (DEPENDS J2B-ATTATCH-C J2B-SCREW-C)
  (JOB-AVAILABLE-AT J2B-SCREW-C SCREW-MACHINE-C)
  (AT PART-2B-C-11 TRAY-C)
  (USES J2B-ATTATCH-C PART-2B-C-11)
  (AT PART-2B-C-10 TRAY-C)
  (USES J2B-ATTATCH-C PART-2B-C-10)
  (AT PART-2B-C-9 TRAY-C)
  (USES J2B-ATTATCH-C PART-2B-C-9)
  (AT PART-2B-C-8 TRAY-C)
  (USES J2B-ATTATCH-C PART-2B-C-8)
  (AT PART-2B-C-7 TRAY-C)
  (USES J2B-ATTATCH-C PART-2B-C-7)
  (AT PART-2B-C-6 TRAY-C)
  (USES J2B-ATTATCH-C PART-2B-C-6)
  (AT PART-2B-C-5 TRAY-C)
  (USES J2B-ATTATCH-C PART-2B-C-5)
  (AT PART-2B-C-4 TRAY-C)
  (USES J2B-ATTATCH-C PART-2B-C-4)
  (AT PART-2B-C-3 TRAY-C)
  (USES J2B-ATTATCH-C PART-2B-C-3)
  (AT PART-2B-C-2 TRAY-C)
  (USES J2B-ATTATCH-C PART-2B-C-2)
  (AT PART-2B-C-1 TRAY-C)
  (USES J2B-ATTATCH-C PART-2B-C-1)
  (AT PART-2B-C-0 TRAY-C)
  (USES J2B-ATTATCH-C PART-2B-C-0)
  (DEPENDS J2B-ATTATCH-B J2B-ATTATCH-C)
  (JOB-AVAILABLE-AT J2B-ATTATCH-C TABLE1)
  (AT PART-2B-B-11 TRAY-B)
  (USES J2B-ATTATCH-B PART-2B-B-11)
  (AT PART-2B-B-10 TRAY-B)
  (USES J2B-ATTATCH-B PART-2B-B-10)
  (AT PART-2B-B-9 TRAY-B)
  (USES J2B-ATTATCH-B PART-2B-B-9)
  (AT PART-2B-B-8 TRAY-B)
  (USES J2B-ATTATCH-B PART-2B-B-8)
  (AT PART-2B-B-7 TRAY-B)
  (USES J2B-ATTATCH-B PART-2B-B-7)
  (AT PART-2B-B-6 TRAY-B)
  (USES J2B-ATTATCH-B PART-2B-B-6)
  (AT PART-2B-B-5 TRAY-B)
  (USES J2B-ATTATCH-B PART-2B-B-5)
  (AT PART-2B-B-4 TRAY-B)
  (USES J2B-ATTATCH-B PART-2B-B-4)
  (AT PART-2B-B-3 TRAY-B)
  (USES J2B-ATTATCH-B PART-2B-B-3)
  (AT PART-2B-B-2 TRAY-B)
  (USES J2B-ATTATCH-B PART-2B-B-2)
  (AT PART-2B-B-1 TRAY-B)
  (USES J2B-ATTATCH-B PART-2B-B-1)
  (AT PART-2B-B-0 TRAY-B)
  (USES J2B-ATTATCH-B PART-2B-B-0)
  (DEPENDS J2B-SCREW-A J2B-ATTATCH-B)
  (JOB-AVAILABLE-AT J2B-ATTATCH-B TABLE1)
  (DEPENDS J2B-ATTATCH-A J2B-SCREW-A)
  (JOB-AVAILABLE-AT J2B-SCREW-A SCREW-MACHINE-A)
  (AT PART-2B-A-11 TRAY-A)
  (USES J2B-ATTATCH-A PART-2B-A-11)
  (AT PART-2B-A-10 TRAY-A)
  (USES J2B-ATTATCH-A PART-2B-A-10)
  (AT PART-2B-A-9 TRAY-A)
  (USES J2B-ATTATCH-A PART-2B-A-9)
  (AT PART-2B-A-8 TRAY-A)
  (USES J2B-ATTATCH-A PART-2B-A-8)
  (AT PART-2B-A-7 TRAY-A)
  (USES J2B-ATTATCH-A PART-2B-A-7)
  (AT PART-2B-A-6 TRAY-A)
  (USES J2B-ATTATCH-A PART-2B-A-6)
  (AT PART-2B-A-5 TRAY-A)
  (USES J2B-ATTATCH-A PART-2B-A-5)
  (AT PART-2B-A-4 TRAY-A)
  (USES J2B-ATTATCH-A PART-2B-A-4)
  (AT PART-2B-A-3 TRAY-A)
  (USES J2B-ATTATCH-A PART-2B-A-3)
  (AT PART-2B-A-2 TRAY-A)
  (USES J2B-ATTATCH-A PART-2B-A-2)
  (AT PART-2B-A-1 TRAY-A)
  (USES J2B-ATTATCH-A PART-2B-A-1)
  (AT PART-2B-A-0 TRAY-A)
  (USES J2B-ATTATCH-A PART-2B-A-0)
  (DEPENDS NOTHING-DONE J2B-ATTATCH-A)
  (JOB-AVAILABLE-AT J2B-ATTATCH-A TABLE-IN)
  (COMPONENT-BASE PART-2A-A-0 BASE-2A-0)
  (COMPONENT-BASE PART-2A-A-1 BASE-2A-1)
  (COMPONENT-BASE PART-2A-A-2 BASE-2A-2)
  (COMPONENT-BASE PART-2A-A-3 BASE-2A-3)
  (COMPONENT-BASE PART-2A-A-4 BASE-2A-4)
  (COMPONENT-BASE PART-2A-A-5 BASE-2A-5)
  (COMPONENT-BASE PART-2A-A-6 BASE-2A-6)
  (COMPONENT-BASE PART-2A-A-7 BASE-2A-7)
  (COMPONENT-BASE PART-2A-A-8 BASE-2A-8)
  (COMPONENT-BASE PART-2A-A-9 BASE-2A-9)
  (COMPONENT-BASE PART-2A-A-10 BASE-2A-10)
  (COMPONENT-BASE PART-2A-A-11 BASE-2A-11)
  (COMPONENT-BASE PART-2A-B-0 BASE-2A-0)
  (COMPONENT-BASE PART-2A-B-1 BASE-2A-1)
  (COMPONENT-BASE PART-2A-B-2 BASE-2A-2)
  (COMPONENT-BASE PART-2A-B-3 BASE-2A-3)
  (COMPONENT-BASE PART-2A-B-4 BASE-2A-4)
  (COMPONENT-BASE PART-2A-B-5 BASE-2A-5)
  (COMPONENT-BASE PART-2A-B-6 BASE-2A-6)
  (COMPONENT-BASE PART-2A-B-7 BASE-2A-7)
  (COMPONENT-BASE PART-2A-B-8 BASE-2A-8)
  (COMPONENT-BASE PART-2A-B-9 BASE-2A-9)
  (COMPONENT-BASE PART-2A-B-10 BASE-2A-10)
  (COMPONENT-BASE PART-2A-B-11 BASE-2A-11)
  (COMPONENT-BASE PART-2A-C-0 BASE-2A-0)
  (COMPONENT-BASE PART-2A-C-1 BASE-2A-1)
  (COMPONENT-BASE PART-2A-C-2 BASE-2A-2)
  (COMPONENT-BASE PART-2A-C-3 BASE-2A-3)
  (COMPONENT-BASE PART-2A-C-4 BASE-2A-4)
  (COMPONENT-BASE PART-2A-C-5 BASE-2A-5)
  (COMPONENT-BASE PART-2A-C-6 BASE-2A-6)
  (COMPONENT-BASE PART-2A-C-7 BASE-2A-7)
  (COMPONENT-BASE PART-2A-C-8 BASE-2A-8)
  (COMPONENT-BASE PART-2A-C-9 BASE-2A-9)
  (COMPONENT-BASE PART-2A-C-10 BASE-2A-10)
  (COMPONENT-BASE PART-2A-C-11 BASE-2A-11)
  (COMPONENT-BASE PART-2B-A-0 BASE-2B-0)
  (COMPONENT-BASE PART-2B-A-1 BASE-2B-1)
  (COMPONENT-BASE PART-2B-A-2 BASE-2B-2)
  (COMPONENT-BASE PART-2B-A-3 BASE-2B-3)
  (COMPONENT-BASE PART-2B-A-4 BASE-2B-4)
  (COMPONENT-BASE PART-2B-A-5 BASE-2B-5)
  (COMPONENT-BASE PART-2B-A-6 BASE-2B-6)
  (COMPONENT-BASE PART-2B-A-7 BASE-2B-7)
  (COMPONENT-BASE PART-2B-A-8 BASE-2B-8)
  (COMPONENT-BASE PART-2B-A-9 BASE-2B-9)
  (COMPONENT-BASE PART-2B-A-10 BASE-2B-10)
  (COMPONENT-BASE PART-2B-A-11 BASE-2B-11)
  (COMPONENT-BASE PART-2B-B-0 BASE-2B-0)
  (COMPONENT-BASE PART-2B-B-1 BASE-2B-1)
  (COMPONENT-BASE PART-2B-B-2 BASE-2B-2)
  (COMPONENT-BASE PART-2B-B-3 BASE-2B-3)
  (COMPONENT-BASE PART-2B-B-4 BASE-2B-4)
  (COMPONENT-BASE PART-2B-B-5 BASE-2B-5)
  (COMPONENT-BASE PART-2B-B-6 BASE-2B-6)
  (COMPONENT-BASE PART-2B-B-7 BASE-2B-7)
  (COMPONENT-BASE PART-2B-B-8 BASE-2B-8)
  (COMPONENT-BASE PART-2B-B-9 BASE-2B-9)
  (COMPONENT-BASE PART-2B-B-10 BASE-2B-10)
  (COMPONENT-BASE PART-2B-B-11 BASE-2B-11)
  (COMPONENT-BASE PART-2B-C-0 BASE-2B-0)
  (COMPONENT-BASE PART-2B-C-1 BASE-2B-1)
  (COMPONENT-BASE PART-2B-C-2 BASE-2B-2)
  (COMPONENT-BASE PART-2B-C-3 BASE-2B-3)
  (COMPONENT-BASE PART-2B-C-4 BASE-2B-4)
  (COMPONENT-BASE PART-2B-C-5 BASE-2B-5)
  (COMPONENT-BASE PART-2B-C-6 BASE-2B-6)
  (COMPONENT-BASE PART-2B-C-7 BASE-2B-7)
  (COMPONENT-BASE PART-2B-C-8 BASE-2B-8)
  (COMPONENT-BASE PART-2B-C-9 BASE-2B-9)
  (COMPONENT-BASE PART-2B-C-10 BASE-2B-10)
  (COMPONENT-BASE PART-2B-C-11 BASE-2B-11)
  (AT BASE-2A-0 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2A-0)
  (AT BASE-2A-1 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2A-1)
  (AT BASE-2A-2 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2A-2)
  (AT BASE-2A-3 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2A-3)
  (AT BASE-2A-4 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2A-4)
  (AT BASE-2A-5 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2A-5)
  (AT BASE-2A-6 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2A-6)
  (AT BASE-2A-7 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2A-7)
  (AT BASE-2A-8 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2A-8)
  (AT BASE-2A-9 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2A-9)
  (AT BASE-2A-10 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2A-10)
  (AT BASE-2A-11 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2A-11)
  (AT BASE-2B-0 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2B-0)
  (AT BASE-2B-1 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2B-1)
  (AT BASE-2B-2 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2B-2)
  (AT BASE-2B-3 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2B-3)
  (AT BASE-2B-4 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2B-4)
  (AT BASE-2B-5 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2B-5)
  (AT BASE-2B-6 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2B-6)
  (AT BASE-2B-7 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2B-7)
  (AT BASE-2B-8 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2B-8)
  (AT BASE-2B-9 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2B-9)
  (AT BASE-2B-10 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2B-10)
  (AT BASE-2B-11 CARRY-IN)
  (FINISHED NOTHING-DONE BASE-2B-11)
  (NOT-FINISHED J2A-INSERT-GASKET BASE-2A-0)
  (NOT-FINISHED J2A-ATTATCH-A BASE-2A-0)
  (NOT-FINISHED J2A-SCREW-A BASE-2A-0)
  (NOT-FINISHED J2A-OIL-CYLINDER BASE-2A-0)
  (NOT-FINISHED J2A-ATTATCH-B BASE-2A-0)
  (NOT-FINISHED J2A-ATTATCH-C BASE-2A-0)
  (NOT-FINISHED J2A-SCREW-C BASE-2A-0)
  (NOT-FINISHED J2A-INSPECT-BASE BASE-2A-0)
  (NOT-FINISHED J2A-INSERT-GASKET BASE-2A-1)
  (NOT-FINISHED J2A-ATTATCH-A BASE-2A-1)
  (NOT-FINISHED J2A-SCREW-A BASE-2A-1)
  (NOT-FINISHED J2A-OIL-CYLINDER BASE-2A-1)
  (NOT-FINISHED J2A-ATTATCH-B BASE-2A-1)
  (NOT-FINISHED J2A-ATTATCH-C BASE-2A-1)
  (NOT-FINISHED J2A-SCREW-C BASE-2A-1)
  (NOT-FINISHED J2A-INSPECT-BASE BASE-2A-1)
  (NOT-FINISHED J2A-INSERT-GASKET BASE-2A-2)
  (NOT-FINISHED J2A-ATTATCH-A BASE-2A-2)
  (NOT-FINISHED J2A-SCREW-A BASE-2A-2)
  (NOT-FINISHED J2A-OIL-CYLINDER BASE-2A-2)
  (NOT-FINISHED J2A-ATTATCH-B BASE-2A-2)
  (NOT-FINISHED J2A-ATTATCH-C BASE-2A-2)
  (NOT-FINISHED J2A-SCREW-C BASE-2A-2)
  (NOT-FINISHED J2A-INSPECT-BASE BASE-2A-2)
  (NOT-FINISHED J2A-INSERT-GASKET BASE-2A-3)
  (NOT-FINISHED J2A-ATTATCH-A BASE-2A-3)
  (NOT-FINISHED J2A-SCREW-A BASE-2A-3)
  (NOT-FINISHED J2A-OIL-CYLINDER BASE-2A-3)
  (NOT-FINISHED J2A-ATTATCH-B BASE-2A-3)
  (NOT-FINISHED J2A-ATTATCH-C BASE-2A-3)
  (NOT-FINISHED J2A-SCREW-C BASE-2A-3)
  (NOT-FINISHED J2A-INSPECT-BASE BASE-2A-3)
  (NOT-FINISHED J2A-INSERT-GASKET BASE-2A-4)
  (NOT-FINISHED J2A-ATTATCH-A BASE-2A-4)
  (NOT-FINISHED J2A-SCREW-A BASE-2A-4)
  (NOT-FINISHED J2A-OIL-CYLINDER BASE-2A-4)
  (NOT-FINISHED J2A-ATTATCH-B BASE-2A-4)
  (NOT-FINISHED J2A-ATTATCH-C BASE-2A-4)
  (NOT-FINISHED J2A-SCREW-C BASE-2A-4)
  (NOT-FINISHED J2A-INSPECT-BASE BASE-2A-4)
  (NOT-FINISHED J2A-INSERT-GASKET BASE-2A-5)
  (NOT-FINISHED J2A-ATTATCH-A BASE-2A-5)
  (NOT-FINISHED J2A-SCREW-A BASE-2A-5)
  (NOT-FINISHED J2A-OIL-CYLINDER BASE-2A-5)
  (NOT-FINISHED J2A-ATTATCH-B BASE-2A-5)
  (NOT-FINISHED J2A-ATTATCH-C BASE-2A-5)
  (NOT-FINISHED J2A-SCREW-C BASE-2A-5)
  (NOT-FINISHED J2A-INSPECT-BASE BASE-2A-5)
  (NOT-FINISHED J2A-INSERT-GASKET BASE-2A-6)
  (NOT-FINISHED J2A-ATTATCH-A BASE-2A-6)
  (NOT-FINISHED J2A-SCREW-A BASE-2A-6)
  (NOT-FINISHED J2A-OIL-CYLINDER BASE-2A-6)
  (NOT-FINISHED J2A-ATTATCH-B BASE-2A-6)
  (NOT-FINISHED J2A-ATTATCH-C BASE-2A-6)
  (NOT-FINISHED J2A-SCREW-C BASE-2A-6)
  (NOT-FINISHED J2A-INSPECT-BASE BASE-2A-6)
  (NOT-FINISHED J2A-INSERT-GASKET BASE-2A-7)
  (NOT-FINISHED J2A-ATTATCH-A BASE-2A-7)
  (NOT-FINISHED J2A-SCREW-A BASE-2A-7)
  (NOT-FINISHED J2A-OIL-CYLINDER BASE-2A-7)
  (NOT-FINISHED J2A-ATTATCH-B BASE-2A-7)
  (NOT-FINISHED J2A-ATTATCH-C BASE-2A-7)
  (NOT-FINISHED J2A-SCREW-C BASE-2A-7)
  (NOT-FINISHED J2A-INSPECT-BASE BASE-2A-7)
  (NOT-FINISHED J2A-INSERT-GASKET BASE-2A-8)
  (NOT-FINISHED J2A-ATTATCH-A BASE-2A-8)
  (NOT-FINISHED J2A-SCREW-A BASE-2A-8)
  (NOT-FINISHED J2A-OIL-CYLINDER BASE-2A-8)
  (NOT-FINISHED J2A-ATTATCH-B BASE-2A-8)
  (NOT-FINISHED J2A-ATTATCH-C BASE-2A-8)
  (NOT-FINISHED J2A-SCREW-C BASE-2A-8)
  (NOT-FINISHED J2A-INSPECT-BASE BASE-2A-8)
  (NOT-FINISHED J2A-INSERT-GASKET BASE-2A-9)
  (NOT-FINISHED J2A-ATTATCH-A BASE-2A-9)
  (NOT-FINISHED J2A-SCREW-A BASE-2A-9)
  (NOT-FINISHED J2A-OIL-CYLINDER BASE-2A-9)
  (NOT-FINISHED J2A-ATTATCH-B BASE-2A-9)
  (NOT-FINISHED J2A-ATTATCH-C BASE-2A-9)
  (NOT-FINISHED J2A-SCREW-C BASE-2A-9)
  (NOT-FINISHED J2A-INSPECT-BASE BASE-2A-9)
  (NOT-FINISHED J2A-INSERT-GASKET BASE-2A-10)
  (NOT-FINISHED J2A-ATTATCH-A BASE-2A-10)
  (NOT-FINISHED J2A-SCREW-A BASE-2A-10)
  (NOT-FINISHED J2A-OIL-CYLINDER BASE-2A-10)
  (NOT-FINISHED J2A-ATTATCH-B BASE-2A-10)
  (NOT-FINISHED J2A-ATTATCH-C BASE-2A-10)
  (NOT-FINISHED J2A-SCREW-C BASE-2A-10)
  (NOT-FINISHED J2A-INSPECT-BASE BASE-2A-10)
  (NOT-FINISHED J2A-INSERT-GASKET BASE-2A-11)
  (NOT-FINISHED J2A-ATTATCH-A BASE-2A-11)
  (NOT-FINISHED J2A-SCREW-A BASE-2A-11)
  (NOT-FINISHED J2A-OIL-CYLINDER BASE-2A-11)
  (NOT-FINISHED J2A-ATTATCH-B BASE-2A-11)
  (NOT-FINISHED J2A-ATTATCH-C BASE-2A-11)
  (NOT-FINISHED J2A-SCREW-C BASE-2A-11)
  (NOT-FINISHED J2A-INSPECT-BASE BASE-2A-11)
  (NOT-FINISHED J2B-ATTATCH-A BASE-2B-0)
  (NOT-FINISHED J2B-SCREW-A BASE-2B-0)
  (NOT-FINISHED J2B-ATTATCH-B BASE-2B-0)
  (NOT-FINISHED J2B-ATTATCH-C BASE-2B-0)
  (NOT-FINISHED J2B-SCREW-C BASE-2B-0)
  (NOT-FINISHED J2B-ATTATCH-A BASE-2B-1)
  (NOT-FINISHED J2B-SCREW-A BASE-2B-1)
  (NOT-FINISHED J2B-ATTATCH-B BASE-2B-1)
  (NOT-FINISHED J2B-ATTATCH-C BASE-2B-1)
  (NOT-FINISHED J2B-SCREW-C BASE-2B-1)
  (NOT-FINISHED J2B-ATTATCH-A BASE-2B-2)
  (NOT-FINISHED J2B-SCREW-A BASE-2B-2)
  (NOT-FINISHED J2B-ATTATCH-B BASE-2B-2)
  (NOT-FINISHED J2B-ATTATCH-C BASE-2B-2)
  (NOT-FINISHED J2B-SCREW-C BASE-2B-2)
  (NOT-FINISHED J2B-ATTATCH-A BASE-2B-3)
  (NOT-FINISHED J2B-SCREW-A BASE-2B-3)
  (NOT-FINISHED J2B-ATTATCH-B BASE-2B-3)
  (NOT-FINISHED J2B-ATTATCH-C BASE-2B-3)
  (NOT-FINISHED J2B-SCREW-C BASE-2B-3)
  (NOT-FINISHED J2B-ATTATCH-A BASE-2B-4)
  (NOT-FINISHED J2B-SCREW-A BASE-2B-4)
  (NOT-FINISHED J2B-ATTATCH-B BASE-2B-4)
  (NOT-FINISHED J2B-ATTATCH-C BASE-2B-4)
  (NOT-FINISHED J2B-SCREW-C BASE-2B-4)
  (NOT-FINISHED J2B-ATTATCH-A BASE-2B-5)
  (NOT-FINISHED J2B-SCREW-A BASE-2B-5)
  (NOT-FINISHED J2B-ATTATCH-B BASE-2B-5)
  (NOT-FINISHED J2B-ATTATCH-C BASE-2B-5)
  (NOT-FINISHED J2B-SCREW-C BASE-2B-5)
  (NOT-FINISHED J2B-ATTATCH-A BASE-2B-6)
  (NOT-FINISHED J2B-SCREW-A BASE-2B-6)
  (NOT-FINISHED J2B-ATTATCH-B BASE-2B-6)
  (NOT-FINISHED J2B-ATTATCH-C BASE-2B-6)
  (NOT-FINISHED J2B-SCREW-C BASE-2B-6)
  (NOT-FINISHED J2B-ATTATCH-A BASE-2B-7)
  (NOT-FINISHED J2B-SCREW-A BASE-2B-7)
  (NOT-FINISHED J2B-ATTATCH-B BASE-2B-7)
  (NOT-FINISHED J2B-ATTATCH-C BASE-2B-7)
  (NOT-FINISHED J2B-SCREW-C BASE-2B-7)
  (NOT-FINISHED J2B-ATTATCH-A BASE-2B-8)
  (NOT-FINISHED J2B-SCREW-A BASE-2B-8)
  (NOT-FINISHED J2B-ATTATCH-B BASE-2B-8)
  (NOT-FINISHED J2B-ATTATCH-C BASE-2B-8)
  (NOT-FINISHED J2B-SCREW-C BASE-2B-8)
  (NOT-FINISHED J2B-ATTATCH-A BASE-2B-9)
  (NOT-FINISHED J2B-SCREW-A BASE-2B-9)
  (NOT-FINISHED J2B-ATTATCH-B BASE-2B-9)
  (NOT-FINISHED J2B-ATTATCH-C BASE-2B-9)
  (NOT-FINISHED J2B-SCREW-C BASE-2B-9)
  (NOT-FINISHED J2B-ATTATCH-A BASE-2B-10)
  (NOT-FINISHED J2B-SCREW-A BASE-2B-10)
  (NOT-FINISHED J2B-ATTATCH-B BASE-2B-10)
  (NOT-FINISHED J2B-ATTATCH-C BASE-2B-10)
  (NOT-FINISHED J2B-SCREW-C BASE-2B-10)
  (NOT-FINISHED J2B-ATTATCH-A BASE-2B-11)
  (NOT-FINISHED J2B-SCREW-A BASE-2B-11)
  (NOT-FINISHED J2B-ATTATCH-B BASE-2B-11)
  (NOT-FINISHED J2B-ATTATCH-C BASE-2B-11)
  (NOT-FINISHED J2B-SCREW-C BASE-2B-11)
  (FREE ARM1)
  (AT ARM1 TRAY-A)
  (ARM-PRESENT TRAY-A)
  (FREE ARM2)
  (AT ARM2 OILING-MACHINE)
  (ARM-PRESENT OILING-MACHINE)
  (NOT-ARM-PRESENT TABLE-OUT)
  (NOT-ARM-PRESENT INSPECTION-MACHINE)
  (NOT-ARM-PRESENT SCREW-MACHINE-C)
  (NOT-ARM-PRESENT SCREW-MACHINE-A)
  (NOT-ARM-PRESENT GASKET-MACHINE)
  (NOT-ARM-PRESENT TABLE2)
  (NOT-ARM-PRESENT TABLE1)
  (NOT-ARM-PRESENT TRAY-C)
  (NOT-ARM-PRESENT TRAY-B)
  (NOT-ARM-PRESENT TABLE-IN)
  (NOT-BASE-PRESENT TABLE-IN)
  (NOT-BASE-PRESENT TRAY-A)
  (NOT-BASE-PRESENT TRAY-B)
  (NOT-BASE-PRESENT TRAY-C)
  (NOT-BASE-PRESENT TABLE1)
  (NOT-BASE-PRESENT TABLE2)
  (NOT-BASE-PRESENT GASKET-MACHINE)
  (NOT-BASE-PRESENT SCREW-MACHINE-A)
  (NOT-BASE-PRESENT OILING-MACHINE)
  (NOT-BASE-PRESENT SCREW-MACHINE-C)
  (NOT-BASE-PRESENT INSPECTION-MACHINE)
  (NOT-BASE-PRESENT TABLE-OUT))
 (:GOAL
  (AND (AT BASE-2A-0 CARRY-OUT) (FINISHED J2A-INSPECT-BASE BASE-2A-0)
   (AT BASE-2A-1 CARRY-OUT) (FINISHED J2A-INSPECT-BASE BASE-2A-1)
   (AT BASE-2A-2 CARRY-OUT) (FINISHED J2A-INSPECT-BASE BASE-2A-2)
   (AT BASE-2A-3 CARRY-OUT) (FINISHED J2A-INSPECT-BASE BASE-2A-3)
   (AT BASE-2A-4 CARRY-OUT) (FINISHED J2A-INSPECT-BASE BASE-2A-4)
   (AT BASE-2A-5 CARRY-OUT) (FINISHED J2A-INSPECT-BASE BASE-2A-5)
   (AT BASE-2A-6 CARRY-OUT) (FINISHED J2A-INSPECT-BASE BASE-2A-6)
   (AT BASE-2A-7 CARRY-OUT) (FINISHED J2A-INSPECT-BASE BASE-2A-7)
   (AT BASE-2A-8 CARRY-OUT) (FINISHED J2A-INSPECT-BASE BASE-2A-8)
   (AT BASE-2A-9 CARRY-OUT) (FINISHED J2A-INSPECT-BASE BASE-2A-9)
   (AT BASE-2A-10 CARRY-OUT) (FINISHED J2A-INSPECT-BASE BASE-2A-10)
   (AT BASE-2A-11 CARRY-OUT) (FINISHED J2A-INSPECT-BASE BASE-2A-11)
   (AT BASE-2B-0 CARRY-OUT) (FINISHED J2B-SCREW-C BASE-2B-0)
   (AT BASE-2B-1 CARRY-OUT) (FINISHED J2B-SCREW-C BASE-2B-1)
   (AT BASE-2B-2 CARRY-OUT) (FINISHED J2B-SCREW-C BASE-2B-2)
   (AT BASE-2B-3 CARRY-OUT) (FINISHED J2B-SCREW-C BASE-2B-3)
   (AT BASE-2B-4 CARRY-OUT) (FINISHED J2B-SCREW-C BASE-2B-4)
   (AT BASE-2B-5 CARRY-OUT) (FINISHED J2B-SCREW-C BASE-2B-5)
   (AT BASE-2B-6 CARRY-OUT) (FINISHED J2B-SCREW-C BASE-2B-6)
   (AT BASE-2B-7 CARRY-OUT) (FINISHED J2B-SCREW-C BASE-2B-7)
   (AT BASE-2B-8 CARRY-OUT) (FINISHED J2B-SCREW-C BASE-2B-8)
   (AT BASE-2B-9 CARRY-OUT) (FINISHED J2B-SCREW-C BASE-2B-9)
   (AT BASE-2B-10 CARRY-OUT) (FINISHED J2B-SCREW-C BASE-2B-10)
   (AT BASE-2B-11 CARRY-OUT) (FINISHED J2B-SCREW-C BASE-2B-11))))