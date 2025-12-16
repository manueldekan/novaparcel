# 🪐 Exercise – NovaParcel

> This exercise is inspired by the "Awesome Inc" Data Engineering Challenge.  
> Original exercise: [link-to-original-repo]

NovaParcel is an **inter-galactic parcel delivery company** operating across multiple star systems and galaxies.

As part of the **Analytics team**, your role is to help us with the following topics.

---

## 📃 API

We want to provide an API that exposes data from the NovaParcel operational database, which will be used downstream by **Azure Data Factory**.

### 👓 Requirements

- Implement a **REST API** on top of the NovaParcel database  
  *(for example using C#, Python — any language is fine)*
- **Test** the API using a test framework suitable for your chosen language  
- **Containerize** the application (e.g., Docker)  
- Keep your work **versioned** using Git

---

## 📈 Data Warehouse

We want to give our business users the ability to answer questions such as:

- How many parcels are delivered each month?
- Which parcel category generates the most revenue?
- Which region of the universe is our best market?  

### 👓 Requirements

- Design a **dimensional model** capable of answering these questions, and possibly others  
- Implement this dimensional model *(for example using dbt)*  
- Keep your work **versioned** using Git

---

## 🐱‍🏍 Getting Started

The repository contains a `docker-compose` file that starts:

- A **PostgreSQL database** with NovaParcel data  
- **PgAdmin** to explore and manage the database  

By default, PgAdmin is accessible at:  
👉 http://localhost:8080

---

## 📏 Expectations

This exercise is designed to evaluate both your **software development** and **data engineering** skills.

We expect you to demonstrate:

- High-quality code that is maintainable, testable, and deployable  
- Thoughtful design decisions and reasoning  
- Ability to transform data for analytical purposes, including **dimensional modeling** and **data quality checks**

> The tools mentioned are part of our stack. You are free to use alternatives — we value **engineering judgment over tool mastery**.

---

## 👀 How to Share Your Solution

- Create a **private GitHub repository**  
- Publish your solution  
- Invite **`manueldekan`** and **``** as a contributor
