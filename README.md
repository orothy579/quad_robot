# 🐾 Unitree Go2 RL Simulation Environment

This project sets up a full RL-based development environment for controlling a **Unitree Go2 quadruped robot** using **MuJoCo** and **ROS 2**, inside a Dockerized Ubuntu 22.04 container.

## 🧠 Project Goals

- Develop a reinforcement learning-based control policy for Unitree Go2
- Utilize MuJoCo simulation for safe and fast prototyping
- Bridge simulation and real-world robot behavior (Sim2Real)
- Prepare for a mission-based autonomous quadruped challenge

## 📦 Tech Stack

- OS: Ubuntu 22.04 (via Docker)
- Simulation: [MuJoCo](https://github.com/google-deepmind/mujoco)
- Robot SDK: [Unitree SDK2](https://github.com/unitreerobotics/unitree_sdk2)
- Simulator: [unitree_mujoco](https://github.com/unitreerobotics/unitree_mujoco)
- Middleware: ROS 2 (Humble)
- ML Frameworks: PyTorch, Gymnasium
- IDE: VSCode (with workspace volume binding)

## 🛠 Environment Setup

> MacOS host + Docker container

```bash
# 1. Clone this repository
git clone https://github.com/yourusername/go2-rl-project.git
cd go2-rl-project

# 2. Build and start the container
docker compose up --build -d

# 3. Access the container
docker exec -it go2sim bash
