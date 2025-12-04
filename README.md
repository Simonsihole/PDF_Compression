# PDF_Compression
A lightweight Ghostscript-based batch script for compressing PDF files on Windows. Supports bulk compression, auto-replacing original files, and customizable quality presets. Fast, simple, and efficient.
# 🔧 Ghostscript PDF Compressor  
Batch Script to Compress PDF Files Automatically (With Option to Replace Original Files)

This repository contains a simple and efficient Windows batch script for compressing PDF files using **Ghostscript** (`gswin64c.exe`).  
The script supports **bulk compression**, **auto-replace original files**, and ensures significantly smaller output sizes without noticeable quality loss.

---
## ✨ Features
- 📉 Compress multiple PDFs automatically  
- 🔄 Replace original PDF files with compressed versions  
- ⚡ Fast and lightweight (uses Ghostscript CLI)  
- 📁 Automatically creates backup (optional)  
- 🖥️ Works on any Windows machine with Ghostscript installed  
---

## 📦 Requirements
Before using the script, install:

### **1. Ghostscript**
Download the latest Ghostscript (64-bit Windows):
- [https://ghostscript.com/releases/gsdnld.html](https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/gs10031/gs10031w64.exe)

During installation, ensure:
✔ Add to PATH (optional, recommended)

## 📁 Project Files
This repository includes:
compress_pdf.bat

---
## 🚀 Usage

### **1. Place Your PDFs**
Copy your `.pdf` files into the same folder as `compress_pdf.bat`.

### **2. Run the Script**
Double-click:
Compress_PDF.bat
---

The script will:
- Read all `.pdf` files in the folder  
- Compress each file using Ghostscript  
- Create a temporary file named `compressed_filename.pdf` (optional) 
- Automatically overwrite the original file  

---

You can modify this line to adjust compression:
`-dPDFSETTINGS=/ebook`

Available options:
Setting	Quality	Description
/screen	Low	smallest file, lowest quality
/ebook	Medium	good balance (recommended)
/printer	High	better quality, larger file
/prepress	Very high	preserves most details
/default	Standard	baseline Ghostscript output

Example for maximum compression:
`-dPDFSETTINGS=/screen`

If you want to preserve original files:
Add this inside the loop:
`copy "%%f" "backup_%%f"`

if you want to use a GUI App you can just donwload the `pdfcompressor.exe`


