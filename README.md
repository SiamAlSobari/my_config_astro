# 🌌 Siam's AstroNvim Configuration

Selamat datang di konfigurasi **AstroNvim** pribadi saya! Lingkungan Neovim ini dirancang dengan cermat untuk alur kerja pengembangan yang modern, cepat, dan intuitif. Dibangun di atas fondasi kokoh [AstroNvim v5+](https://github.com/AstroNvim/AstroNvim), konfigurasi ini dioptimalkan untuk produktivitas maksimal dengan tetap menjaga estetika yang bersih dan minimalis.

Tujuan utama dari repo ini adalah untuk menciptakan sebuah editor yang "langsung siap pakai" untuk kebutuhan pengembangan saya, terutama dalam ekosistem **Node.js, Python, Rust, dan TypeScript**.

---

## ✨ Filosofi Desain

Konfigurasi ini dibangun dengan beberapa prinsip utama:

- **Kecepatan adalah Kunci**: Waktu startup yang cepat dan responsivitas instan. Semua plugin dan pengaturan dipilih untuk meminimalkan latensi.
- **Keyboard-Driven**: Mengurangi ketergantungan pada mouse dengan pemetaan tombol yang ergonomis dan mudah diingat.
- **Cerdas & Kontekstual**: Integrasi LSP (Language Server Protocol) dan Treesitter yang mendalam untuk _code completion_, diagnostik, dan _syntax highlighting_ yang cerdas.
- **Estetika Fungsional**: Tampilan yang indah tidak boleh mengorbankan fungsionalitas. Antarmuka yang bersih membantu fokus pada kode.

---

## 🚀 Fitur Unggulan

Konfigurasi ini dilengkapi dengan serangkaian fitur yang dirancang untuk meningkatkan pengalaman _coding_ Anda:

- ** Manajemen Plugin Modern**: Menggunakan **lazy.nvim** untuk _lazy-loading_ plugin, memastikan Neovim Anda startet secepat kilat.
- ** Navigasi Super Cepat**:
  - **Telescope.nvim** terintegrasi penuh untuk _fuzzy finding_ file, _buffer_, teks di dalam proyek, dan banyak lagi.
  - _File tree explorer_ yang ramping dengan **Neo-tree**.
- ** Dukungan Bahasa Tingkat Lanjut**:
  - Konfigurasi LSP _out-of-the-box_ untuk **Node.js, Python, Rust, Go, TypeScript**, dan lainnya melalui `mason.nvim`.
  - Analisis kode dan _syntax highlighting_ yang superior berkat **nvim-treesitter**.
- ** Antarmuka Pengguna yang Ditingkatkan**:
  - **Statusline** informatif dengan Lualine.
  - **Bufferline** elegan untuk manajemen tab yang mudah.
  - Dukungan tema yang indah dan konsisten.
- ** Pemetaan Tombol Kustom**:
  - Pintasan keyboard yang intuitif dengan `<Leader>` sebagai tombol utama untuk akses cepat ke berbagai fungsi.
  - Plugin **which-key.nvim** untuk menampilkan petunjuk _keymap_ secara dinamis.
- ** Pengeditan Kode yang Efisien**:
  - Fitur _auto-completion_ canggih dengan `nvim-cmp`.
  - Integrasi Git yang mulus dengan `gitsigns.nvim` dan `lazygit`.

---

## 🛠️ Instalasi

Untuk memulai dengan konfigurasi ini, pastikan Anda telah memenuhi prasyarat berikut.

### Prasyarat

- **Neovim v0.9+**
- **Git**
- **Nerd Font** (misalnya: FiraCode Nerd Font, JetBrainsMono Nerd Font) untuk ikon yang benar.
- **Build tools** yang diperlukan seperti `gcc`, `make`, dan `unzip`.
- **Opsional**: `ripgrep` dan `fd` untuk performa pencarian Telescope yang lebih cepat.

### Langkah-langkah Instalasi

1.  **(Penting)** Cadangkan konfigurasi Neovim Anda yang sudah ada:

    ```bash
    # Cadangkan konfigurasi utama
    mv ~/.config/nvim ~/.config/nvim.bak

    # Cadangkan data, state, dan cache (opsional tapi disarankan)
    mv ~/.local/share/nvim ~/.local/share/nvim.bak
    mv ~/.local/state/nvim ~/.local/state/nvim.bak
    mv ~/.cache/nvim ~/.cache/nvim.bak
    ```

2.  _Clone_ repositori ini ke direktori konfigurasi Neovim Anda:

    ```bash
    git clone [https://github.com/SiamAlSobari/my_config_astro.git](https://github.com/SiamAlSobari/my_config_astro.git) ~/.config/nvim
    ```

3.  Jalankan Neovim. Plugin akan diunduh dan diinstal secara otomatis pada saat pertama kali dijalankan.
    ```bash
    nvim
    ```

Tunggu hingga semua proses instalasi plugin selesai. Anda mungkin perlu me-restart Neovim sekali lagi agar semua fitur berfungsi dengan baik.

---

## 🎨 Kustomisasi

Konfigurasi ini dirancang agar mudah diperluas. Anda dapat dengan mudah menambahkan atau mengubah pengaturan sesuai keinginan Anda di dalam direktori `lua/user/`.

- **Plugin**: Tambahkan plugin baru di `lua/user/plugins/`.
- **Pemetaan Tombol**: Definisikan _keymap_ kustom Anda di `lua/user/mappings.lua`.
- **Pengaturan Umum**: Ubah opsi editor di `lua/user/options.lua`.

Silakan jelajahi direktori `lua/user/` untuk melihat bagaimana konfigurasi ini disusun.

---

## 🙏 Ucapan Terima Kasih

Konfigurasi ini tidak akan ada tanpa kerja keras dari komunitas open-source yang luar biasa. Terima kasih banyak kepada:

- Tim **AstroNvim** atas fondasi yang fantastis.
- Para pengembang **Neovim** dan semua pembuat plugin yang hebat.
