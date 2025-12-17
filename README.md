# 🪐 NovaParcel – Data Engineering Exercise

**NovaParcel** is an inter-galactic parcel delivery company operating across multiple star systems and galaxies.

As part of the **Business Intelligence team**, your role is to help us expose operational data and enable analytical use cases for business users.

> This exercise is intentionally open-ended.  
> Some aspects of your solution will be discussed during a follow-up interview.

---

## 📃 Part 1 – API

NovaParcel wants to expose data from its operational PostgreSQL database through a REST API.  
This API will be consumed downstream by an orchestrator hosted on **Azure**, and the application itself is expected to be deployable on Azure.

### 👓 Requirements
- Implement a REST API on top of the NovaParcel PostgreSQL database  
  *(language and framework of your choice: C#, Python, etc.)*
- Decide which data and endpoints to expose
- Test the API using a test framework suitable for your chosen language
- Containerize the application (e.g., Docker)
- Ensure the application can be deployed on Azure
- Keep your work versioned using Git

---

## 📈 Part 2 – Data Warehouse

We want to give our business users the ability to answer questions such as:

- How many parcels are delivered each month?
- Which parcel category generates the most revenue?
- Which product has the highest profit margin?
- Which region of the universe is our best market?

### 👓 Requirements
- Design a dimensional model capable of answering these questions (and possibly others)
- Implement this dimensional model  
  *(for example using dbt, or an equivalent solution)*
- Keep your work versioned using Git

---

## 🚀 Getting Started

The repository contains a `docker-compose.yml` file that starts:

- A PostgreSQL database with NovaParcel data
- PgAdmin to explore and manage the database

By default, PgAdmin is accessible at:  
👉 http://localhost:8080

---

## 📏 Expectations

This exercise is designed to evaluate both your software development and data engineering skills.

We expect you to demonstrate:
- High-quality, maintainable code
- Thoughtful design decisions
- Ability to model and transform data for analytical use cases

The tools mentioned are part of our stack, but you are free to use alternatives.

---

## 👀 How to Share Your Solution

- Create a **private GitHub repository**
- Publish your solution
- Invite the following users as contributors:
  - `manueldekan`
  - `abel83`


>This exercise is inspired by the *Awesome Inc Data Engineering Challenge*.  
>Original exercise: https://github.com/flvndh/awesome-inc
