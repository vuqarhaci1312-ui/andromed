$dir = "c:\Users\hmc\Downloads\mediic-medical-hospital-and-clinic-html5-template-2025-03-02\medic-html"

# ===== ABOUT.HTML =====
$path = Join-Path $dir "about.html"
$c = [System.IO.File]::ReadAllText($path)
$c = $c.Replace('>About Us<', '>Haqqımızda<')
$c = $c.Replace('> mediic <', '> Andromed <')
$c = $c.Replace('>about us<', '>haqqımızda<')
$c = $c.Replace('>about<', '>haqqımızda<')
$c = $c.Replace('ABOUT COMPANY', 'ŞİRKƏT HAQQINDA')
$c = $c.Replace("Since 2007 We're working Medical group of more than 1200+", '2006-cı ildən etibarən fəaliyyət göstərən Andromed Tibb Mərkəzi')
$c = $c.Replace('Patients help from our medical', 'minlərlə pasiyentə xidmət göstərmişdir')
$c = $c.Replace("We're Putting your Comfort List", 'Üstünlüklərimiz')
$c = $c.Replace('More About', 'Ətraflı Məlumat')
$c = $c.Replace('Completely to', 'Müasir')
$c = $c.Replace('syndicate', 'avadanlıqlar')
$c = $c.Replace('24 Hrs', '2 filial')
$c = $c.Replace('Aumbulance Service', '(Bakıxanov, Mərdəkan)')
$c = $c.Replace('Medical Surgical', 'Peşəkar həkim')
$c = $c.Replace('Services', 'komandası')
$c = $c.Replace('Satisfaction Rate', 'Məmnuniyyət Dərəcəsi')
$c = $c.Replace('Instant Operations', 'Dəqiq')
$c = $c.Replace('System', 'diaqnostika')
$c = $c.Replace('Professional', 'İxtisaslı')
$c = $c.Replace('Doctors', 'Həkim')
[System.IO.File]::WriteAllText($path, $c, [System.Text.Encoding]::UTF8)
Write-Host "Updated about.html"

# ===== CONTACT.HTML =====
$path = Join-Path $dir "contact.html"
$c = [System.IO.File]::ReadAllText($path)
$c = $c.Replace('> mediic <', '> Andromed <')
$c = $c.Replace('>contact us<', '>əlaqə<')
$c = $c.Replace('>Contact us<', '>Əlaqə<')
$c = $c.Replace('Contact With Us', 'Bizimlə Əlaqə')
$c = $c.Replace('CONTACT US', 'ƏLAQƏ')
$c = $c.Replace('Get In Touch', 'Əlaqə Saxlayın')
$c = $c.Replace('Send Message', 'Mesaj Göndərin')
$c = $c.Replace('Your Name', 'Adınız')
$c = $c.Replace('Your Email', 'E-poçtunuz')
$c = $c.Replace('Subject', 'Mövzu')
$c = $c.Replace('Your Message', 'Mesajınız')
$c = $c.Replace('Address', 'Ünvan')
$c = $c.Replace('Contact Number', 'Əlaqə Nömrəsi')
$c = $c.Replace('Our Address', 'Ünvanımız')
$c = $c.Replace('SUBMIT', 'GÖNDƏR')
$c = $c.Replace('Submit', 'Göndər')
[System.IO.File]::WriteAllText($path, $c, [System.Text.Encoding]::UTF8)
Write-Host "Updated contact.html"

# ===== TEAM.HTML =====
$path = Join-Path $dir "team.html"
$c = [System.IO.File]::ReadAllText($path)
$c = $c.Replace('> mediic <', '> Andromed <')
$c = $c.Replace('>Our Team<', '>Həkimlərimiz<')
$c = $c.Replace('>our team<', '>həkimlərimiz<')
$c = $c.Replace('Gynoclogist', 'Ginekoloq')
$c = $c.Replace('Dentist', 'Stomatoloq')
$c = $c.Replace('psycologist', 'Psixoloq')
$c = $c.Replace('Cardiologist', 'Kardioloq')
$c = $c.Replace('Merina B. Banty', 'Dr.Fidan İmaməliyeva')
$c = $c.Replace('Mark X. Philip', 'Dr.Amil Səfərov')
$c = $c.Replace('John D. Alexon', 'Dr.Sevinc Aliyeva')
$c = $c.Replace('team.jpg', 'doctors/drfidanimameliyeva.png')
$c = $c.Replace('team2.jpg', 'doctors/dramilseferov.png')
$c = $c.Replace('team3.jpg', 'doctors/drsevinceliyeva.png')
[System.IO.File]::WriteAllText($path, $c, [System.Text.Encoding]::UTF8)
Write-Host "Updated team.html"

