# 1. בחירת תמונת בסיס של פייתון (Base Image)
FROM python:3.9-slim

# 2. הגדרת תיקיית עבודה בתוך הקונטיינר
WORKDIR /app

# 3. העתקת קובץ הדרישות והתקנתן
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. העתקת קוד ה-app.py לתוך הקונטיינר
COPY app.py .

# 5. חשיפת הפורט עליו רץ ה-Backend (לפי המטלה: 5000)
EXPOSE 5000

# 6. הגדרת משתנה סביבה ריק (יוזן בזמן ההרצה)
ENV OPENWEATHER_API_KEY=""

# 7. הפקודה שמריצה את האפליקציה
CMD ["python", "app.py"]