# התאמת הזמנות בין מערכות (Booking Reconciliation)

## מטרה
זיהוי אי-התאמות בהזמנות בין שלוש מערכות:
- **מדיצי** (DB פנימי) — מקור האמת לרכישות ומכירות חדרים
- **Innstant** (API חיצוני) — פלטפורמת הזמנות (Source=1)
- **Hotel.Tools / Zenith** (Channel Manager) — ניהול Reservations

## מה הכלי מזהה
- הזמנות שקיימות במדיצי אך לא ב-Innstant
- הזמנות שנמכרו (IsSold) ללא Reservation תואמת ב-Zenith
- Reservations יתומות ב-Zenith ללא הזמנה תואמת
- פערי מחיר מעל 5% בין המערכות
- סטטוס סותר — בוטל ב-Innstant אך פעיל במדיצי

## איך זה עובד
1. שואל את ה-DB של מדיצי על הזמנות אחרונות
2. מאמת כל הזמנה Innstant דרך ה-API
3. משווה הזמנות שנמכרו ל-Reservations ב-Zenith
4. נכנס דרך דפדפן (agent-browser) ל-B2B Innstant ו-Hotel.Tools לאימות ויזואלי
5. מתריע על כל אי-התאמה דרך Email/Slack/Teams/WhatsApp

## הרצה
- אוטומטית כל שעה (Background Service)
- ידנית דרך הדשבורד (טאב "התאמת הזמנות")
- API: `GET /api/reconciliation/run?hours=24`

## דרישות
- `agent-browser` מותקן: `npm install -g agent-browser && agent-browser install`
- גישה לרשת ל-Innstant API ו-Hotel.Tools
- credentials מוגדרים ב-`appsettings.json` תחת `Reconciliation`