# ===== APPOINTMENT.HTML =====
$path = Join-Path $dir "appointment.html"
$c = [System.IO.File]::ReadAllText($path)
$c = $c.Replace('> mediic <', '> Andromed <')
$c = $c.Replace('>Appointment<', '>Randevu<')
$c = $c.Replace('>appointment<', '>randevu<')
$c = $c.Replace('MAKE APPOINMENT', 'RANDEVU AL')
$c = $c.Replace('Make Appoinment', 'Randevu Al')
$c = $c.Replace('ONLINE APPOINMENT', 'ONLAYN RANDEVU')
$c = $c.Replace('Make an Online Appoinemnt Booking For Treatment Patients', 'Onlayn randevu alaraq müalicənizi planlaşdırın')
$c = $c.Replace('Your Name', 'Adınız')
$c = $c.Replace('Your Email', 'E-poçtunuz')
$c = $c.Replace('Subject', 'Mövzu')
$c = $c.Replace('Your Message', 'Mesajınız')
$c = $c.Replace('SUBMIT', 'GÖNDƏR')
$c = $c.Replace('Submit', 'Göndər')
[System.IO.File]::WriteAllText($path, $c, [System.Text.Encoding]::UTF8)
Write-Host "Updated appointment.html"

# ===== TEAM-DETAILS.HTML =====
$path = Join-Path $dir "team-details.html"
$c = [System.IO.File]::ReadAllText($path)
$c = $c.Replace('> mediic <', '> Andromed <')
$c = $c.Replace('Gynoclogist', 'Ginekoloq')
$c = $c.Replace('Merina B. Banty', 'Dr.Mirzəli Cəfərquliyev')
$c = $c.Replace('team-details.jpg', 'doctors/drmirzeliceferquliyev.png')
[System.IO.File]::WriteAllText($path, $c, [System.Text.Encoding]::UTF8)
Write-Host "Updated team-details.html"

# ===== ALL remaining "mediic" breadcrumb references =====
$allFiles = Get-ChildItem $dir -Filter "*.html"
foreach ($file in $allFiles) {
    $c = [System.IO.File]::ReadAllText($file.FullName)
    if ($c.Contains('> mediic <')) {
        $c = $c.Replace('> mediic <', '> Andromed <')
        [System.IO.File]::WriteAllText($file.FullName, $c, [System.Text.Encoding]::UTF8)
        Write-Host "Fixed mediic breadcrumb in $($file.Name)"
    }
}

# ===== FAQ.HTML =====
$path = Join-Path $dir "faq.html"
if (Test-Path $path) {
    $c = [System.IO.File]::ReadAllText($path)
    $c = $c.Replace('>Faq<', '>Sual-Cavab<')
    $c = $c.Replace('>faq<', '>sual-cavab<')
    [System.IO.File]::WriteAllText($path, $c, [System.Text.Encoding]::UTF8)
    Write-Host "Updated faq.html"
}

# ===== 404.HTML =====
$path = Join-Path $dir "404.html"
if (Test-Path $path) {
    $c = [System.IO.File]::ReadAllText($path)
    $c = $c.Replace('Page Not Found', 'Səhifə Tapılmadı')
    $c = $c.Replace('Back to Home', 'Ana Səhifəyə Qayıt')
    [System.IO.File]::WriteAllText($path, $c, [System.Text.Encoding]::UTF8)
    Write-Host "Updated 404.html"
}

Write-Host "`nAll page-specific content updated!"
