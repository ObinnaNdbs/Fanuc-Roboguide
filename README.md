# 🤖 FANUC RoboGuide Automation Series – Complete Industrial Robotics Projects

Welcome to my **FANUC RoboGuide Automation Series**, a full showcase of hands-on industrial robotic simulations using **FANUC HandlingPRO**. This repository contains two major projects that reflect real-world automation logic, control systems, and digital I/O integration. These projects were designed, built, and programmed entirely by me during FANUC's free trial period — huge thanks to **FANUC** for providing access to such a powerful toolset!

---

## 📦 Included Projects

### 1. **Smart Palletizing with Conveyor Sync**

- [Coveyor Pick and Place System](https://github.com/ObinnaNdbs/Fanuc-Roboguide/tree/main/Conveyor%20Pick-and-Place)

![Untitledvideo-MadewithClipchamp-ezgif com-video-to-gif-converter (1)](https://github.com/user-attachments/assets/67488eeb-ec29-404a-97d9-8ea54dd411cd)

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

![Untitled video - Made with Clipchamp (1) (1)](https://github.com/user-attachments/assets/a52b0a40-c2c1-47fc-a4a9-b8b800c930db)

![Untitled video - Made with Clipchamp (2) (1)](https://github.com/user-attachments/assets/c5aaf15e-46ff-4076-a0ca-45a11752e705)

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
| **Palletizing**           | Place Parts Utility, PR offset logic, grid-based layout (2x2), dynamic offsets via registers |
| **I/O & Automation**      | Digital I/O (DO/DI), I/O Panel Mapping, I/O-triggered part flow, device-controlled conveyors |
| **Conveyor Sync**         | Straight + curved conveyor setup, motion linking, shared signal coordination |
| **Multi-Robot Systems**   | Coordinated Motion (CD_Pairs), leader/follower control, multi-group sync and jogging |
| **Robot Coordination**    | Jog verification, CD_pair calibration, simultaneous dual-arm execution |
| **Welding Applications**  | Tool frame setup for gas nozzle, weld torch alignment, support for butt, T-joint, weave patterns |
| **Vision Systems**        | iRVision 2D setup, grid calibration (CalGrid 30mm), VMCAL alignment, intro to 3D vision coordination |
| **CAD Integration**       | Onshape modeling, basketball with grooves, CAD-to-Path trajectory generation and reverse path logic |
| **Path Planning**         | Auto TP generation, smooth seam-following, contour matching, CNT blending |
| **Safety & Collision**    | Safety shell configuration, collision zone simulation, bounding boxes, stop-on-entry logic |
| **Workcell Design**       | Structured layout with fixtures, machine links, accurate part and frame placement |
| **Program Structure**     | MAIN program logic, CALL hierarchies, loop control with registers, LBLs, MESSAGE, WAIT |
| **Debugging Techniques**  | Step/run mode, register monitoring, WAIT timing, jog testing, timer-based optimization |
| **Simulation Efficiency** | Realistic part behavior, tool calibration, part spawning logic, auto-repeat cycle flows |

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

