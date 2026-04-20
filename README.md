# Digital Timer with Multiple Intervals (RTL + Verification)

## 📌 Description
This project presents the design and implementation of a Digital Timer using Verilog HDL that supports multiple selectable countdown intervals such as 5s, 10s, 15s, and 20s. The design is verified using simulation and waveform analysis.

## ⚙️ Features
- Multi-interval timer selection (5s, 10s, 15s, 20s)
- Countdown-based timer logic
- Clock divider for real-time 1Hz operation
- Output trigger signal on timer completion
- Reset and enable control support
- Modular RTL design

## 🧠 Architecture
The system is divided into the following modules:
- **Interval Selector** → Selects desired time interval
- **Multiplexer (MUX)** → Maps selection to timer value
- **Clock Divider** → Generates 1Hz signal from high-frequency clock
- **Countdown Logic** → Performs decrement operation
- **Output Control** → Triggers event (LED/Buzzer) when timer completes

## 🔄 Working Flow
1. User selects interval (5s / 10s / 15s / 20s)
2. MUX assigns corresponding countdown value
3. Clock divider generates 1Hz pulse
4. Counter decrements every second
5. When count reaches zero → output is triggered

## 🧪 Verification
- Functional verification done using simulation
- Waveform analysis confirms:
  - Accurate interval timing
  - Correct reset behavior
  - Proper enable/disable functionality
- Tools used:
  - Icarus Verilog
  - GTKWave / DVEWave

## 📊 Results
- Timer correctly triggers output at selected intervals
- No glitches observed in waveform
- Stable transitions between states (IDLE → COUNTING → DONE)

## 📁 Project Structure
- `rtl/` → Verilog design files  
- `tb/` → Testbench files  
- `docs/` → Block diagram and flowchart  
- `results/` → Simulation waveforms  
- `report/` → Project report  

## 🛠️ Tools Used
- Verilog HDL
- Icarus Verilog
- GTKWave / DVEWave
- Linux environment

## 📄 Report
Detailed project report available in the repository.

## 🚀 Applications
- Embedded systems and automation
- Digital alarms and timers
- Industrial control systems
- IoT devices
- Traffic signal timing systems

## 🔮 Future Improvements
- FPGA implementation
- Display interface (7-segment / LCD)
- Real-time clock integration
- Interrupt-based triggering

## 👨‍💻 Contributors
- Pavan
