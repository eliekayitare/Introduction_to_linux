# Linux User & Permission Management Project

## 📋 Project Overview
Deployed a secure multi-user Linux environment on AWS for **TechStart Solutions** with 10 team members across backend, frontend, and DevOps roles.

## 🏗️ Infrastructure Setup
- **Instance**: AWS EC2 t3.micro (Ubuntu 22.04 LTS)
- **Security**: SSH key-based authentication only
- **Region**: Rwanda

## 👥 User & Group Structure
**Users Created**: 10
- 3 Backend developers
- 3 Frontend developers  
- 3 DevOps engineers
- 1 Team lead

**Groups Created**: 5
- `backend-dev`, `frontend-dev`, `devops-team`
- `dev-all` (all developers)
- `team-leads` (administrative access)

## 🔧 Key Operations Performed

### User Management
- Created users with `useradd` command
- Set passwords using `chpasswd`
- Assigned primary and secondary groups
- Granted sudo privileges to team leads

### Directory Structure & Permissions