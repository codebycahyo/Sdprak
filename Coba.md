# Bubble Sort

Array awal: `{3, 5, 2, 7, 4}`

## Pertanyaan 1: Perubahan tiap langkah

Perulangan luar dimulai dari `i=1`, perulangan dalam dari `j=4` turun sampai `j>=i`. Jika `number[j] < number[j-1]`, kedua nilai ditukar.

| No | Nilai i | Nilai j | Perbandingan | Hasil Array |
|----|---------|---------|--------------|-------------|
| 1  | 1 | 4 | 4 < 7, tukar  | 3 5 2 4 7 |
| 2  | 1 | 3 | 4 < 2? tidak  | 3 5 2 4 7 |
| 3  | 1 | 2 | 2 < 5, tukar  | 3 2 5 4 7 |
| 4  | 1 | 1 | 2 < 3, tukar  | 2 3 5 4 7 |
| 5  | 2 | 4 | 7 < 4? tidak  | 2 3 5 4 7 |
| 6  | 2 | 3 | 4 < 5, tukar  | 2 3 4 5 7 |
| 7  | 2 | 2 | 4 < 3? tidak  | 2 3 4 5 7 |
| 8  | 3 | 4 | 7 < 5? tidak  | 2 3 4 5 7 |
| 9  | 3 | 3 | 5 < 4? tidak  | 2 3 4 5 7 |
| 10 | 4 | 4 | 7 < 5? tidak  | 2 3 4 5 7 |

## Jawaban Pertanyaan Lanjutan

1. **Ascending atau descending?**
   Jawaban: **Ascending** (kecil ke besar).

2. **Jumlah iterasi:**
   Jawaban: Perulangan luar berjalan **4 kali** (i = 1 sampai 4). Total perbandingan di perulangan dalam: 4 + 3 + 2 + 1 = **10 kali**, 4 di antaranya menghasilkan pertukaran.

3. **Hasil akhir:**
   Jawaban: **2 3 4 5 7**

4. **Kesimpulan:**

| No  | Kesimpulan |
|-----|------------|
| 1.  | Bubble Sort mengurutkan data dengan membandingkan dua elemen yang bersebelahan, lalu menukarnya jika posisinya salah. |
| 2.  | Pada kode ini, perbandingan dimulai dari belakang (j=4) menuju depan, sehingga nilai terkecil "menggelembung" ke posisi paling kiri di setiap putaran. |
| 3.  | Data `{3,5,2,7,4}` terurut ascending menjadi `{2,3,4,5,7}`. Array sudah terurut setelah i=2, putaran sisanya hanya pengecekan. |
| 4.  | Untuk n data dibutuhkan n-1 putaran luar. Kompleksitasnya O(n²), sehingga kurang efisien untuk data besar. |
