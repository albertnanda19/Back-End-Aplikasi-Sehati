# Aplikasi Sehati

## Deskripsi

Aplikasi "Sehati" adalah platform digital yang dirancang untuk memberikan dukungan dan informasi yang komprehensif bagi individu yang hidup berdampingan dengan penyakit kronis. Dengan fokus pada pendekatan holistik, aplikasi ini membantu pengguna dalam mengelola berbagai aspek perawatan diri, khususnya terkait pengobatan.

Fitur utama aplikasi ini adalah memberikan panduan terperinci tentang cara mengelola pengobatan, termasuk pengaturan jadwal minum obat, informasi tentang cara mengatasi efek samping, serta pengingat untuk konsultasi rutin dengan dokter. Semua rekomendasi yang diberikan disesuaikan berdasarkan identitas diri, riwayat penyakit, dan obat yang dikonsumsi oleh pengguna.

## Spesifikasi Teknis

### Teknologi yang Digunakan
- **Bahasa Pemrograman**: Java 23
- **Framework**: Spring Boot 3.4.3
- **Basis Data**: [Sesuaikan dengan basis data yang Anda gunakan, misalnya PostgreSQL, MySQL, dll]
- **Arsitektur**: RESTful API, Microservices

### Persyaratan Sistem
- JDK 23 atau yang lebih baru
- Maven/Gradle untuk manajemen dependensi
- Minimal RAM 2GB (direkomendasikan 4GB)
- Ruang penyimpanan kosong minimal 500MB
- Koneksi internet untuk mengunduh dependensi

## Instalasi dan Pengaturan

### Prasyarat
1. Pastikan Anda telah menginstal JDK 23 atau versi yang lebih baru.
   ```bash
   java --version
   ```

2. Pastikan Anda telah menginstal Maven atau Gradle.
   ```bash
   mvn --version
   # atau
   gradle --version
   ```

3. [Tambahkan prasyarat lain yang diperlukan, misalnya instalasi database, dll]

### Langkah-langkah Instalasi

1. Clone repositori ini ke komputer lokal Anda.
   ```bash
   git clone https://github.com/username/sehati.git
   cd sehati
   ```

2. Konfigurasi properti aplikasi.
   
   Buka file `src/main/resources/application.properties` dan sesuaikan konfigurasi database dan properti lainnya.
   ```properties
   spring.datasource.url=jdbc:postgresql://localhost:5432/sehati
   spring.datasource.username=username
   spring.datasource.password=password
   # Konfigurasi tambahan lainnya
   ```

3. Jalankan aplikasi menggunakan Maven.
   ```bash
   mvn spring-boot:run
   ```
   
   Atau dengan Gradle:
   ```bash
   gradle bootRun
   ```

4. Aplikasi akan berjalan pada `http://localhost:8080` secara default.

## Penggunaan API

### Autentikasi
Aplikasi menggunakan JWT (JSON Web Token) untuk otentikasi. Untuk mengakses endpoint yang dilindungi, Anda perlu mendapatkan token dengan melakukan login terlebih dahulu.

```
POST /api/auth/login
Content-Type: application/json

{
  "username": "username",
  "password": "password"
}
```

<!-- ### Endpoint Utama

#### Profil Pengguna
```
GET /api/users/profile
Authorization: Bearer [token]
```

#### Riwayat Penyakit
```
GET /api/medical/history
Authorization: Bearer [token]
```

#### Informasi Obat
```
GET /api/medications
Authorization: Bearer [token]
```

#### Jadwal Minum Obat
```
GET /api/medications/schedule
Authorization: Bearer [token]
```

#### Rekomendasi Pengelolaan Penyakit
```
GET /api/recommendations
Authorization: Bearer [token]
``` -->

## Struktur Proyek

```
sehati/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/
│   │   │       └── sehati/
│   │   │           ├── config/
│   │   │           ├── controller/
│   │   │           ├── dto/
│   │   │           ├── entity/
│   │   │           ├── exception/
│   │   │           ├── repository/
│   │   │           ├── security/
│   │   │           ├── service/
│   │   │           └── SehatiApplication.java
│   │   └── resources/
│   │       ├── application.properties
│   │       ├── application-dev.properties
│   │       └── application-prod.properties
│   └── test/
│       └── java/
│           └── com/
│               └── sehati/
│                   ├── controller/
│                   ├── service/
│                   └── repository/
├── pom.xml
└── README.md
```

## Pengembangan

### Menjalankan Tes
```bash
mvn test
```

### Build Proyek
```bash
mvn clean package
```

### Menjalankan dengan Profil Tertentu
```bash
mvn spring-boot:run -Dspring-boot.run.profiles=dev
```

<!-- ## Deployment

### Dengan Docker
1. Build Docker image:
   ```bash
   docker build -t sehati .
   ```

2. Jalankan container:
   ```bash
   docker run -p 8080:8080 sehati
   ```

### Dengan Kubernetes
Aplikasi dapat di-deploy menggunakan Kubernetes. Berkas konfigurasi Kubernetes tersedia di direktori `kubernetes/`.

## Pemeliharaan dan Pembaruan

### Pembaruan Dependensi
Secara berkala periksa dan perbarui dependensi untuk memastikan keamanan dan kinerja yang optimal.

```bash
mvn versions:display-dependency-updates
mvn versions:use-latest-versions
```

### Pengelolaan Database
Untuk migrasi database, aplikasi menggunakan [Flyway/Liquibase]. Anda dapat menjalankan migrasi dengan perintah:

```bash
mvn flyway:migrate
# atau
mvn liquibase:update
```

## Kontribusi
Kami sangat mengapresiasi kontribusi dari komunitas. Untuk berkontribusi pada proyek ini, silakan ikuti langkah-langkah berikut:

1. Fork repositori ini
2. Buat branch fitur baru (`git checkout -b fitur-baru`)
3. Commit perubahan Anda (`git commit -am 'Menambahkan fitur baru'`)
4. Push ke branch (`git push origin fitur-baru`)
5. Buat Pull Request -->

## Lisensi
[Sesuaikan dengan lisensi yang Anda gunakan, misalnya MIT, Apache 2.0, dll]

## Kontak
Untuk pertanyaan atau dukungan, silakan hubungi tim pengembang di [email@sehati.com].