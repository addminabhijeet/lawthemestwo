# Offline Setup Guide for Lawia Law Firm Website

## What's Been Downloaded

All necessary assets are now local and ready for offline use:

### ✅ JavaScript Files (in `HOME1_files/`)
- jquery-3.7.1.min.js
- bootstrap.bundle.min.js
- slick.min.js
- swiper-bundle.min.js
- wow.js
- jquery.counterup.min.js
- jquery.waypoints.min.js
- jquery.magnific-popup.min.js
- main.js

### ✅ CSS Files (in `HOME1_files/`)
- style.css (custom styles)
- bootstrap.min.css
- all.min.css (Font Awesome)
- fontawesome.min.css
- slick.css
- swiper-bundle.min.css
- magnific-popup.css
- animate.min.css

### ✅ Images & Fonts
All images (PNG, JPG, SVG) are stored in `HOME1_files/`
Font Awesome icons are embedded in the CSS files

---

## How to Run Offline on XAMPP

### Option 1: Using XAMPP (Recommended)

1. **Ensure XAMPP is running:**
   ```
   Open XAMPP Control Panel → Click "Start" for Apache
   ```

2. **Open in browser:**
   ```
   http://localhost/sampletwo/HOME1.html
   ```

### Option 2: Using Python (Simple HTTP Server)

If you have Python installed:

```bash
cd C:\xampp\htdocs\sampletwo
python -m http.server 8000
```

Then open: `http://localhost:8000/HOME1.html`

### Option 3: Using Node.js (if installed)

```bash
cd C:\xampp\htdocs\sampletwo
npx http-server
```

---

## Offline Features That Work

✅ Full page layout and styling  
✅ Navigation menus  
✅ Image galleries (Slick & Swiper sliders)  
✅ Animations (WOW.js)  
✅ Counter animations  
✅ Responsive design  
✅ Font Awesome icons  
✅ All interactive features

---

## What Requires Internet

⚠️ **External Navigation Links** - Links to other pages on vecurosoft.com will not work offline. These are placeholder links.

### How to Handle External Links

You can update links in HTML to point to local pages:

**Current (External):**
```html
<a href="https://html.vecurosoft.com/lawia/about.html">About</a>
```

**To make it work locally, create local pages:**
```html
<a href="./about.html">About</a>
```

---

## File Structure

```
sampletwo/
├── HOME1.html              (Main page)
├── HOME1_files/            (All assets folder)
│   ├── CSS files
│   ├── JavaScript files
│   ├── Images (PNG, JPG, SVG)
│   └── Fonts (embedded in CSS)
└── OFFLINE_SETUP.md        (This file)
```

---

## Troubleshooting

### Issue: Images not loading
- Make sure XAMPP Apache is running
- Or use Python/Node.js to serve files
- Check browser console (F12) for any 404 errors

### Issue: JavaScript not working
- Ensure all JS files are in `HOME1_files/` folder
- Check that script paths in HTML match the file names
- Verify JavaScript console for errors (F12)

### Issue: Styles not applying
- CSS files must be in `HOME1_files/` folder
- Make sure Bootstrap and Font Awesome CSS are present
- Check network tab in DevTools (F12)

---

## How to Sync / Update

If you need to update the website from the online version:

1. Visit: `https://html.vecurosoft.com/lawia/`
2. Right-click → "Save as..." → Save as Complete HTML
3. Replace the files in this directory
4. Verify all assets are locally available

---

## Notes

- All external navigation links point to the original website (vecurosoft.com)
- To make them work offline, you'll need to create corresponding local HTML files
- The website is fully functional for viewing/testing locally
- No database or backend services are required

**Last Updated:** September 2026
