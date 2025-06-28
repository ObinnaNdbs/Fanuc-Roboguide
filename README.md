# 🤖 FANUC RoboGuide Automation Series – Complete Industrial Robotics Projects

Welcome to my **FANUC RoboGuide Automation Series**, a full showcase of hands-on industrial robotic simulations using **FANUC HandlingPRO**. This repository contains two major projects that reflect real-world automation logic, control systems, and digital I/O integration. These projects were designed, built, and programmed entirely by me during FANUC's free trial period — huge thanks to **FANUC** for providing access to such a powerful toolset!

---

## 📦 Included Projects

### 1. **Smart Palletizing with Conveyor Sync**

- [Coveyor Pick and Place System](https://github.com/ObinnaNdbs/Fanuc-Roboguide/tree/main/Conveyor%20Pick-and-Place)
![image](https://github.com/user-attachments/assets/74dd1639-8d90-4dd8-a700-26b99552f4a0)

- **Goal:** Simulate a realistic pick-and-place operation with XY palletizing and I/O-controlled conveyors.
- **Features:**
  - Box detection and pickup from a straight conveyor.
  - Tool frame + user frame management.
  - Full XY pallet grid logic (2x2) using PR offsets.
  - Loop control via register `R[2]`.
  - Curved conveyor added for enhanced realism.
  - I/O Digital Output sync with conveyor and part detection.

### 2. **Basketball Dual-Arm Coordinated Motion**

- [BasketBot](https://github.com/ObinnaNdbs/Fanuc-Roboguide/tree/main/BasketBot)
![image](https://github.com/user-attachments/assets/d76bf6ae-9847-4ab3-867c-b1e8a38e3ee3)

- **Goal:** Demonstrate coordinated motion between two FANUC arms to follow a path on a curved surface.
- **Features:**
  - Created a 3D basketball in Onshape and imported it.
  - Calibrated both robots and set up CD pairs.
  - Used `CAD-to-Path` to auto-generate writing trajectory.
  - Set up UFRAMEs, UTOOLs, and PRs for accurate contact control.
  - Verified CD motion by jogging both arms and executing synchronized tasks.
  - Main program controlled call hierarchy and monitored completion status.

---

## 🛠 RoboGuide Tools & Concepts Covered

| Category                   | Tools & Features Used |
|---------------------------|-----------------------|
| **Robot Control**         | TP Programming, Linear/Joint Moves, Registers (R), Position Registers (PR), UTOOL, UFRAME |
| **I/O & Automation**      | Digital I/O (DO/DI), I/O Panel Mapping, I/O-triggered conveyor simulation |
| **Palletizing**           | Place Parts Utility, PR offset calculation, pallet layout grid |
| **Conveyor Sync**         | Motion I/O logic, curved + straight conveyors, timing coordination |
| **Multi-Robot Systems**   | Coordinated Motion (CD_Pairs), multi-group setup, robot calibration |
| **CAD Integration**       | Onshape modeling, CAD-to-Path tool, surface tracing on 3D geometry |
| **Workcell Design**       | Fixtures, Machines, Obstacles, Part Traces, TCP setup |
| **Debugging**             | Step/Run/Hold logic, cycle timers, conditional logic (IF/JMP), program tracing |
| **Simulation Programming**| Program Hierarchy (CALL), LBLs, MESSAGE alerts, WAIT instructions |

---

## 🎓 What I Learned

- Writing full robot programs from scratch using TP
- Managing multi-frame environments with precision
- Automating pick-and-place flows with register-based control
- Using CAD-to-Path for high-fidelity trajectory following
- Simulating production-ready digital signal workflows
- Coordinated motion setup across multiple robot arms
- Debugging real-time robotic behaviors and testing in looped execution
- Designing clean, realistic robotic workcells

---

## 🙏 Special Thanks

A **huge thank you to FANUC** for offering me a **free RoboGuide trial license**, allowing me to explore professional robotics tooling and deepen my automation engineering skills. This opportunity gave me firsthand experience with world-class industrial programming practices and inspired me to pursue more advanced robotic system design.

---

## 📬 Contact

Feel free to reach out if you're interested in industrial robotics, automation engineering, or robotics entree level roles. Let's build the future of automation together!

> *Created by Obinna Ndubuisi*

