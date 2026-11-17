IT CLASS MANAGER — GURUHLI TAYMER VA INDIVIDUAL BAHOLASH
========================================================

YANGI ISH TARTIBI
=================
1. Saytga kiring va dars mavzusi, guruh nomi hamda sanani kiriting.
2. “Darsni saqlash” tugmasini bosing.
3. Kerakli stansiyada (Doska / Qog‘oz / Kompyuter) “Guruhga o‘quvchi qo‘shish” tugmasini bosing.
4. Umumiy topshiriqni va umumiy vaqtni belgilang.
5. Ismni yozib “Ro‘yxatga qo‘shish” tugmasini bosing. Shu tartibda istalgancha o‘quvchi qo‘shing. Ismlar ro‘yxatda qoladi; bittasini qo‘shish boshqasini o‘chirmaydi.
6. Barcha o‘quvchilar ro‘yxatda turgach, “Guruh taymerini boshlash” tugmasini bosing. Sayt barcha o‘quvchi yozuvlarini Supabase'ga saqlaydi va bitta umumiy taymerni ishga tushiradi.
7. Taymer tugagach, individual baholash oynasi ochiladi. Birinchi o‘quvchining bahosi va izohini kiriting, “Bahoni saqlash va keyingisi” ni bosing.
8. Shu tariqa har bir o‘quvchini bittalab baholang. Bir o‘quvchining bahosi saqlanganda qolgan o‘quvchilarning yozuvlari o‘chmaydi.
9. Stansiya kartasidagi ro‘yxatda baholanmaganlar “Kutilmoqda”, baholanganlar esa ball bilan ko‘rinadi. “Baholash” tugmasi orqali kutilayotgan o‘quvchini keyin ham alohida baholash, “Tahrirlash” orqali natijasini tuzatish mumkin.
10. Excel tugmasi barcha dars natijalarini va o‘quvchi tahlilini .xlsx faylga chiqaradi.

TAYMERNI BOSHQARISH
===================
- “Pauza” — umumiy taymerni vaqtincha to‘xtatadi.
- “Davom ettirish” — qolgan vaqtdan davom etadi.
- “Taymerni qaytarish” — vaqtni boshidan boshlash uchun qayta sozlaydi.
- “Baholashga o‘tish” — taymer tugashini kutmasdan baholashni boshlaydi.
- Taymer ishlayotgan paytda oynani yopmoqchi bo‘lsangiz, tasdiqlash so‘raladi. O‘quvchilar taymer boshlanishida bulutga saqlangan bo‘ladi; yopilganda ular yo‘qolmaydi. Taymerning qolgan sekundlari sahifa yopilganda saqlanmaydi.

SUPABASE BAZASI
===============
- Ushbu versiya mavjud public.lessons va public.student_tasks jadvallaridan foydalanadi.
- Agar avvalgi SQL setup skriptini muvaffaqiyatli RUN qilgan bo‘lsangiz, qayta RUN qilish shart emas.
- Guruh ichidagi har bir o‘quvchi public.student_tasks jadvalida alohida yozuv sifatida saqlanadi.
- Baza RLS bilan himoyalangan: har bir o‘qituvchi faqat o‘z yozuvlarini ko‘radi.

SUPABASE ULANISHI
=================
config.js faylida Project URL va Publishable key oldindan kiritilgan.
Publishable key brauzerda ishlatilishi mumkin. sb_secret yoki service_role kalitini hech qachon saytga joylamang.

GITHUB / VERCEL YANGILASH
=========================
1. ZIP faylni Extract qiling.
2. GitHub'dagi azer2605/it-class-manager repository'ni oching.
3. Add file → Upload files orqali ZIP ichidagi fayllarni repository bosh papkasiga yuklang va eski fayllar o‘rniga yangilang.
4. Commit changes bosing.
5. Repository Vercel bilan ulangan bo‘lsa, yangi commit avtomatik deploy boshlaydi.
6. Vercel → Deployments bo‘limida yangi deploy “Ready” bo‘lishini kuting.
7. Saytni Ctrl+Shift+R bilan yangilang.

ESLATMA
=======
- SQL sxemasi o‘zgartirilmagan; Supabase'da qo‘shimcha SQL bajarish shart emas.
- Internet aloqasi kerak: ma'lumotlar Supabase bulutida saqlanadi.
- Excel eksporti brauzerda XLSX kutubxonasi yuklanganda ishlaydi.
- Agar yangi fayllar ko‘rinmasa, Vercel deploy yakunlanganini va brauzer keshini tekshiring.
