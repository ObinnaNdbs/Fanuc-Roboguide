# 🤖 BASKETBOT: FANUC Dual-Arm Coordinated Motion with CAD-to-Path & Vision Integration

Welcome to an advanced industrial robotics simulation showcasing a fully coordinated dual-arm system in FANUC RoboGuide. This project demonstrates a synchronized multi-robot workflow featuring pick-and-place, welding tool calibration, iRVision integration, and CAD-to-path execution on a 3D basketball model.

---

## 🛠️ Tools & Software
- **FANUC RoboGuide HandlingPRO**
- **FANUC Teach Pendant Programming**
- **FANUC iRVision System**
- **Onshape CAD**
- **6-Point TCP & UTOOL Calibration**
- **CAD-to-Path Trajectory Generation**

---

## 🧩 Project Components

### 🤖 Robots Used:
- **Robot 1 (Follower)** – Pick/Place Tool ➝ Welding Torch ➝ Writing Pointer
- **Robot 2 (Leader)** – Gripper ➝ Calibration Pointer ➝ Basketball Holder

### 🧱 Fixtures & Models:
- Work Table & Platform
- Central Bracket (Pick-and-Place Target)
- Weldable Metal Pin
- Onshape-generated Calibration Target
- Basketball with Surface Grooves

---

## 📌 Project Phases

### 🔹 Phase 1 – Dual-Arm Pick-and-Place Coordination
- Setup motion groups: GP1 (Follower), GP2 (Leader)
- Created shared platform and grabbable bracket
- Configured EOAT tools and mounted them
- Defined CD Pairing for coordinated movement
- Programmed simultaneous lifting logic

### 🔹 Phase 2 – Welding Tool & iRVision Calibration
- Mounted Gas Welding Nozzle on Robot 1
- Used 6-point TCP method to define UTOOL orientation
- Created calibration target in Onshape and imported to RoboGuide
- Set up and trained iRVision system using 2D camera
- Fine-tuned tool alignment with real-time visual feedback

### 🔹 Phase 3 – CAD-to-Path Writing on Basketball
- Modeled basketball in Onshape with realistic grooves
- Mounted basketball in Robot 2's gripper
- Generated toolpath using CAD-to-Path wizard on basketball surface
- Segmented motion into 9 TP programs + 1 reverse retract path
- Main program used register logic to call homing routines, execute path, and retract

---

## 🧠 Key Concepts Demonstrated
| Concept | Description |
|--------|-------------|
| Coordinated Motion | Multi-group synchronization using CD Pairing |
| Tool Calibration | 6-point TCP setup for welding & pointer tools |
| iRVision Integration | Calibration grid and pixel alignment for real-world accuracy |
| CAD-to-Path | Automatic TP generation from 3D geometry |
| Collision Avoidance | Normals-based path planning with safe tool approach |
| Program Logic | Register-based coordination and sequencing |

---

## 📸 Highlights
- 🟡 Dual-arm synchronized lifting
- 🔧 Accurate welding pose with 6-point tool setup
- 🧠 Vision-trained robot calibration using target mark
- 🏀 Precise CAD-guided writing on a 3D basketball surface

---

## 🏁 Conclusion
This project simulates a real-world, industrial-level robotics application combining vision, path planning, precision tooling, and synchronized control. It serves as a complete demonstration of FANUC RoboGuide's advanced capabilities and would stand out on any robotics or automation engineering portfolio.

---

> For questions or walkthroughs, feel free to open an issue or submit a pull request!
