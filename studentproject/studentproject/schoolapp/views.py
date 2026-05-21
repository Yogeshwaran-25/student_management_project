from django.shortcuts import render
from .models import Student, Staff, Attendance

def home(request):
    return render(request, "home.html")

def student_login(request):
    context = {}
    if request.method == "POST":
        email = request.POST.get("email")
        password = request.POST.get("password")
        student = Student.objects.filter(email=email, password=password).first()
        if student:
            attendance = Attendance.objects.filter(student=student)
            return render(request, "student_dashboard.html", {"student": student, "attendance": attendance})
        context["error"] = "Invalid student username or password"
    return render(request, "student_login.html", context)

def staff_login(request):
    context = {}
    if request.method == "POST":
        email = request.POST.get("email")
        password = request.POST.get("password")
        staff = Staff.objects.filter(email=email, password=password).first()
        if staff:
            students = Student.objects.all()
            attendance = Attendance.objects.all()
            return render(request, "staff_dashboard.html", {"staff": staff, "students": students, "attendance": attendance})
        context["error"] = "Invalid staff username or password"
    return render(request, "staff_login.html", context)
