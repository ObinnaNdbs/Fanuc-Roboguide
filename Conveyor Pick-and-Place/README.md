# 📦 Robotic Pick-and-Place with Palletizing & Conveyor Sync
![image](https://github.com/user-attachments/assets/e4bc3330-02fb-45d2-aa2a-490d6d42f3a2)
This project showcases a complete industrial simulation using **FANUC RoboGuide HandlingPRO** to automate a **pick-and-place system with conveyor syncing and XY palletizing logic**. The robot identifies incoming parts on a conveyor, picks them up, and arranges them on a pallet in an optimized XY grid pattern. A curved conveyor was added to enhance realism, and digital I/O logic was implemented to coordinate timing and actuation.

---

## 🛠 Tools & Software Used

- **FANUC RoboGuide (HandlingPRO)**
- **Teach Pendant Programming (TP)**
- **I/O Panel & Digital Signals**
- **Position Registers (PRs)**
- **UFRAMEs & UTOOLs**
- **Palletizing Utility**
- **Conveyor Simulation & Curve Syncing**
- **Workcell Configuration**
- **I/O-Driven Machine Simulation**
- **Robot Controller Programs**

---

## 🧱 Workcell Overview

- **Robot:** FANUC R-2000iC/165F  
- **Gripper:** Custom 2-finger end effector (pneumatic simulated)  
- **Fixtures:** Straight + Curved Conveyor, Pallet  
- **Parts:** Box-shaped product labeled `iPhone`  
- **Flow:** Conveyor → Pick → Pallet XY Slot → Loop  

---

## 🧩 Functional Breakdown

### 1. Workcell Setup
- Created a HandlingPRO workcell with:
  - Robot + Gripper
  - Conveyor (straight & curved)
  - Pallet platform
  - Part geometry (`Part1`)
  - Custom bounding boxes (space check enabled)

### 2. Frame Definitions
- `UTOOL_NUM=1`: Gripper's tool center point (TCP)
- `UFRAME_NUM=0`: World frame for conveyor
- `UFRAME_NUM=1`: Pallet frame for placing items

### 3. Program Hierarchy
```text
📂 MAIN
 ├── CALL DATA_RESET
 ├── CALL PICK_CONVEYOR
 ├── CALL PLACE_PALLET
 └── Loop until R[2:TOTAL COUNT] = 8
 ```

### 4. Pickup Sequence (`PICK_CONVEYOR.TP`)
- Conveyor part sensor sync via I/O
- Wait for part → Move to pick position → Close gripper
- SimPRO I/O-driven part pickup logic

### 5. Placement Sequence (`PLACE_PALLET.TP`)
- Pallet pattern created using the Place Parts tool (2x2 layout)
- Uses Position Register `PR[11]` as dynamic offset
- Linear interpolation used to drop with tool offset
- Calls `DROP.TP` to open gripper

### 6. I/O Control
- **Digital Output DO[1], DO[2]**: Control conveyor start + part detection
- **I/O Panel Mapping** to Machine Link
- Conveyor defined as `Device I/O Controlled`, triggered via TP logic

### 7. Palletizing Logic
- Used FANUC’s built-in pallet utility to:
  - Define 2x2 grid spacing
  - Automatically generate position targets
  - Apply PR-based offset on each iteration

### 8. Loop & Termination
- Counter stored in `R[2]`
- Looped pickup/place until count hits 8
- Timer used to calculate cycle time
- End message: `MESSAGE[PROGRAM END]`

---

## 🎯 Final Output
![Untitledvideo-MadewithClipchamp-ezgif com-video-to-gif-converter (1)](https://github.com/user-attachments/assets/67488eeb-ec29-404a-97d9-8ea54dd411cd)

- Full simulation of:
  - ✅ Inbound conveyor part detection
  - ✅ Robotic pick-up & placement onto pallet
  - ✅ XY logic + realistic curved conveyor motion
- All motions coordinated using joint and linear moves with precision offsets
- Digital I/O ensures realistic synchronization

---

## 🧠 What I Learned

- Robot frame alignment (UFRAME, UTOOL)
- Using TP programming for logic control
- Advanced palletizing workflows
- Simulated automation signals using I/O panel
- Creating professional-grade manufacturing cells in RoboGuide
- Coordinate system control and path planning
- Syncing complex machine motion via digital outputs

---
