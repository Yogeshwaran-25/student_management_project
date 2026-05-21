# 🎓 Student Management Project

A Django and MySQL based web application to manage student records, attendance, and academic information efficiently.

---

## 🛠️ Tech Stack

- **Backend:** Python, Django
- **Database:** MySQL
- **Frontend:** HTML, CSS

---

## 🚀 Getting Started

### 1. Clone the Repository
```bash
git clone https://github.com/Yogeshwaran-25/student_management_project.git
cd student_management_project
```

### 2. Create Virtual Environment
```bash
python -m venv venv

### 3. Setup MySQL Database
- Create a database in MySQL named `student_db`
- Update `settings.py` with your DB credentials:
```python

### 4. Run Migrations
```bash
python manage.py makemigrations
python manage.py migrate
```

### 5. Create Admin User
```bash
python manage.py createsuperuser
```

### 6. Start the Server
```bash
python manage.py runserver
```
Then open: **http://127.0.0.1:8000**

---

<img width="1920" height="1200" alt="Screenshot (108)" src="https://github.com/user-attachments/assets/d36f2372-1002-466f-92e9-f910d77ca7ef" />






## ✨ Features

- Add, edit, delete student records
- Track attendance
- Manage academic information
- Admin dashboard

---

## 📁 Project Structure
student_management_project/
│
├── studentproject/
│   ├── settings.py
│   ├── urls.py
│   └── wsgi.py
│
├── manage.py
└── README.md

---

## 👨‍💻 Author

**Yogeshwaran** — [GitHub](https://github.com/Yogeshwaran-25)
