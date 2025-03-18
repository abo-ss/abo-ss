DOCTYPE html>
<html lang="ar">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>نموذج الحجز</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f8f8;
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 600px;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }
        h1 {
            text-align: center;
        }
        label {
            display: block;
            margin: 10px 0 5px;
        }
        input, select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>نموذج الحجز</h1>
    <form id="booking-form">
        <label for="name">الاسم الكامل:</label>
        <input type="text" id="name" name="name" required>

        <label for="email">البريد الإلكتروني:</label>
        <input type="email" id="email" name="email" required>

        <label for="phone">رقم الهاتف:</label>
        <input type="tel" id="phone" name="phone" required>

        <label for="date">تاريخ الحجز:</label>
        <input type="date" id="date" name="date" required>

        <label for="time">وقت الحجز:</label>
        <select id="time" name="time" required>
            <option value="">اختر الوقت</option>
            <option value="09:00">09:00 صباحاً</option>
            <option value="10:00">10:00 صباحاً</option>
            <option value="11:00">11:00 صباحاً</option>
            <option value="12:00">12:00 ظهراً</option>
            <option value="13:00">01:00 ظهراً</option>
            <option value="14:00">02:00 ظهراً</option>
            <option value="15:00">03:00 ظهراً</option>
        </select>

        <button type="submit">أرسل الطلب</button>
    </form>
</div>

<script>
    document.getElementById('booking-form').addEventListener('submit', function(event) {
        event.preventDefault();
        alert('تم إرسال طلب الحجز بنجاح!');
    });
</script>

</body>
</html>
